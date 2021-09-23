
Prepare infrastructure for TKG install

**As a Platform Engineer**  
**I want** to prepare my infrastructure  
**So that** I can deploy TKG 

### Acceptance Criteria
```gherkin
Scenario:
Given a vSphere environment, 
When I follow all the items from the doc
Then I can deploy a management cluster
```

**Notes**: 
- [vSphere documentation and detailed instructions](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.1/vmware-tanzu-kubernetes-grid-11/GUID-install-tkg-vsphere.html)
- [AWS documentation and detailed instructions](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.1/vmware-tanzu-kubernetes-grid-11/GUID-install-tkg-aws.html)
These requirements include command line tools, an AWS administrator account, and sufficient VPC space.

L: Infrastructure and Networking

---

Additional vSphere prep tasks for disconnected environments

**As a Platform Engineer**  
**I want** to set up an accessible image registry and provide TKG's necessary resources locally   
**So that** I can deploy TKG without internet access

### Acceptance Criteria
```gherkin
Scenario:
Given a vSphere environment, 
When its disconnected from the internet
Then we have access to image registry and resources are available locally
```

**Notes**: The bulk of this task is making the necessary docker images available offline. [See the documented instructions here](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.1/vmware-tanzu-kubernetes-grid-11/GUID-install-tkg-airgapped-environments.html)

L: Infrastructure and Networking

---

[Chore] TKG prerequisites are installed locally

**As a Platform Engineer**  
**I want** to have the necessary tools installed to deploy TKG from my machine   
**So that** I can begin deploying TKG  

**Notes:** The tools include the TKG CLI, kubectl, and docker. 
A list of them and instructions can be found in the [documentation](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.1/vmware-tanzu-kubernetes-grid-11/GUID-install-tkg-set-up-tkg.html)

L: Infrastructure and Networking

---

Pave the underlying infrastructure using automation


**As a Platform Engineer**  
**I want** to pave my infrastructure using automation  
**So that** it is repeatable and consistent

### Acceptance Criteria
```gherkin
Scenario:
When I run my infra automation pipeline
Then my IaaS is paved and ready for TKG deployment
```

L: Infrastructure and Networking

