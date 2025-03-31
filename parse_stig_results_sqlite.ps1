# CONFIGURATION
$inputFolder = "C:\Path\To\XMLandJSON"
$dbPath = "C:\Path\To\ParsedData\STIG_ScanResults.db"

# Load SQLite Assembly
Add-Type -Path "C:\Path\To\System.Data.SQLite.dll"

# Connect to SQLite
$connectionString = "Data Source=$dbPath;Version=3;"
$sqliteConn = New-Object System.Data.SQLite.SQLiteConnection($connectionString)
$sqliteConn.Open()

# Create Tables
$cmd = $sqliteConn.CreateCommand()
$cmd.CommandText = @"
CREATE TABLE IF NOT EXISTS Scans (
    ScanId TEXT PRIMARY KEY,
    File TEXT,
    ScanDate TEXT,
    Type TEXT
);

CREATE TABLE IF NOT EXISTS Rules (
    RuleId TEXT PRIMARY KEY,
    Title TEXT
);

CREATE TABLE IF NOT EXISTS Results (
    ScanId TEXT,
    RuleId TEXT,
    Result TEXT,
    FOREIGN KEY(ScanId) REFERENCES Scans(ScanId),
    FOREIGN KEY(RuleId) REFERENCES Rules(RuleId)
);
"@
$cmd.ExecuteNonQuery()

# Helper Functions
function Insert-Scan {
    param($conn, $scanId, $file, $date, $type)
    $cmd = $conn.CreateCommand()
    $cmd.CommandText = "INSERT INTO Scans (ScanId, File, ScanDate, Type) VALUES (@id, @file, @date, @type)"
    $cmd.Parameters.AddWithValue("@id", $scanId)
    $cmd.Parameters.AddWithValue("@file", $file)
    $cmd.Parameters.AddWithValue("@date", $date)
    $cmd.Parameters.AddWithValue("@type", $type)
    $cmd.ExecuteNonQuery()
}

function Insert-Rule {
    param($conn, $ruleId, $title)
    $cmd = $conn.CreateCommand()
    $cmd.CommandText = "INSERT OR IGNORE INTO Rules (RuleId, Title) VALUES (@id, @title)"
    $cmd.Parameters.AddWithValue("@id", $ruleId)
    $cmd.Parameters.AddWithValue("@title", $title)
    $cmd.ExecuteNonQuery()
}

function Insert-Result {
    param($conn, $scanId, $ruleId, $result)
    $cmd = $conn.CreateCommand()
    $cmd.CommandText = "INSERT INTO Results (ScanId, RuleId, Result) VALUES (@scanId, @ruleId, @result)"
    $cmd.Parameters.AddWithValue("@scanId", $scanId)
    $cmd.Parameters.AddWithValue("@ruleId", $ruleId)
    $cmd.Parameters.AddWithValue("@result", $result)
    $cmd.ExecuteNonQuery()
}

function Load-XmlFile($path) {
    return [xml](Get-Content $path -Raw)
}

function Load-JsonFile($path) {
    return Get-Content $path -Raw | ConvertFrom-Json
}

# MAIN LOOP
Get-ChildItem -Path $inputFolder -File | ForEach-Object {
    $file = $_.FullName
    $ext = $_.Extension.ToLower()
    $scanId = [guid]::NewGuid().ToString()
    $scanDate = Get-Date -Format 'yyyy-MM-ddTHH:mm:ss'
    $type = ""

    if ($ext -eq ".xml") {
        $xml = Load-XmlFile $file
        if ($xml.Benchmark) {
            $type = "XCCDF"
            Insert-Scan $sqliteConn $scanId $_.Name $scanDate $type
            foreach ($rule in $xml.Benchmark.TestResult.rule) {
                $ruleId = $rule.idref
                $title = $rule.title.'#text'
                $result = $rule.result
                Insert-Rule $sqliteConn $ruleId $title
                Insert-Result $sqliteConn $scanId $ruleId $result
            }
        }
        elseif ($xml.oval_results) {
            $type = "OVAL"
            Insert-Scan $sqliteConn $scanId $_.Name $scanDate $type
            foreach ($def in $xml.oval_results.results.system.definition) {
                $ruleId = $def.definition_id
                $title = $def.title.'#text'
                $result = $def.result
                Insert-Rule $sqliteConn $ruleId $title
                Insert-Result $sqliteConn $scanId $ruleId $result
            }
        }
    }
  elseif ($ext -eq ".json") {
    $json = Load-JsonFile $file

    if ($json.Benchmark) {
        $type = "XCCDF"
        Insert-Scan $sqliteConn $scanId $_.Name $scanDate $type
        foreach ($rule in $json.Benchmark.TestResult.rule) {
            $ruleId = $rule.idref
            $title = $rule.title.'#text'
            $result = $rule.result
            Insert-Rule $sqliteConn $ruleId $title
            Insert-Result $sqliteConn $scanId $ruleId $result
        }
    }
    elseif ($json.oval_results) {
        $type = "OVAL"
        Insert-Scan $sqliteConn $scanId $_.Name $scanDate $type
        foreach ($def in $json.oval_results.results.system.definition) {
            $ruleId = $def.definition_id
            $title = $def.title.'#text'
            $result = $def.result
            Insert-Rule $sqliteConn $ruleId $title
            Insert-Result $sqliteConn $scanId $ruleId $result
        }
    }
}
  

$sqliteConn.Close()
Write-Host "Parsing complete. SQLite DB created at $dbPath"
