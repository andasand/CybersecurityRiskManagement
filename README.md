# Cybersecurity Risk Management

### On a daily basis, many security officers will use SCC (Security Content Automation Protocol Compliance Checker) to test hardware, software, and networking components (https://www.niwcatlantic.navy.mil/Technology/SCAP/).   
 The input for SCC is STIG (Security Technical Implementation Guides) checklists, which are published by US DoD and other organizations.  The output of the test is a csv, xml, or json file.  Below is a data model to capture the results from either the csv, xml, or json objects into a first normal form (1NF) relational model.  

- CHECKLISTS is the core table holding basic checklist metadata.
- CHECKLIST_RESULTS table to store results of each checklist.  CHECKLIST_RESULTS table is associated with both CHECKLISTS and STIG_VIEWER_RUNS to link results to their specific checklists and runs.
- TARGET_DATA stores target system information and is linked one-to-one with CHECKLISTS.
- STIGS holds details for each STIG associated with a checklist (one checklist can contain many STIGs).
- STIG_RULES stores individual rules for each STIG (each STIG can have multiple rules).
  
![multiple runs](https://github.com/user-attachments/assets/b9e00122-aa60-4b1e-bb09-9522a691e5ee)

![stigviewer_checklist_results_runs drawio](https://github.com/user-attachments/assets/11bb127a-5865-4ac9-b497-b502008fd5eb)

Once the above data model is populated, a Tableau dashboard can be created as below to show vulnerabilities.

![risk report SkyView](https://github.com/user-attachments/assets/f0b08873-eeb9-4aad-9140-12622a262477)

