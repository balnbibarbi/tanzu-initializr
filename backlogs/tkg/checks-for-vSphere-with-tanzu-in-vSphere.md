Installing and Configuring vSphere with Tanzu

### Why
1. To enable operators to manage Kubernetes cluster on vSphere with kubectl
2. To configure and provide namespaces to DevOps teams. 

**As vSphere administrator**
**I want ** to check vSphere setup for configurations required for vSphere with Tanzu
**So that ** installation and configuration happens with ease and customer gets satisfactory results.

### Acceptance Criteria

```gherkin
Scenario:  Checking for requirements for vSphere with Tanzu setup
Given To check for requirements for vSphere with Tanzu setup
When vSphere cluster is available 
Then
1. Create and configure a vSphere cluster with at least three ESXi hosts
2. Must configure networking stack with any of two options: NSX-T Data Center or vSphere Distributed Switch (vDS) networking with a load balancer
3. Configure the cluster with shared storage such as vSAN
4. If plan to use persistent volumes in ReadWriteMany mode, enable File Services on the vSAN cluster or need to implement external NFS filesystem
5. Enable the cluster with vSphere HA
6. Enable the cluster with vSphere DRS in fully-automated mode
7. User account in vSphere has the Modify cluster-wide configuration on vSphere cluster so that we can enable Workload Management functionality
```

**Notes:**
1. Can deploy a Supervisor with the  networking stack based on VDS networking with the NSX Advanced Load Balancer
2. Can deploy a Supervisor with the networking stack based on VDS and HAProxy load balancer.
3. Can deploy a Supervisor with the networking stack based NSX ( NSX would provision the LB for the k8s cluster's api-server load balancing)
