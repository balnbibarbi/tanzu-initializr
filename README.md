
# Tanzu Initializr

Tanzu Initializr is a library of user stories for modern application platforms such as [Tanzu Kubernetes Grid](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/index.html) and [Tanzu Application Service](https://docs.pivotal.io/application-service/). 

The aspirations for this initiative are:	
- Expedite and automate the process of backlog creation for platform teams
- Achieve consistency across VMware Tanzu Labs delivery teams, our partners and clients

## Export user stories via Prolific

The user stories in this repo are formatted in markdown and work with [Prolific](https://github.com/onsi/prolific). It converts each markdown down into a to CSV. The CVS file can be done imported into a Pivotal Tracker project via [Prolific-Importer](https://github.com/sneal/prolific-importer#installation)

**Convert to CSV**  
```bash
prolific path/to/stories.md > path/to/stories.csv
```

**Import to Tracker** 
```bash
prolific-importer [API_TOKEN] [PROJECT_ID] path/to/stories.csv
```
**Or simply combine both commands**
```
prolific path/to/stories.prolific | prolific-importer [API_TOKEN] [PROJECT_ID]
```

## Templated Backlogs
Click on each epic to see the backlog of user stories.

### Tanzu Kubernetes Grid (TKG)
#### Kubernetes Dial-tone:
- [Infra & Networking](./tkg/infra-networking.md)
- [Cluster Deployment](./tkg/cluster-deployment.md)

#### Kubernetes Platform:
- [Storage Integration](./tkg/storage-integration.md)
- [Container Runtime](tkg/runtime.md)
- [Container Networking](tkg/container-networking.md)
- [Service Routing](tkg/service-routing.md)
- [Platform Lifecycle](tkg/platform-lifecycle.md)
- [Authentication](tkg/authentication.md)
- [Secret Management](tkg/secret-management.md)
- [Platform Observability](tkg/observability.md)
- [Backup & Recovery](/tkg/backup-recovery.md)
- [Authorization](tkg/authorization.md)

#### Application Platform
- [Backup & Recovery](/tkg/backup-recovery.md)
- [Workload Onboarding](tkg/workload-onboarding.md)
- [Authorization](tkg/authorization.md)
- [Workload Tenancy](tkg/workload-tenancy.md)
- [Application Observability](tkg/observability.md)
- [Automated Build and Deploy](tkg/automated-build-deploy.md)

### Tanzu Application Service (TAS) 
- [Infrastructure & Networking](tas/infrastructure-networking.md) 
- [TAS Foundation Deployment](tas/tas-foundation-deployment.md)
- [Platform Pipeline Automation](tas/automation-pipeline.md)
- [Platform Observability](tas/observability.md)
- [Platform Authentication](tas/platform-authentication.md)
- [Backup and Restore](tas/backup-restore.md)
- [Platform Services](tas/platform-services.md)
- [Platform Lifecycle](tas/platform-lifecycle.md)
- [Secret Management](tas/secret-management.md)
- [Application Observability](tas/observability.md)
- [Application Authentication](tas/application-authentication.md)
- Application Onboarding
- [Windows Workloads](tas/windows-workloads.md)
- Developers Self-service
- [Compliance & InfoSec](tas/security-compliance.md)
- [Platform High Availability](#)


### Platform Governance / SRE / Day 2 Ops
- [Service Level Objectives](sre/service-level-objectives.md)
- [Business Continuity](sre/business-continuty.md)
- Proactive Monitoring
- [Platform Update Engine / Release Process](sre/release-process.md)
- [Automation & Self Service](sre/self-service.md)
- Performance Optimization
- [Emergency Response](sre/emergency-response.md)
- [Capacity Planning](sre/capacity-load-mgmt.md)
- [Platform as a Product](sre/platform-as-a-product.md)
- [Balanced Product Team](sre/balanced-team.md)
- Path to Production
- DevOps Culture
