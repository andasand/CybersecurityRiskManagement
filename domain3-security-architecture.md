# 🏗️ Domain 3 — Security Architecture

> **Exam Weight:** ~18%  
> **Purpose:** Understand secure infrastructure, cloud, and data architecture concepts, resilience principles, and data-protection strategies.

---

## 🔸 Exam Objective 3.1 — Compare and Contrast Security Implications of Different Architecture Models

### 📖 Overview
Security architecture defines **how systems are structured and connected** to reduce risk, enforce segmentation, and maintain trust boundaries.

---

### 🧩 Key Architecture Models

| **Model** | **Description** | **Security Considerations** |
|------------|----------------|------------------------------|
| **Client–Server** | Centralized servers, multiple clients | Server hardening, patching, access control |
| **Peer-to-Peer (P2P)** | Distributed resource sharing | Harder monitoring, risk of malware propagation |
| **Thin vs Thick Client** | Local vs server-side processing | Thin clients depend on network availability |
| **On-Prem vs Cloud** | Control vs scalability trade-off | Shared-responsibility model awareness |

---

### ⚙️ Network Infrastructure Considerations

| **Component** | **Security Focus** |
|----------------|--------------------|
| **Switching Infrastructure** | VLAN segmentation, MAC filtering |
| **Routing Infrastructure** | ACLs, route authentication (BGP signing) |
| **Physical Isolation** | Air-gapped networks, separate management LANs |

---

### ☁️ Cloud Deployment Models

| **Model** | **Ownership** | **Example** |
|------------|---------------|--------------|
| **Public Cloud** | Third-party provider | AWS, Azure, GCP |
| **Private Cloud** | Single organization | OpenStack, VMware vSphere |
| **Hybrid Cloud** | Mix of public & private | Sensitive data on-prem, burst to cloud |
| **Community Cloud** | Shared infrastructure by orgs with common interest | Gov agencies sharing FedRAMP cloud |

---

### 🧠 Diagram — Cloud Deployment Models
    +-------------+
    |  Public     |
    |   Cloud     |
    +-------------+
        ▲     ▲
        |     |
    +---------+ +-----------+
    | Private Cloud | Community|
    +---------------+-----------+
                ▼
              Hybrid

  
---

### 🧩 Cloud Service Models & Responsibility Matrix

| **Model** | **Customer Manages** | **Provider Manages** |
|------------|----------------------|----------------------|
| **IaaS** | OS, apps, data | Virtualization, hardware |
| **PaaS** | Apps & data | Runtime, OS, hardware |
| **SaaS** | Data & usage controls | Everything else |

**Rule of thumb:** Responsibility shifts **downward as you move up the stack**.

---

### 🧩 Resilient Architecture Concepts

- **Load balancing** — distributes workloads.  
- **Failover clustering** — redundancy for availability.  
- **High availability (HA)** — minimal downtime.  
- **Redundancy (N+1)** — spare components (servers, power, links).  
- **Geographic diversity** — secondary sites in different regions.

---

### 🧠 Diagram — Resilient Architecture
    [Client]
    │
    ┌───────────────┐
    │ Load Balancer │
    └───────────────┘
    │             │
    [Server A] [Server B]
    │             │
    [DB Cluster with Failover]


**✅ Key Takeaways**
- Understand **shared responsibility** in cloud security.  
- Design for **resilience & availability**.  
- Use **segmentation and redundancy** to limit blast radius.

---

## 🔸 Exam Objective 3.2 — Apply Security Principles to Secure Enterprise Infrastructure

### 📖 Overview
Apply layered security and zoning to protect critical assets and limit attack paths.

---

### 🧩 Security Zones & Placement

| **Zone** | **Purpose** | **Example Controls** |
|-----------|-------------|----------------------|
| **Trusted Internal** | Core assets | RBAC, network ACLs |
| **DMZ (Demilitarized Zone)** | Hosts public-facing services | Reverse proxies, firewalls |
| **Guest Network** | Isolated access | VLAN segmentation |
| **Management Zone** | Admin tools / monitoring | MFA, jump hosts, network isolation |

---

### ⚙️ Device Placement and Attributes

