# 🧭 Domain 5 — Security Program Management and Oversight

> **Exam Weight:** ~20%  
> **Purpose:** Develop, manage, and measure organizational security programs — including governance, risk management, vendor oversight, compliance, auditing, and awareness training.

---

## 🔸 Exam Objective 5.1 — Summarize Elements of Effective Security Governance

### 📖 Overview
Governance defines **who is accountable**, **how policies are enforced**, and **how compliance is measured**.

---

### 🧩 Key Components

| **Element** | **Purpose** | **Example** |
|--------------|-------------|-------------|
| **Policies** | High-level direction statements | “All users must use MFA.” |
| **Standards** | Mandatory rules to support policies | NIST password length, encryption level |
| **Procedures** | Step-by-step implementation | Onboarding process for new employees |
| **Guidelines** | Recommended best practices | Optional hardening templates |

---

### ⚙️ Legal and Governance Frameworks

| **Framework / Law** | **Focus Area** |
|----------------------|----------------|
| **GDPR** | EU personal data protection |
| **HIPAA** | Healthcare data privacy (U.S.) |
| **SOX** | Financial integrity and reporting |
| **PCI DSS** | Payment card data security |
| **NIST / ISO 27001** | Security management frameworks |

---

### 🧠 Diagram — Governance Hierarchy
    [Policy]
    ↓
    [Standards]
    ↓
    [Procedures]
    ↓
    [Guidelines]


**✅ Key Takeaways**
- Governance = *direction + control*.  
- Align security goals with **business objectives**.  
- Document everything — policies, ownership, and accountability.

---

## 🔸 Exam Objective 5.2 — Explain Elements of the Risk Management Process

### 📖 Overview
Risk management balances threats, vulnerabilities, and impact to make informed decisions.

---

### 🧩 Key Concepts

| **Term** | **Definition** |
|-----------|----------------|
| **Risk** | Potential for loss or damage |
| **Threat** | Event or actor that can exploit a vulnerability |
| **Vulnerability** | Weakness in system or process |
| **Impact** | Magnitude of loss if exploited |
| **Likelihood** | Probability of occurrence |

---

### ⚙️ Risk Management Steps

1. **Identify** assets, threats, and vulnerabilities.  
2. **Assess** risk level using likelihood × impact.  
3. **Prioritize** based on business criticality.  
4. **Respond** via mitigation, transfer, avoidance, or acceptance.  
5. **Monitor** and continuously review.

---

### 🧩 Risk Management Strategies

| **Strategy** | **Action** | **Example** |
|---------------|------------|--------------|
| **Mitigate** | Implement controls | Patch systems |
| **Transfer** | Share risk with others | Buy cyber insurance |
| **Avoid** | Eliminate risk source | Decommission system |
| **Accept** | Acknowledge residual risk | Low-impact risk left open |

---

### 🧩 Business Impact Analysis (BIA)

| **Term** | **Definition** |
|-----------|----------------|
| **RTO (Recovery Time Objective)** | Maximum downtime tolerated |
| **RPO (Recovery Point Objective)** | Max acceptable data loss |
| **MTBF / MTTR** | Metrics for reliability and recovery time |

---

### 🧠 Diagram — Risk Management Cycle
    [Identify] → [Assess] → [Mitigate/Transfer/Avoid/Accept] → [Monitor]
    ↖------------------ Review ----------------↙


**✅ Key Takeaways**
- Regularly update risk register.  
- Assign risk ownership.  
- Quantify risk using both **qualitative** and **quantitative** methods.

---

## 🔸 Exam Objective 5.3 — Explain Third-Party Risk Assessment and Management

### 📖 Overview
Vendors and partners can introduce vulnerabilities — manage their access and compliance.

---

### 🧩 Vendor Management Concepts

| **Process** | **Description** |
|--------------|----------------|
| **Selection** | Evaluate vendors’ security posture |
| **Assessment** | Security questionnaires, audits |
| **Monitoring** | Continuous validation of compliance |
| **Termination** | Revoke access when contract ends |

---

### ⚙️ Legal Agreements

| **Agreement** | **Purpose** |
|----------------|-------------|
| **SLA (Service Level Agreement)** | Defines uptime, response times |
| **NDA (Non-Disclosure Agreement)** | Protects confidentiality |
| **MOU (Memorandum of Understanding)** | Establishes cooperation |
| **BPA (Business Partnership Agreement)** | Defines shared responsibilities |

---

### 🧠 Diagram — Third-Party Management Lifecycle
    [Select Vendor] → [Assess Risk] → [Contract/SLA] → [Monitor Compliance] → [Offboard Vendor]


