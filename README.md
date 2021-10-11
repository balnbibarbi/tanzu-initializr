
## What is Tanzu Initializr?

Tanzu Initializr is a library epics and user stories application platforms on for Kubernetes such as [Tanzu Kubernetes Grid](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/index.html) and [Tanzu Application Service](https://docs.pivotal.io/application-service/). 

Our aspirations for this initiative are:	
- Achieve consistency across delivery teams, partners and clients
- Expedite and automate the process of backlog creation

## Epics, Desired Outcomes
Click on each epic to see the backlog of user stories

### TKG / K8s
- [Infra & Networking](./tkg/infra-networking.md)
  - The platform team can deploy a new TKG control plane using manually configured compute, storage, networking assets
  - The platform team can pave the underlying infrastructure to support deployment of TKG in an automated way for auditability, repeatability, recoverability, and survivability
- [Cluster Deployment](./tkg/cluster-deployment.md)
  - Platform engineers can deploy management cluster on the cloud and create guest clusters for application developers
- [Container Runtime](tkg/runtime.md)
  - Platform engineers understand the runtime requirements for workloads and
  - Platform engineers have secured Kubernetes Runtime for workloads
  - Platform engineers can optimize Kubernetes Runtime for workloads
    Container images optimized for speed
  - App developers can containerize VMs that are not easy to refactor or the app is not easy to containerize
  - Container runtimes have the appropriate resources scheduled and available
- [Storage Integration](./tkg/storage-integration.md)
  - App developers have one or more persistent storage solutions for their workloads	
  - Persistent volumes can be life cycle managed, dynamically created and expanded
  - App developers understand the availability of persistent volumes
  - Access to persistent volumes is controlled and done in a secure fashion	
  - App developers can monitor how much storage is being used by their workloads 
- [Authentication](tkg/authentication.md)
  - A secure model is defined and implemented for workloads to gain access to internal and external systems
  - Users and system accounts are able to leverage a unique identity to successfully access the cluster
- [Backup & Recovery](/tkg/backup-recovery.md)
  - Platform engineers are able to re-create the clusters and re-deploy platform services in case of a disaster, outage or loss of a cluster to minimize downtime
  - Application developers are able to restore their application to minimize business disruption	
  - Platform operator can "easily" backup and restore to minimize complexity
- [Platform & App Observability](tkg/observability.md)
  - Platform engineers understand in detail what has happened in the platform
  - Platform engineers can correct issues and maintain the platform running (alerting and dashboard)	
  - Platform users share the same understanding around the availability of the platform
  - InfoSec can monitor the platform to ensure all actions on the platform are taken by the right actors
  - App developers have complete visibility into all running workload on the platform
  - Developers can perform distributed tracing in their applications
  - App developers are enabled to troubleshoot production issues in real time
- [Secret Management](tkg/secret-management.md)
  - Secrets used for platform management and workloads are managed securely and efficiently
  - Sensitive data and traffic are encrypted and authenticated using  SSL certificates	
- [Authorization](tkg/authorization.md)
  - Access to resources (e.g. secrets, workload metadata) is validated based on business requirements and security policies
  - Avoid “bad actor” workloads in a cluster by ensuring security requirements are met before allowing them to run in the cluster
- [Container Networking](tkg/container-networking.md)
  - Container Network Interface (CNI) identified based on the compatibility of the underlying infra (virtual or physical) 
  - Container networking implemented for workloads in clusters to establish the Intra-cluster workload communication	
  - Security Team has visibility into all clusters and inter-cluster communication
- [Platform Lifecycle](tkg/platform-lifecycle.md)
  - Kubernetes and other platform components can be upgraded to receive the latest features and patches for bug fixes and security vulnerabilities	
  - Platform engineers can size clusters appropriately and dynamically change size over time based on usage, load, request and budget
- [Automated Build and Deploy](tkg/automated-build-deploy.md)
  - Developers can store and manage container images for application deployment
  - The integrity of images is guaranteed from build to storage to runtime	
  - Low risk, painless, deployments in place to mitigate risk of changes and automate promotion process	
  - Third party tooling used by application developers is trusted and secure
- [Service Routing](tkg/service-routing.md)
  - Workloads inside the cluster can be accessed from outside the cluster (no need for service mesh)
  - Workloads inside the cluster can have a route outside the cluster (no need for service mesh)	
  - Required traffic patterns are supported intra/extra-cluster. For example blue-green, canary, traffic weighting (need a service mesh)	
  - Identity of workloads is established to ensure secure workload-to-workload communication (need a service mesh)
- [Workload Onboarding](tkg/workload-onboarding.md)
  - Application developers can create consistent clusters on-demand for their workloads
  - Developers have the ability to manage their apps in their own workspace	
  - App developers can scale apps if they are running out of resource to continue to serve end users

### TAS 
- [Infrastructure & Networking](tas/infrastructure-networking.md) 
  - The platform team is ready to deploy new TAS foundations using manually configured compute, storage, and networking assets.<br />
  - The platform team is ready to pave the underlying infrastructure to support deployment of TAS foundations in an automated way for auditability, repeatability, recoverability, and survivability.  
- [Foundation Deployment](tas/tas-foundation-deployment.md)
  - Platform Engineers can deploy a test app onto a TAS foundation
  - Platform Engineers can deploy a TAS foundation in an automated way for auditability, repeatability, recoverability, and survivability
  - Apps deployed on TAS can communicate with other applications on TAS in a trusted way so that apps with elevated data security requirements can run on TAS
  - Platform Engineers can scale and tune-up TAS platforms to better serve the needs of application developers
- [Platform Automation](#)
- [Compliance & InfoSec](#)
  - Platform is hardened and all controls and processes are in place to conform to enterprise security policy and audit standards
  - The platform team can isolate high performance compute or application service routing to conform to the required compliance and infosec policies
- Platform Services
- Platform Observability
- Application Observability
- Secret Management
- Application Authentication
- Platform Authentication
- Backup and Restore
- Platform Lifecycle
- Windows Workloads
  - Developers are enabled to push .NET apps to the platform
- Developers Self-service
- Application Onboarding


### Platform Reliability Engineering
