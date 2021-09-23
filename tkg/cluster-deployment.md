Deploy management cluster(s) 

**As a Platform Engineer**  
**I want** to deploy a management cluster    
**So that** I can deploy guest clusters for apps to run on

**Acceptance Criteria**
Scenario: 
Given  
When I run -> tkg get management-cluster
Then I get info on management cluster

**Notes:** VMware recommends using the browser-based UI for TKG, particularly for the first install: [instructions are here](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.1/vmware-tanzu-kubernetes-grid-11/GUID-install-tkg-aws-ui.html). If you would rather use the CLI, [instructions are here](hhttps://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.1/vmware-tanzu-kubernetes-grid-11/GUID-install-tkg-aws-cli.html)

L: Cluster Deployment

--- 