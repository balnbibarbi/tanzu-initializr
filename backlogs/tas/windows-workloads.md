Set up Isolation Segments for Windows cells


**As A Platform Engineer**  
**I want** to set up Isolation Segments for Windows cells  
**So that** I have isolated compute or traffic to those cells

L: windows workloads

---

Manual Install Windows Runtime for TAS

**As a Platform Engineer**  
**I want** to use Windows Runtime for all externally-facing applications  
**So that** developers can deploy their .NET framework applications

### Acceptance Criteria: 
```gherkin
deploy a sample .NET framework application https://github.com/cloudfoundry-incubator/NET-sample-app 
```


L: windows workloads

---

[chore] Determine approach for Windows Stem Cell Updates

Communicate with Security regarding the following when Stem Cell patches need to happen:
 - Pull down patches to stem cells, build a VM, and run scans against the VM
 - Get Security to bless the updates so the stemcell can be deployed

L: windows workloads

---

Manual Build Windows Stemcells for vSphere

**As a Platform Engineer**  
**I want** build a Windows Stemcell  
**So that** I can install Windows Runtime for TAS

### Acceptance Criteria: 
```gherkin
Ops Manager Installation was successful
```
L: windows workloads

---

