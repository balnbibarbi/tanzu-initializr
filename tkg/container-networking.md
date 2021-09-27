[Spike] Should pods be routable in the environment 

**As a Network Admin**  
**I want** to assess whether routable pods makes sense in my environment   
**So that** I can assess whether the added complexity of routable pods is beneficial given my use case

L: Container Networking

---

[Spike] Determine appropriate routing protocols (VXLAN/Native/IP-in-IP) to select the right CNI-plugin  

**As a Network Admin**  
**I want** to determine appropriate routing protocols (VXLAN/Native/IP-in-IP)   
**So that** we can make informed CNI-Plugin choices (if applicable) and comply with existing network and performance requirements.

**Notes**:
- Check for enterprise support for the CNI you choose so you can get assistance with problems beyond your expertise

L: Container Networking

---

Install the CNI plugin to meet the networking requirements of your users 

**As a Platform Engineer**  
**I want** configure the right CNI plugins in my platform
**So that** the platforms pod networking requirements are met

L: Container Networking

---

Access pods from external services 

**As a Platform Engineer**  
**I want** to make pods network routable   
**So that** I can access pod directly from external services

L: Container Networking

---

Optimize the CNI-Plugin control plane 

**As a Platform Engineer**   
**I want** to optimize the CNI-Plugin control plane    
**So that** it is highly-scalable and conforms with security best practices

L: Container Networking

---

Multi-cast routing schemes  

**As a Platform Engineer**  
**I want** to determine if multi-cast routing schemes will be required  
**So that** all workloads that will use the platform will be supported

L: Container Networking

---

Assess the viability of existing service implementations (kube-proxy:iptables)  

**As a Platform Engineer**  
**I want** to assess the viability of existing service implementations (kube-proxy:iptables)   
**So that** over time I can determine if my scale TODAY demands alternative implementations

L: Container Networking

---

Implement pod networking that supports multi-cast 

**As a Platform Engineer**  
**I want** to implement pod networking that supports multi-cast  
**So that** internal workloads using this routing scheme will be supported

L: Container Networking

---

Service scalability and stability with Kubernetes service routing  

**As a Platform Engineer**  
**I want** to service scalability and stability with Kubernetes service routing    
**So that** over time I can scale my cluster up and have O(1) time resolution when resolving IPs underlying services


**Notes:**

L: Container Networking

---

Determine if and where network policies are required 

**As a Network Admin**  
**I want** to determine if and where network policies are required   
**So that** I can meet any applicable compliance or practical network security measures


**Notes:**

L: Container Networking

---

Use the correct network policy API (Kubernetes API vs CNI-Plugin CRDs) 

**As a Platform Engineer**  
**I want** to use the correct network policy API (Kubernetes API vs CNI-Plugin CRDs)  
**So that** I can balance feature sets with portability of policy


**Notes:**

L: Container Networking

---

