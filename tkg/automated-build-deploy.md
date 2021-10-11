Image content has not been modified post build 

**As an Infosec Engineer**  
**I want** to ensure image content has not been modified post build   
**So that** I can insure integrity of containers running in my cluster


**Notes:**

L: image registry, automated build and deploy

---

Images with vulnerabilities are flagged / replaced 

**As an Infosec Engineer**  
**I want** to ensure images with vulnerabilities are flagged / replaced   
**So that** I can trigger rebuilds of images to address vulnerabilities 


L: image registry, automated build and deploy

---

Provide a robust image registry 

**As a Platform Engineer**  
**I want** to provide a robust image registry   
**So that** builds / deploys are always possible


L: image registry, automated build and deploy

---

Integrate with existing CI / CD systems 

**As a Platform Engineer**  
**I want** to integrate with existing CI / CD systems   
**So that** deploys to Kubernetes are seamless


**Notes:**

L: automated build and deploy

---

A smooth build / CI experience for images 

**As an Application Developer**  
**I want** to have a smooth build / CI experience for images   
**So that** my workflow is not disrupted


**Notes:**

L: automated build and deploy

---

Images have the smallest possible threat surface 

**As an Infosec Engineer**  
**I want** to ensure images have the smallest possible threat surface  
**So that** I reduce the attack vectors of my workloads


**Notes:**

L: automated build and deploy

---

Trace / audit running images in production all the way back to their build / code 

**As an Infosec Engineer**  
**I want** to be able to trace / audit running images in production all the way back to their build / code   
**So that** I can identify the point in time a vulnerability was introduced

L: automated build and deploy, authorization

---

Artifact / image approvals are persisted through the life-cycle 

**As an Infosec Engineer**  
**I want** ensure artifact / image approvals are persisted through the life-cycle  
**So that** i can comply with regulatory requirements

L: automated build and deploy, authorization

---

All applied manifests (YAML) are valid and compliant with organizational policy 

**As a Platform Engineer**  
**I want** to ensure all applied manifests (YAML) are valid and compliant with organizational policy  
**So that** I can ensure "how an app runs" conforms to organizational expectations and does not introduce security concerns


L: automated build and deploy, policy enforcement 

---