| **Device** | **Placement Guideline** | **Security Focus** |
|-------------|------------------------|--------------------|
| Firewalls | Between zones | Packet inspection, rule review |
| IDS/IPS | Inline or SPAN port | Detect/Block malicious traffic |
| Proxy | Between clients & Internet | Content filtering |
| VPN Gateway | Network edge | Secure remote access |
| NAC | Access layer | Device health check |

---

### 🧠 Diagram — Network Zone Example
    [Internet]
    │
    [Firewall]──[DMZ: Web/Email]
    │
    [Internal Network]
    │
    [Servers]──[DB]──[Backup]
    │
    [Mgmt Network]


**✅ Key Takeaways**
- Use **segmentation & zoning** for layered defense.  
- Restrict management interfaces to dedicated networks.  
- Apply **least privilege** at the network and user levels.

---

## 🔸 Exam Objective 3.3 — Compare and Contrast Concepts and Strategies to Protect Data

### 📖 Overview
Data protection extends across **classification**, **sovereignty**, and **encryption strategies**.

---

### 🧩 Data Types & Classification

| **Type** | **Examples** | **Protection Method** |
|-----------|--------------|------------------------|
| **Public** | Press releases, marketing | Integrity checks |
| **Internal** | Internal memos | Access control |
| **Confidential** | HR records, PII | Encryption at rest |
| **Restricted** | Trade secrets | Strong encryption, monitoring |

---

### ⚙️ Data Sovereignty & Privacy

| **Concept** | **Definition** |
|--------------|----------------|
| **Data Sovereignty** | Data subject to laws of its physical location |
| **Privacy Data** | PII, PHI, financial data |
| **Data Breach** | Unauthorized access/exfiltration |

Mitigation: **encryption**, **tokenization**, **geo-fencing**, **DLP** (Data Loss Prevention).

---

### 🧠 Diagram — Data Protection Lifecycle
    [Create] → [Store] → [Use] → [Share] → [Archive] → [Destroy]
    Apply DLP & Encryption at each stage


**✅ Key Takeaways**
- Classify data by sensitivity and apply appropriate controls.  
- Understand data-location regulations (e.g., GDPR).  
- Implement DLP and privacy monitoring solutions.

---

## 🔸 Exam Objective 3.4 — Explain Importance of Resilience and Recovery in Security Architecture

### 📖 Overview
Architecting for resilience ensures operations continue during and after incidents.

---

### 🧩 Data Backups & Recovery

| **Type** | **Description** | **Notes** |
|-----------|----------------|-----------|
| **Full** | Complete copy of data | Slow but simple restore |
| **Incremental** | Changes since last backup | Fast backup, slow restore |
| **Differential** | Changes since last full | Balance of speed & space |
| **Snapshot** | Point-in-time image | Common in VMs & cloud |

Retention strategies: **GFS (Grandfather-Father-Son)**, **off-site**, **immutable storage**.

---

### ⚙️ Advanced Data Protection

| **Method** | **Purpose** |
|-------------|-------------|
| **RAID** | Disk redundancy for availability |
| **Replication** | Real-time copy to secondary site |
| **Failover Clustering** | Automatic service switchover |
| **Snapshot & Versioning** | Fast rollback from ransomware |

---

### 🧩 Continuity of Operations & Testing

| **Concept** | **Description** |
|--------------|----------------|
| **RTO (Recovery Time Objective)** | How quickly to restore |
| **RPO (Recovery Point Objective)** | Max acceptable data loss |
| **Capacity Planning** | Ensure resources for failover |
| **Resiliency Testing** | Regular DR & failover tests |

---

### 🧠 Diagram — Resilience Cycle
    [Prepare] → [Detect] → [Respond] → [Recover] → [Improve]
    (Continuous Testing & Monitoring)


**✅ Key Takeaways**
- Document BCP/DRP plans and test regularly.  
- Balance RTO/RPO with business costs.  
- Build redundancy at each layer (storage, network, power).

---

## 🧭 Domain 3 Summary Checklist

- [x] Understand architecture models and cloud responsibility matrix  
- [x] Implement resilient and segmented networks  
- [x] Apply data classification and sovereignty principles  
- [x] Plan backups & failover with tested RTO/RPO  
- [x] Incorporate redundancy and capacity planning into design  

---

> **Next Up:** [Domain 4 — Security Operations](domain4-security-operations.md)

