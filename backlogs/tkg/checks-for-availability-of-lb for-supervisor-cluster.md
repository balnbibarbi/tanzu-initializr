Need LB provisioned to use for Supervisor Cluster

### Why
1. Needs LB to load balance api-server component across 3 instances of supervisor control plane nodes to meet HA requirements

**As vSphere administrator**
**I want ** to install LB (Avi) or check for installed LB
**So that ** installation and configuration happens with ease and customer gets satisfactory results.

### Acceptance Criteria

```gherkin
Scenario:  Needs LB to load balance api-server component across 3 control plane nodes
Given To check for requirements for vSphere with Tanzu setup
When vSphere cluster is available 
Then
1. If NSX-T networking is available - Review the system requirements and topologies for NSX-T networking
2. If VDS networking is available and client subscribed for NSX Advanced Load Balancer- need to deploy and configure NSX Advanced Load Balancer
2. If VDS networking is available and client has not subscribed for NSX Advanced Load Balancer- need to deploy HAProxy load balancer
```

**Notes:**
1. Client need to share the subnet / vLAN to use for configuration
2. Need access to vSphere and internet to perform the LB setup (if required)