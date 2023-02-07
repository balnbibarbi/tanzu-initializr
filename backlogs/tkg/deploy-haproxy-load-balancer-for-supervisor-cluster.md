Need to install HAProxy load balancer for Supervisor Cluster

### Why
1. Needs to install LB as client using VDS networking and need HAProxy load balancing for the Supervisor Cluster

**As vSphere administrator**
**I want ** to install HAProxy load balancer
**So that ** installation and configuration happens with ease and customer gets satisfactory results.

### Acceptance Criteria

```gherkin
Scenario:  Needs to install HAProxy load balancer
Given To check for requirements for vSphere with Tanzu setup
When vSphere cluster is available 
Then
VDS networking is available and client has not subscribed for NSX Advanced Load Balancer- need to deploy HAProxy load balancer
```

**Notes:**
1. Client need to share the subnet / vLAN to use for configuration
2. Need access to vSphere and internet to perform the LB setup (if required)