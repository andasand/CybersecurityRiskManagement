# ⚙️ Domain 4 — Security Operations

> **Exam Weight:** ~28%  
> **Purpose:** Apply operational security controls, monitoring, identity management, vulnerability assessment, and incident response within enterprise environments.

---

## 🔸 Exam Objective 4.1 — Apply Common Security Techniques to Computing Resources

### 📖 Overview
Focus on system hardening, endpoint security, and wireless protection.

---

### 🧩 Benchmarks & Secure Configuration Guides
- Follow **CIS Benchmarks**, **NIST 800-53**, or **DISA STIGs**.
- Apply least functionality: disable unused services, ports, protocols.

---

### ⚙️ Endpoint Hardening Techniques

| **Category** | **Example Controls** |
|---------------|----------------------|
| **System** | Disable autorun, limit admin rights |
| **Network** | Enable firewalls, disable unused interfaces |
| **Application** | Remove bloatware, restrict macros |
| **Logging** | Enable audit policies, centralize logs |
| **Physical** | Port locks, screen locks, cable locks |

---

### 🔐 Wireless Security

| **Protocol** | **Encryption Type** | **Notes** |
|---------------|---------------------|------------|
| **WEP** | RC4 (deprecated) | Vulnerable — avoid use |
| **WPA2** | AES-CCMP | Strong, widely used |
| **WPA3** | SAE (Simultaneous Authentication of Equals) | Best practice for new deployments |

Authentication methods: **EAP-TLS, PEAP, MSCHAPv2**  
Network isolation: **Guest VLANs, captive portals**

---

### 🧠 Diagram — Endpoint Security Layers
    [User]
    │
    [Device Hardening]
    │
    [Network Controls]
    │
    [Monitoring + EDR]


**✅ Key Takeaways**
- Always use vendor hardening guides.  
- Apply full-disk encryption + BIOS passwords.  
- Keep firmware and OS patched.

---

## 🔸 Exam Objective 4.2 — Explain Security Implications of Proper Hardware, Software, and Data Asset Management

### 📖 Overview
Lifecycle management ensures security from acquisition → disposal.

---

### 🧩 Secure Data Destruction Methods

| **Method** | **Use Case** | **Notes** |
|-------------|--------------|-----------|
| **Clearing** | Reuse within same org | Overwrite data |
| **Purging** | Release to untrusted environment | Degauss or crypto erase |
| **Destruction** | Permanent removal | Shred, incinerate, melt |

**Asset tagging**, **inventory tracking**, and **chain of custody** prevent loss/theft.

---

### 🧠 Diagram — Asset Lifecycle
    [Procurement] → [Use] → [Maintenance] → [Disposal]
    Apply Controls & Tracking at Each Phase

  
---

## 🔸 Exam Objective 4.3 — Explain Activities Associated with Vulnerability Management

### 📖 Overview
Vulnerability management = identify → evaluate → remediate → verify.

---

### 🧩 Process Flow

| **Step** | **Description** |
|-----------|----------------|
| **Identify** | Scan systems using Nessus, Qualys, OpenVAS |
| **Analyze** | Validate false positives |
| **Prioritize** | Use CVSS + business impact |
| **Remediate** | Patch, mitigate, isolate |
| **Verify** | Re-scan & document closure |

---

### ⚙️ Threat Feeds & Assessment

| **Source** | **Purpose** |
|-------------|-------------|
| **CVE / NVD** | Official vulnerability databases |
| **Vendor Advisories** | OS or app-specific |
| **ISACs** | Industry-specific intelligence |
| **Dark Web Sources** | Early indicators of exploits |

---

### 🧠 Diagram — Vulnerability Management Cycle
    [Discovery] → [Assessment] → [Remediation] → [Verification]
    ↺ (Continuous Improvement)


**✅ Key Takeaways**
- Track vulnerabilities over time.  
- Use patch management automation tools.  
- Document risk acceptance where remediation isn’t possible.

---

## 🔸 Exam Objective 4.4 — Explain Security Alerting and Monitoring Concepts and Tools

### 📖 Overview
Security monitoring detects, correlates, and alerts on suspicious activity.

---

### 🧩 SIEM Components

| **Component** | **Function** |
|----------------|--------------|
| **Collector / Agent** | Gathers logs |
| **Correlation Engine** | Identifies patterns & anomalies |
| **Dashboard** | Displays alerts |
| **Retention** | Stores logs for compliance |

---

### ⚙️ Alert Tuning & Monitoring Activities
- Avoid “alert fatigue” — tune thresholds.
- Use **baselining** and **behavioral analytics**.
- Integrate **NDR, EDR, XDR** solutions for full coverage.

---

### 🧠 Diagram — SIEM Flow
    [Host Logs] + [Network Data] → [SIEM] → [Correlation Rules] → [Alerts + Dashboards]


**✅ Key Takeaways**
- Centralize visibility with SIEM.
- Continuously refine correlation rules.
- Link alerts to incident response playbooks.

---

## 🔸 Exam Objective 4.5 — Modify Enterprise Capabilities to Enhance Security

### 📖 Overview
Use enterprise-wide tools for layered defense.

---

### 🧩 Common Capabilities

