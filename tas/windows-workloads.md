[feature] Set up Isolation Segments for Windows cells


**As A Platform engineer**
**I want ** to set up Isolation Segments for Windows cells
**So that ** I have isolated compute or traffic to those cells

**Notes:**

L: windows workloads

---

[feature] Manual Install Windows Runtime for TAS

**AS A** platform engineer
**I NEED** to use Windows Runtime for all externally-facing applications
**SO THAT** developers can deploy their .NET framework applications

**AC:**
 - Can deploy a sample .NET framework application https://github.com/cloudfoundry-incubator/NET-sample-app 

**Notes:**

L: windows workloads

---

[chore] Determine approach for Windows Stem Cell Updates

Communicate with Security regarding the following when Stem Cell patches need to happen:
 - Pull down patches to stem cells, build a VM, and run scans against the VM
 - Get Security to bless the updates so the stemcell can be deployed

L: windows workloads

---

[feature] Manual Build Windows Stemcells for vSphere

**AS A** Platform Engineer
**I NEED** build a Windows Stemcell
**SO THAT** I can install Windows Runtime for TAS

**AC:**
 - Ops Manager Installation was successful

L: windows workloads

---

