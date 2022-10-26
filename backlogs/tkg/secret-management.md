Encrypt secrets at rest 

**As a Platform Engineer**
**I want** to encrypt secrets at rest 
**So that** should someone get direct access to etcd, they won't be able to access secrets without also access to the key

L: secret management

---

Run an enterprise grade secret management solution 

**As a Platform Engineer**
**I want** to run an enterprise grade secret management solution 
**So that** I can support enterprise requirements such as automated rotation, HSM, etc

L: secret management

---

Self service certs/keys on the basis of apps that need them 

**As a Platform Engineer**
**I want** to self service certs/keys on the basis of apps that need them 
**So that** developer do not need to request secret assets from me.

L: secret management

---

Secrets to auto update without restart 

**As an Application Developer**
**I want** to secrets to auto update without restart 
**So that** my application can pickup on secret changes without disruption of service

L: secret management

---

Seal secrets 

**As an Application Developer**
**I want** to seal my secrets 
**So that** they can be stored declaratively along with other assets in git


L: secret management

---

Verify all data paths for secrets are encrypted 

**As a Platform Engineer**
**I want** to verify all data paths for secrets are encrypted 
**So that** there is not opportunity to sniff secrets in plain text


L: secret management

---

Define a secret rotation policy 

**As a Platform Engineer**
**I want** to define a secret rotation policy 
**So that** all secrets are rotated on a schedule


L: secret management

---

Define a key rotation policy 

**As a Platform Engineer**
**I want** to define a key rotation policy 
**So that** all private keys are rotated on a schedule


L: secret management

---

The mechanism used to make secrets available

**As an Infosec Engineer**
**I want** to understand the mechanism used to make secrets available. Including chain of custody and audit and logging points. 
**So that** I can build a threat model around secret handling.


L: secret management

---

The difference between consuming secrets at an app layer and consuming them as part of a platform

**As a Platform Engineer / an Infosec Engineer**
**I want** to understand the difference between consuming secrets at an app layer and consuming them as part of a platform. 
**So that** I can make an educated decision about when to use one model over another.


L: secret management

---

All secrets are encrypted at flight and at rest 

**As an Infosec Engineer**  
**I want** to ensure all secrets are encrypted at flight and at rest   
**So that** any required secrets to run the backup are protected


L: secret management, backup & recovery