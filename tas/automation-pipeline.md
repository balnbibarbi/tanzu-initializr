Deploy Concourse Manually

**AS A Platform Engineer**  
**I want** to setup concourse using the Control Plane Bosh director
**So that** I can create platform automation pipelines

### Acceptance Criteria
```
Concourse UI is accessible
Run a hello world pipeline https://concourse-ci.org/hello-world-example.html
Condition:
Connect to a secret mgmt solution for the platform (i.e. Credhub)
```

L: platform automation, concourse

---

Deploy Concourse via BOSH toolchain

**AS a Platform Engineer**
**I want** to build an automated Concourse deployment script
**So that** we can easily deploy concourse for future pipelines and automation

*Notes:*  
A toolchain for deploying Concourse with BOSH: https://github.com/concourse/concourse-bosh-deployment
### Acceptance Criteria
```
Upon running the pipeline:
Concourse UI is available at the configured URL
A sample application can be deployed to concourse https://concourse-ci.org/hello-world.html
Web VM has a static IP, more than 1 worker,  worker available disk space is >= 300G
```

L: platform automation, concourse

--- 

[chore] An accessible image registry for the platform control plane

If Docker is not accessible from the platform, deploy an internal image registry for the control plane


L: platform automation

---

[chore] Install SSL Cert for Concourse

L: platform automation

--- 

Unify platform pipelines into one (as many as possible)

**As A platform engineer**  
**I want** to unify as many pipelines as possible into one  
**So that** I can better manage the automation pipelines

L: platform automation, concourse

---

Rework platform automation pipeline and templatize with vars

**As a platform engineer**  
**I want** to templatize my automation pipeline  
**So that** they could be re-used in other foundations by changing their variables 
### Acceptance Criteria
```
- We have tile config generation scripts for all the tiles we install using platform automation
- We use the scripts to generate tile config templates with the accompany var files
- Create documentation good enough for a person new to this process to understand and perform updates on their own.
```

L: platform automation, concourse