| **Tool** | **Purpose** |
|-----------|-------------|
| **Web Filtering** | Block malicious URLs, C2 communication |
| **Email Security** | Spam filtering, attachment sandboxing |
| **DNS Filtering** | Prevent resolution of known bad domains |

**Integrate with:** EDR, DLP, CASB, and proxy solutions.

---

### 🧠 Diagram — Layered Filtering
    [User] → [DNS Filter] → [Email Filter] → [Web Proxy] → [Firewall]


---

## 🔸 Exam Objective 4.6 — Implement and Maintain Identity and Access Management (IAM)

### 📖 Overview
IAM ensures only authorized users/devices can access resources.

---

### 🧩 Authentication Types

| **Method** | **Description** |
|-------------|----------------|
| **Password** | Traditional single factor |
| **MFA** | Combines 2+ factors |
| **Biometrics** | Fingerprint, facial recognition |
| **Tokens** | Hardware or software-based |
| **Passwordless** | Device or biometric trust |
| **SSO / Federation** | Single login across systems (SAML, OAuth) |

---

### ⚙️ Access Control Models

| **Model** | **Principle** | **Example** |
|------------|---------------|--------------|
| **DAC** | Data owner decides access | File permissions |
| **MAC** | Based on classification labels | Government systems |
| **RBAC** | Roles define access | Job function-based |
| **ABAC** | Contextual attributes | Time, device type, location |
| **Rule-Based** | Firewall or ACL logic | Port access |

---

### 🧠 Diagram — IAM Overview
    [User] → [Authentication] → [Authorization Engine] → [Access Granted]
    (MFA + Policies)


**✅ Key Takeaways**
- Use **least privilege** & **PAM (Privileged Access Management)**.  
- Use **SSO/Federation** for SaaS integration.  
- Audit IAM logs regularly.

---

## 🔸 Exam Objective 4.7 — Explain Automation and Orchestration in Secure Operations

### 📖 Overview
Automation improves consistency, speed, and response accuracy.

---

### 🧩 Key Concepts

| **Term** | **Definition** |
|-----------|----------------|
| **SOAR** | Security Orchestration, Automation, Response |
| **Playbooks** | Defined response workflows |
| **Scripting** | Automate repetitive admin tasks (Python, PowerShell) |
| **IaC** | Infrastructure as Code (Terraform, Ansible) |
| **Orchestration** | Combining multiple automated steps into one process |

---

### 🧠 Diagram — SOAR Workflow
    [Alert] → [Playbook Trigger] → [Script Action] → [Notify Analyst / Close Ticket]


---

## 🔸 Exam Objective 4.8 — Explain Appropriate Incident Response Activities

### 📖 Overview
Incident response ensures quick containment, eradication, and recovery.

---

### 🧩 Incident Response Phases

| **Phase** | **Activity** |
|------------|--------------|
| **Preparation** | Define policies, tools, and roles |
| **Detection & Analysis** | Identify and classify incident |
| **Containment** | Isolate affected systems |
| **Eradication & Recovery** | Remove threats and restore systems |
| **Lessons Learned** | Document improvements |

---

### ⚙️ Threat Hunting
- Proactive search for unknown threats using **TTPs** and **IoCs**.
- Uses behavioral analytics and baselines.

---

### 🧠 Diagram — Incident Response Lifecycle
    [Prepare] → [Detect/Analyze] → [Contain] → [Eradicate/Recover] → [Lessons Learned]
    ↑-----------------------------------------------↓
    Continuous Improvement Loop


**✅ Key Takeaways**
- Define communication plans & evidence handling procedures.  
- Test IR playbooks regularly.  
- Conduct post-mortems and share lessons with teams.

---

## 🔸 Exam Objective 4.9 — Use Data Sources to Support an Investigation

### 📖 Overview
Different data types provide visibility into system and user activity.

---

### 🧩 Common Data Sources

| **Source** | **Purpose** |
|-------------|-------------|
| **Log Files** | System events and authentication |
| **NetFlow / PCAP** | Network traffic analysis |
| **Endpoint Logs** | EDR telemetry |
| **Application Logs** | Error or transaction details |
| **Metadata** | File creation, hash, timestamps |
| **Dashboards / Reports** | Aggregate visualization for SOCs |

---

### 🧠 Diagram — Data Correlation Example
    [Endpoint Logs] + [Network Traffic] + [Auth Events]
    ↓
    [SIEM Correlation]
    ↓
    [Incident Alert + Ticket]


**✅ Key Takeaways**
- Use multiple correlated sources for context.  
- Retain logs per compliance requirements (e.g., PCI-DSS, HIPAA).  
- Automate alert generation where possible.

---

## 🧭 Domain 4 Summary Checklist

- [x] Apply hardening across endpoints and networks  
- [x] Manage hardware & software securely throughout lifecycle  
- [x] Perform vulnerability scanning & remediation  
- [x] Configure SIEM alerting & monitoring  
- [x] Implement IAM with MFA and SSO  
- [x] Use automation & SOAR to streamline ops  
- [x] Practice full incident response process  
- [x] Correlate data sources for investigations  

---

> **Next Up:** [Domain 5 — Security Program Management and Oversight](domain5-security-program-management.md)
