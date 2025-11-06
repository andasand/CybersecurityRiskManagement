# 🧱 Domain 1 — General Security Concepts

> **Exam Weight:** ~12%  
> **Purpose:** Establish the foundational principles of cybersecurity — control types, core security concepts, change management, and cryptographic solutions.

---

## 🔸 Exam Objective 1.1 — Compare and Contrast Various Types of Security Controls

### 📖 Overview
Security controls are safeguards that reduce risk by protecting **Confidentiality**, **Integrity**, and **Availability** (CIA).

---

### 🧩 Control Categories

| **Category** | **Description** | **Examples** |
|---------------|----------------|---------------|
| **Administrative** | Policy-driven or managerial actions | Security policies, user training, onboarding procedures |
| **Technical (Logical)** | Implemented via technology | Firewalls, encryption, authentication systems |
| **Physical** | Tangible barriers | Locks, guards, fences, CCTV |

---

### ⚙️ Functional Types

| **Function** | **Purpose** | **Examples** |
|---------------|-------------|---------------|
| **Preventive** | Stop incidents before they occur | Firewalls, ACLs, security awareness programs |
| **Detective** | Identify or record incidents | IDS/IPS, audit logs, motion sensors |
| **Corrective** | Restore after incident | Backups, patching, reimaging |
| **Deterrent** | Dissuade attackers | Warning signs, legal banners |
| **Compensating** | Substitute control when primary unavailable | Manual review, offline backup |

---

### 🧠 Diagram — Security Control Classification
       +------------------+
       | Security Controls|
       +------------------+
         /        |       \
       +------------------+
    | Admin      Tech    Physical |
       +------------------+
         /        |       \
       +------------------+
    | Policies     Firewall    CCTV |
       +------------------+

       
**✅ Key Takeaways**
- Understand both **type (category)** and **function** of each control.  
- Layer controls for **defense in depth**.  
- A single control may serve multiple functions.

---

## 🔸 Exam Objective 1.2 — Summarize Fundamental Security Concepts

### 📖 Overview
Core building blocks of all cybersecurity policies and designs.

---

### 🧩 Core Security Concepts

| **Concept** | **Definition** | **Example** |
|--------------|----------------|--------------|
| **CIA Triad** | Confidentiality ↔ Integrity ↔ Availability | Encryption / Hashing / Redundancy |
| **AAA** | Authentication, Authorization, Accounting | IAM logs |
| **Least Privilege** | Grant minimum rights needed | RBAC |
| **Defense in Depth** | Layered protection | Network + Endpoint + User Training |
| **Separation of Duties** | Divide responsibilities | Developer ≠ Approver |
| **Need-to-Know** | Restrict info access | Classified systems |

---

### ⚙️ Gap Analysis
1. Assess current controls.  
2. Identify gaps vs standards/policies.  
3. Recommend → Implement → Re-assess.

---

### 🔐 De-perimeterization & Zero Trust

Old “castle-and-moat” models are obsolete.  
**Zero Trust Principles:**
- Verify explicitly (identity, device, context).  
- Enforce least privilege.  
- Assume breach → continuous monitoring.

#### 🧠 Diagram — Zero Trust Model

    [User] ─▶ [AuthN + MFA]
    │
    +------------+
    | PolicyEngine|
    +------------+
    │
    [Resource Access]
    (Verify identity & device each request)


---

### 🎭 Deception Technologies
- **Honeypots/Honeynets:** decoy systems to attract and analyze attackers.  
- Collect TTPs (tactics, techniques, procedures).  
- Support threat intelligence & early detection.

---

### 🚨 Alarm Systems & Sensors
- Motion, IR, magnetic switch sensors integrate with cyber monitoring.  
- Feed telemetry into **SIEM/SOC** for correlation.

---

## 🔸 Exam Objective 1.3 — Explain Importance of Change Management Processes and Impact to Security

### 📖 Overview
Uncontrolled change = risk.  
Structured **change management** prevents configuration drift and outages.

---

### 🧩 Core Process Flow

1. **Request for Change (RFC)**  
2. **Review & Approval** – Change Advisory Board (CAB)  
3. **Testing / Staging**  
4. **Scheduling & Communication**  
5. **Implementation**  
6. **Documentation & Version Control**  
7. **Post-Change Review**

---

### ⚙️ Change Categories

| **Type** | **Example** |
|-----------|--------------|
| **Standard** | Routine patch deployment |
| **Emergency** | Zero-day fix |
| **Major** | OS upgrade / migration |

---

### 🧠 Diagram — Change Management Lifecycle

    [Request] → [Review/Approve] → [Test/Implement]
    ↖-------------[Document & Review]↙


**✅ Key Takeaways**
- Prevent **shadow IT** and unauthorized changes.  
- Maintain **rollback plans**.  
- Use CMDBs/version-control systems (e.g., Git).

---

## 🔸 Exam Objective 1.4 — Explain Importance of Using Appropriate Cryptographic Solutions

### 📖 Overview
Cryptography protects **data at rest**, **in transit**, and **in use** — ensuring confidentiality, integrity, and authenticity.

---

### 🧩 Cryptographic Techniques

| **Type** | **Purpose** | **Examples** |
|-----------|--------------|---------------|
| **Symmetric** | Fast bulk encryption | AES, 3DES |
| **Asymmetric** | Key exchange / signing | RSA, ECC |
| **Hashing** | Verify data integrity | SHA-256 |
| **Digital Certificates** | Prove identity | X.509 / PKI |
| **Transport Encryption** | Secure data in transit | TLS / VPN |
| **Full-Disk Encryption** | Protect data at rest | BitLocker / FileVault |

---

### 🧩 Cryptoprocessors & Secure Enclaves

| **Component** | **Purpose** | **Example** |
|----------------|-------------|--------------|
| **TPM** | Hardware key storage & secure boot | Laptop mainboard |
| **HSM** | Enterprise key management | Data center appliances |
| **Secure Enclave** | Isolated CPU zone for keys | Apple Secure Enclave, Intel SGX |

---

### 🧠 Diagram — Cryptographic Use Cases

    +-----------+ +-----------+ +-----------+
    | DataRest | -> | DataTransit| -> | DataInUse |
    +-----------+ +-----------+ +-----------+
    AES/FDE TLS/VPN Enclaves


**✅ Key Takeaways**
- Match crypto to context: At rest ↔ AES, In transit ↔ TLS, In use ↔ Enclave.  
- Understand TPM vs HSM vs Enclave roles.  
- Avoid deprecated algorithms (MD5, SHA-1).

---

## 🧭 Domain 1 Summary Checklist

- [x] Understand control categories & functions  
- [x] Grasp CIA, AAA, Zero Trust models  
- [x] Know change management steps & CAB roles  
- [x] Recognize TPM/HSM/Enclave use cases  
- [x] Review encryption algorithms and lifecycles  

---

### 🖼 Diagram Placeholders (for assets/diagrams)
- `/assets/diagrams/domain1-controls-diagram.png`  
- `/assets/diagrams/domain1-zero-trust-diagram.png`  
- `/assets/diagrams/domain1-change-lifecycle.png`  
- `/assets/diagrams/domain1-crypto-usecases.png`

---

> **Next Up:** [Domain 2 — Threats, Vulnerabilities, and Mitigations](domain2-threats-vulnerabilities-mitigations.md)

