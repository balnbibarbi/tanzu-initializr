Model for how workloads are authorized to leverage the platform 

**As a Platform Engineer**  
**I want** to be able to provide the security team a model for how workloads are authorized to leverage the platform  
**So that** we can meet sec/compliance requirements.

L: authorization

---

To make my policy constraints accessible and known to my customers (dev teams) 

**As a Platform Engineer**  
**I want** to make my policy constraints accessible and known to my customers (dev teams)    
**So that** they can understand what conformance is required early on in their dev lifecycle

L: authorization

---

To place policy and constraints on the types of workoads that are allowed to execute in my cluster 

**As a Platform Engineer**  
**I want** to place policy and constraints on the types of workoads that are allowed to execute in my cluster  
**So that** my environment remains secure.


L: authorization

---

Appropriately build my application such that it is authorized to use the platform

**As an Application Developer**
**I want** to understand how to appropriately build my application such that it will only attempt to use components of the platform that it needs
**So that** my applications will run as expected while requiring the least amount of privileges to do so.


L: authorization

---

A model for authorization that aligns with my platform tenancy model 

**As a Platform Engineer**  
**I want** to provide a security model for authorization that aligns with my platform tenancy model   
**So that** authorization to leverage Kubernetes resources is limited to minimum set of permissions appropriate groups/users/applications. 


L: authorization

---

Policies to drive consistency for labels and metadata on resources deployed in the cluster 

**As a Platform Engineer**  
**I want** to apply policy to drive consistency for labels and metadata on resources deployed in the cluster   
**So that** I can use that consistent labeling as part of a show back or inventory exercise

L: authorization

---

Enforce node authorization 

**As a Platform Engineer / an Infosec Engineer**  
**I want** to enforce node authorization   
**So that** nodes can only access and manipulate resources that are scheduled the specific node.


L: authorization

---

How apps gain access to external systems 

**As a Platform Engineer**  
**I want** to define how apps gain access to external systems   
**So that** workloads in k8s can access services outside of it in a secure, auditable manner.


**Notes:**

L: authorization

---

Define workload-to-workload authorization  

**As a Platform Engineer**  
**I want** a mechanism to define workload-to-workload authorization    
**So that** I may enforce workload tenancy.


**Notes:**

L: authorization

---

