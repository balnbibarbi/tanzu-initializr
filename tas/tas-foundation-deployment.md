[feature] Generate wildcard certs

**AS A/AN** Application Engineer, 
**I NEED** Transport Layer Security to my apps 
**SO THAT** I can offer trusted and encrypted endpoints to my users

**AC:**
 - TLS certificate is signed by the certificate signing authority when a TLS certificate is offered on a request to a name in the wildcard deployment domain

**NOTES:**

* MVP for non-production only _may_, at the client's discretion, use a self-signed certificate
* MVP for internal use _may_ use an internally-signed certificate
* MVP for public use _should_ use a certificate with an all-public certificate chain

L: tas foundation deployment

---

[feature] Install & Configure TAS

**AS A** Platform Engineer
**I NEED** to install TAS (Tanzu Application Service)
**SO THAT** I can eventually deploy a test app

**AC**
* A successful deployment PCF of the PAS tile in Ops Manager
* Smoke tests passed
* App console is accessible

L: tas foundation deployment

---

[feature] Download tiles and upload to jumpbox

In order to efficiently move the large binary to their destination hosts,
Platform Engineering should stage the binaries close to the deployment box.

L: tas foundation deployment

---

[feature] [Spike] Determine what Tiles will be installed

null

L: tas foundation deployment

---

[feature] Configure Ops Manager Director

**AS Pat** the Platform Engineer
**I NEED** to configure the Ops Manager Director
**SO THAT** other tiles can be deployed

**AC:**
 - Ops Manager tile is green
 - Apply Changes is completed successfully

L: tas foundation deployment

---

[feature] Configure DNS & Load Balancers to round-robin traffic to goRouters

**AS A** Platform engineer
**I NEED** the Isolation Segment DNS & Load Balancers to be configured
**SO THAT** I can install Isolation Segments

**AC:**
 - Smoke tests pass
 - Test application is available

**Notes:**
Add domain to cloud controller

L: infrastructure & networking

---

[feature] Deploy Ops Manager

**AS A** Platform Engineer
**I NEED** to Deploy Ops Manager
**SO THAT** I can eventually configure the PAS

**Acceptance Criteria**

* Ops Manager UI should be available

L: tas foundation deployment

---

[feature] Overview of the platform and the road ahead

As a platform engineer
I want to know what I am about to set up and build
So that I have a better understanding of the next steps

L: tas foundation deployment

---

