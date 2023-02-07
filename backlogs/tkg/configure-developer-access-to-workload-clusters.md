Configure developer access to workload clusters

### Why
Need to provide required access to developers to the workload clusters (TKC) 

**As vSphere administrator**
**I want ** To provide required access to developers to k8s cluster
**So that ** Developers can access k8s cluster and operators can deploy production workloads.

### Acceptance Criteria

```gherkin
Scenario:  Configure developer access to workload clusters
Given vSphere is configured with supervisor cluster and workload cluster is also provisioned by Operator Admin
When There is a need of k8s cluster for developers and production workload deployments
Then
Configure developer access to workload clusters
```

**Notes:**