Generate wildcard certs

**As an Application Engineer**   
**I want** Transport Layer Security to my apps   
**So that** I can offer trusted and encrypted endpoints to my users

### Acceptance Criteria: 
```gherkin
TLS certificate is signed by the certificate signing authority when a TLS certificate is offered on a request to a name in the wildcard deployment domain
```
**NOTES:**

* MVP for non-production only _may_, at the client's discretion, use a self-signed certificate
* MVP for internal use _may_ use an internally-signed certificate
* MVP for public use _should_ use a certificate with an all-public certificate chain

L: tas foundation deployment

---

Install & Configure TAS

**As a Platform Engineer**  
**I want** to install TAS (Tanzu Application Service)  
**So that** I can eventually deploy a test app

### Acceptance Criteria: 
```gherkin
* A successful deployment PCF of the PAS tile in Ops Manager
* Smoke tests passed
* App console is accessible
```
L: tas foundation deployment

---

[Chore] Download tiles and upload to jumpbox

In order to efficiently move the large binary to their destination hosts,
Platform Engineering should stage the binaries close to the deployment box.

L: tas foundation deployment

---

[Chore] Determine what Tiles will be installed

L: tas foundation deployment

---

Configure Ops Manager Director

**AS Pat** the Platform Engineer
**I want** to configure the Ops Manager Director
**So that** other tiles can be deployed

### Acceptance Criteria: 
```gherkin
- Ops Manager tile is green
- Apply Changes is completed successfully
```
L: tas foundation deployment

---

Configure DNS & Load Balancers to round-robin traffic to goRouters

**As a Platform Engineer**  
**I want** the Isolation Segment DNS & Load Balancers to be configured  
**So that** I can install Isolation Segments

### Acceptance Criteria: 
```gherkin
- Smoke tests pass
- Test application is available
```

**Notes:**
Add domain to cloud controller

L: infrastructure & networking

---

Deploy Ops Manager

**As a Platform Engineer**  
**I want** to Deploy Ops Manager  
**So that** I can eventually configure the PAS

**Acceptance Criteria**

* Ops Manager UI should be available

L: tas foundation deployment

---

Overview of the platform and the road ahead

**As a Platform Engineer**  
**I want to** know what I am about to set up and build  
**So that** I have a better understanding of the next steps

L: tas foundation deployment

---

