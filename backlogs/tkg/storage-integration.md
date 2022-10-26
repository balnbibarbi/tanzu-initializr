Determine what providers I'd like to support in my cluster 

**As a Platform Engineer**  
**I want** to determine what providers I'd like to support in my cluster   
**So that** I can figure out what integrations are required (vSAN, NetApp, Ceph) 

L: Storage integrations

---

Understand how volumes are made available to containers  

**As an Infosec Engineer**  
**I want** to understand how volumes are made available to containers
**So that** I can understand the threat model around that data.

**Notes:**
This includes the different access modes and the different patterns for accessing volumes. Explicitly what questions would an infosec eng ask to better characterize the storage. 

L: Storage integrations

---

Provide multiple levels of storage consumption

**As a Platform Engineer**  
**I want** to provide multiple levels of storage consumption  
**So that** developers can weigh cost / speed / etc against their workload requirements

L: Storage integrations

---

Provide persistent volumes to workloads 

**As Application Developer**
**I want** to provide persistent volumes to workloads on a cluster
**So that** data can be persisted across restarts

### Acceptance Criteria
```gherkin
Scenario: 
Given a workload cluster 
When I deploy stateful app and I run kubectl getpv
Then it returns an object 
```
**Notes:**
- Install vSphere CSI on management cluster

L: Storage integrations

---

Encrypt data in persistent volumes

**As Application Developer**  
**I want** to have the application data stored in persistent volumes  encrypted
**So that** any private information and sensitive data are protected

**Notes:**
- Assess storage encryption options first and decide what works best for app teams (cost-benefit analysis)

L: Storage integrations
