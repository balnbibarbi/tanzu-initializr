(Spike) Define the workload authentication model

### Why
A secure model is defined and implemented for workloads to gain access to internal and external systems  

**As an InfoSec Engineer**  
**I want** to understand, define and document the workload authentication model  
**So that** I know it's compliant with our organization's policies

**Notes**:  
This includes:
- Different cluster roles and cluster bindings are defined
- Separate regular users from super users
- Service accounts' scope and access

L: Authentication

---

Workload authentication on the platform 

**As a Platform Engineer**  
**I want** applications to transparently authenticate to the platform  
**So that**  they are portable / decoupled from implementation details
L: Authentication

---

Integrate with existing authentication systems / IdP  

### Why
Users and system accounts are able to leverage a unique identity to successfully access the cluster  

**As a Platform Engineer**  
**I want** to be able to integrate with an Identity Provider (IdP)   
**So that** access to the platform is centrally maintained and managed

### Acceptance Criteria
```gherkin
Scenario: 
When I log in with my unique credentials
Then I am able to access the desired environment
```
L: Authentication

---

Capability to audit authentication  

**As an InfoSec Engineer**  
**I want** to be able to audit authentication on the platform  
**So that** I can comply with security & compliance requirements

### Acceptance Criteria
```gherkin
Scenario: 
When I view the system audit logs in the cluster
Then I can determine who or what is making requests to the Kubernetes API server
```
 
**Notes**:
- [Audit Logging](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.3/vmware-tanzu-kubernetes-grid-13/GUID-troubleshooting-tkg-audit-logging.html#api-logs)
- [SSO Audit Events](https://docs.vmware.com/en/VMware-vSphere/7.0/com.vmware.vsphere.security.doc/GUID-FBECACED-E9E2-4DE5-A4D2-3587D90D2420.html)

L: Authentication

---

Securely connect to external/off-platform services 
**As a Platform Engineer/Application Developer**  
**I want** to provide a mechanism for connecting to external services with the least privileges  
**So that** the access is secure and authenticated 

### Acceptance Criteria
```gherkin
Scenario: 
When connecting to external cloud services
Then it's connected using https or other secure protocols 
```
 **Notes:**
- Connectivity with the least privileges

L: Authentication

---

Revoke human & application credentials rapidly  

**As an InfoSec Engineer**  
 **I want** to be able to revoke human & application credentials rapidly  
 **So that** access can be controlled in case of security incident / turnover

### Acceptance Criteria
```gherkin
Scenario: 
When an authorized activity is complete
Then the privileged access is no longer valid
```
```gherkin
Scenario: 
Given user X that is no longer authorized to access
When X tries to access the platform
Then access is denied 
```
L: Authentication

---