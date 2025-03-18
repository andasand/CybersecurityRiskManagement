# Cybersecurity Risk Management

## Introduction
On a daily basis, many security officers will use SCC (Security Content Automation Protocol Compliance Checker) to test hardware, software, and networking components (https://www.niwcatlantic.navy.mil/Technology/SCAP/).   The input for SCC is STIG (Security Technical Implementation Guides) checklists (https://www.stigviewer.com/stigs), which are published by US DoD and other organizations.  The results of the test are in a csv, xml, or json file.  Applications like Stig Viewer 3 (https://public.cyber.mil/stigs/downloads/?_dl_facet_stigs=stig-viewer-3x) can be used to view the results.  

However, storing the results into a relational model enables for persisting the test results, and providing stakeholders an opportunity to explore deeper into the issues at hand.  Below is a data model with an ER diagram to capture the results from either csv, xml, or json objects into a third normal form (3NF) relational model.  

 
![multiple runs](https://github.com/user-attachments/assets/b9e00122-aa60-4b1e-bb09-9522a691e5ee)

- CHECKLISTS is the core table holding basic checklist metadata.
- CHECKLIST_RESULTS table to store results of each checklist.  CHECKLIST_RESULTS table is associated with both CHECKLISTS and STIG_VIEWER_RUNS to link results to their specific checklists and runs.
- TARGET_DATA stores target system information and is linked one-to-one with CHECKLISTS.
- STIGS holds details for each STIG associated with a checklist (one checklist can contain many STIGs).
- STIG_RULES stores individual rules for each STIG (each STIG can have multiple rules).

![stigviewer_checklist_results_runs drawio](https://github.com/user-attachments/assets/11bb127a-5865-4ac9-b497-b502008fd5eb)

Once the above data model is populated, a Tableau dashboard can be created as below to show vulnerabilities.

![risk report SkyView](https://github.com/user-attachments/assets/f0b08873-eeb9-4aad-9140-12622a262477)

The hope is to identify vulnerabilities, track them to a resolution, and be watchful.