**✅ Key Takeaways**
- Include security clauses in contracts.  
- Require breach notification and audit rights.  
- Continuously monitor for **supply chain attacks**.

---

## 🔸 Exam Objective 5.4 — Summarize Elements of Effective Security Compliance

### 📖 Overview
Compliance ensures that an organization meets legal, regulatory, and internal requirements.

---

### 🧩 Compliance Program Elements

| **Component** | **Purpose** |
|----------------|-------------|
| **Monitoring** | Detect deviations from standards |
| **Reporting** | Communicate findings to management |
| **Auditing** | Verify compliance objectively |
| **Training** | Educate staff on rules and regulations |

---

### ⚙️ Common Compliance Standards

| **Standard** | **Focus** |
|---------------|-----------|
| **ISO/IEC 27001** | ISMS framework |
| **SOC 2 Type II** | Service provider controls |
| **FedRAMP** | U.S. government cloud systems |
| **FISMA** | Federal agency security controls |

---

### 🧠 Diagram — Compliance Loop
    [Policy] → [Implement Controls] → [Monitor] → [Audit] → [Improve]


**✅ Key Takeaways**
- Compliance ≠ security — you can be compliant but insecure.  
- Maintain continuous monitoring to detect drift.  
- Store audit evidence securely.

---

## 🔸 Exam Objective 5.5 — Explain Types and Purposes of Audits and Assessments

### 📖 Overview
Audits validate compliance and effectiveness; assessments test control maturity and resilience.

---

### 🧩 Audit & Assessment Types

| **Type** | **Purpose** | **Example** |
|-----------|-------------|--------------|
| **Internal Audit** | Performed by organization | Internal control check |
| **External Audit** | Conducted by third party | SOC 2 Type II review |
| **Penetration Test** | Simulated attack | Red team engagement |
| **Vulnerability Assessment** | Identify weaknesses | Nessus scan |
| **Compliance Audit** | Check regulatory alignment | PCI DSS evaluation |
| **Tabletop Exercise** | Simulated response discussion | IR team drill |

---

### 🧠 Diagram — Audit vs Assessment
    Audit: Verify Compliance ←──→ Assessment: Measure Security Posture


**✅ Key Takeaways**
- Combine audits and assessments for full visibility.  
- Record corrective actions and retest controls.  
- Differentiate **attestation** (external validation) from **self-assessment**.

---

## 🔸 Exam Objective 5.6 — Implement Security Awareness Practices

### 📖 Overview
Users are the first line of defense. Continuous training fosters a security-aware culture.

---

### 🧩 Awareness Program Components

| **Component** | **Purpose** |
|----------------|-------------|
| **Policies** | Define acceptable behavior |
| **Training** | Deliver knowledge and examples |
| **Testing** | Measure retention and behavior change |
| **Feedback Loop** | Improve future sessions |

---

### ⚙️ Training Topics & Techniques
- Phishing and social engineering awareness  
- Password hygiene & MFA usage  
- Data handling and classification  
- Device and remote work security  
- Insider threat awareness  
- Reporting suspicious activity

---

### 🧠 Diagram — Security Awareness Lifecycle
    [Plan] → [Train] → [Test] → [Measure] → [Refine]


**✅ Key Takeaways**
- Tailor training to roles (technical vs non-technical).  
- Reinforce continuously — quarterly or bi-annually.  
- Gamify and reward positive behavior to build engagement.

---

## 🧭 Domain 5 Summary Checklist

- [x] Understand governance hierarchy (policies → procedures → guidelines)  
- [x] Know frameworks (ISO 27001, NIST, PCI, HIPAA)  
- [x] Explain risk management steps & strategies  
- [x] Evaluate vendors and manage third-party risk  
- [x] Monitor compliance and conduct audits  
- [x] Run awareness programs and measure effectiveness  

---

### 🖼 Diagram Placeholders (for assets/diagrams)
- `/assets/diagrams/domain5-governance-hierarchy.png`
- `/assets/diagrams/domain5-risk-cycle.png`
- `/assets/diagrams/domain5-thirdparty-lifecycle.png`
- `/assets/diagrams/domain5-compliance-loop.png`
- `/assets/diagrams/domain5-audit-vs-assessment.png`
- `/assets/diagrams/domain5-awareness-lifecycle.png`

---

> 🏁 **Congratulations!**  
> You’ve now completed all five Security+ domains.  
> Next step: review checklists, practice PBQs, and schedule mock exams to test readiness.

