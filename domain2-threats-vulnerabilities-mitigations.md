# 💥 Domain 2 — Threats, Vulnerabilities, and Mitigations

> **Exam Weight:** ~22%  
> **Purpose:** Identify, classify, and mitigate threats, vulnerabilities, and attack surfaces that impact organizational security.

---

## 🔸 Exam Objective 2.1 — Compare and Contrast Common Threat Actors and Motivations

### 📖 Overview
Threat actors differ by **capability**, **resources**, and **intent**. Understanding these helps you apply the right defenses.

---

### 🧩 Threat Actor Categories

| **Actor Type** | **Motivation** | **Resources / Skill** | **Examples** |
|----------------|----------------|------------------------|---------------|
| **Nation-State / APT (Advanced Persistent Threat)** | Espionage, disruption | Highly funded, skilled teams | State-sponsored cyber units |
| **Cybercriminals** | Financial gain | Organized, use malware/ransomware | Ransomware groups, data theft |
| **Hacktivists** | Political / ideological goals | Moderate | Anonymous, LulzSec |
| **Insiders** | Revenge, negligence, financial | Access advantage | Disgruntled employees |
| **Script Kiddies** | Curiosity, notoriety | Low | Use pre-made exploit kits |
| **Competitors** | Market advantage | Variable | Corporate espionage |
| **Suppliers / Third-Parties** | Indirect compromise vector | Variable | Supply-chain attacks |

---

### ⚙️ Motivations Breakdown

| **Category** | **Examples** |
|---------------|--------------|
| **Financial** | Ransomware, fraud, data resale |
| **Ideological** | Hacktivism, political protest |
| **Revenge** | Insider threats |
| **Espionage** | Government or industrial spying |
| **Desire for Recognition** | Script kiddies / bragging rights |

---

### 🧠 Diagram — Threat Actor Hierarchy

    Nation-State
    │
    ├── APT Groups
    │ ├─ Cybercrime Syndicates
    │ └─ Hacktivists
    │
    ├── Insiders
    └── Opportunistic Actors (Script Kiddies)


**✅ Key Takeaways**
- Distinguish motivation (why) vs capability (how).  
- Recognize **APT = long-term, stealthy, persistent campaigns**.  
- Insider risk remains one of the most underestimated threats.

---

## 🔸 Exam Objective 2.2 — Explain Common Threat Vectors and Attack Surfaces

### 📖 Overview
A **threat vector** is the *path or method* used to exploit vulnerabilities.  
An **attack surface** is the *total exposure* across systems, users, and processes.

---

### 🧩 Common Attack Vectors

| **Vector Type** | **Description / Examples** |
|------------------|-----------------------------|
| **Network** | Open ports, misconfigurations, DDoS, MITM |
| **Email / Message-Based** | Phishing, spam, malicious attachments |
| **Web / Lure-Based** | Watering hole, drive-by downloads, fake updates |
| **Software / OS** | Unpatched vulnerabilities, buffer overflows |
| **Hardware / Peripheral** | Malicious USBs, firmware tampering |
| **Cloud / API** | Misconfigured S3 buckets, exposed tokens |
| **Supply Chain** | Compromised vendor software or firmware |
| **Human / Social Engineering** | Pretexting, tailgating, vishing |

---

### 🧠 Diagram — Attack Surface Overview

      +--------------------+
      |     Organization   |
      +--------------------+
          /     |      \
     Users   Networks   Apps
       |        |        |
    Phishing  Open      Unpatched
              Ports      Software

  
---

### ⚙️ Business Email Compromise (BEC)
- Impersonation of executives / vendors via email.
- Often uses social engineering + invoice fraud.
- Mitigation: SPF, DKIM, DMARC, user awareness.

---

**✅ Key Takeaways**
- Reduce attack surface via **hardening** & **least privilege**.  
- Continuously assess third-party exposure.  
- Combine technical + procedural defenses.

---

## 🔸 Exam Objective 2.3 — Explain Various Types of Vulnerabilities

### 📖 Overview
A **vulnerability** is a weakness that a threat can exploit.  
They exist across hardware, software, configuration, and human layers.

---

### 🧩 Common Vulnerability Types

| **Category** | **Examples** |
|---------------|--------------|
| **Operating System** | Privilege escalation, kernel exploits |
| **Application** | SQL injection, XSS, insecure deserialization |
| **Misconfigurations** | Default passwords, open ports, excessive permissions |
| **Cryptographic** | Weak algorithms, improper key management |
| **Zero-Day** | Unknown / unpatched flaws |
| **Cloud-Based** | Public storage exposure, IAM misconfiguration |
| **Supply Chain** | Malicious libraries, compromised updates |
| **Human Factors** | Poor password hygiene, social engineering |

---

### ⚙️ Specialized Vulnerabilities

| **Type** | **Explanation** |
|-----------|----------------|
| **Sideloading** | Loading apps from untrusted sources |
| **Rooting / Jailbreaking** | Bypassing OS restrictions → risk of privilege abuse |
| **Firmware / Embedded** | Hard-coded credentials, no patching mechanism |

---

### 🧠 Diagram — Vulnerability Lifecycle
    [Discovery] → [Disclosure] → [Patch Release] → [Exploitation] → [Mitigation]
    ^ |
    |------------------ Zero-Day Window ----------------|


**✅ Key Takeaways**
- Prioritize vulnerabilities based on **CVSS scores + asset value**.  
- Mitigate via **patching**, **hardening**, and **network segmentation**.  
- Track supply-chain dependencies (e.g., SBOMs).

---

## 🔸 Exam Objective 2.4 — Given a Scenario, Analyze Indicators of Malicious Activity

### 📖 Overview
Recognizing indicators early reduces dwell time and impact.

---

### 🧩 Key Concepts

| **Term** | **Definition** |
|-----------|----------------|
| **TTPs** | Tactics, Techniques, Procedures — behavioral patterns of threat actors |
| **IoCs** | Indicators of Compromise — observable evidence (hashes, IPs, filenames) |

---

### ⚙️ Common Indicators of Malicious Activity

| **Category** | **Examples** |
|---------------|--------------|
| **Physical** | Forced entry, tampered locks, missing devices |
| **Network** | Unusual traffic, beaconing, unknown external connections |
| **Wireless** | Rogue APs, Evil Twin attacks |
| **Credential** | Multiple failed logins, credential stuffing, replay attacks |
| **Malicious Code** | Unexpected processes, persistence scripts, new binaries |
| **User Behavior** | Accessing abnormal data volumes, off-hours activity |

---

### 🧠 Diagram — Incident Detection Flow
    [Data Collection]
    ↓
    [Correlation via SIEM]
    ↓
    [Alert Generation]
    ↓
    [Triage & Analysis]
    ↓
    [Containment / Response]


---

### ⚙️ Physical & Network Attack Examples

| **Attack Type** | **Description** | **Mitigation** |
|------------------|-----------------|----------------|
| **Dumpster Diving** | Searching discarded data | Shred sensitive documents |
| **Tailgating** | Following into secure area | Security guards, mantraps |
| **ARP Spoofing / MITM** | Redirect network traffic | Static ARP, encryption |
| **Credential Replay** | Reusing captured hashes | MFA, salted hashes |
| **Wireless Evil Twin** | Fake AP | Verify SSIDs, use VPNs |

---

**✅ Key Takeaways**
- Correlate events using SIEM to identify IoCs.  
- Investigate abnormal patterns — don’t ignore low-severity alerts.  
- Maintain baseline network behavior for anomaly detection.

---

## 🧭 Domain 2 Summary Checklist

- [x] Identify **threat actor types** & motivations  
- [x] Understand **attack vectors** & **attack surface minimization**  
- [x] Recognize **vulnerability categories** & lifecycle  
- [x] Know how to analyze **IoCs / TTPs**  
- [x] Associate **specific mitigations** to each scenario  

---

> **Next Up:** [Domain 3 — Security Architecture](domain3-security-architecture.md)
