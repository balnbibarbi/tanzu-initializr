[chore] Use SSL certificate for Ops Manager / Control plane

Request SSL certificates for Ops Manager, Concourse, 

L: certs

---

Anti virus to scan the underlying VMs

**As a Platform Engineer**   
**I want** to install an anti virus scanner  
**So that** I know my environment is constantly scanned for virus definitions 

**Notes:**
Tanzu AV is ClamAV under the hood

### Acceptance Criteria
```
ClamAV agent is running on all VMs
```

L: Security & Compliance, Anti virus

---

Install Compliance Scanner 

**As an Infosec engineer**  
**I want** to scan and assess all the VMs in TAS  
**So that** I know they are complaint with configuration guidelines  

**Notes:**  
[Compliance scanner tile](https://network.tanzu.vmware.com/products/p-compliance-scanner)

### Acceptance Criteria
```gherkin
When errands run successfully
Then reports are generated and uploaded to an S3 bucket
```

---

[Chore] Encrypt VM disks

To encrypt the virtual disks attached to VMs  
[See Disk encryption in TAS]

(https://docs.pivotal.io/ops-manager/2-10/security/pcf-infrastructure/disk-encrypt.html)
Guides for enabling encrypted storage policies in vSphere:
- https://docs.vmware.com/en/VMware-vSphere/6.5/com.vmware.vsphere.security.doc/GUID-5E2C3F74-38C1-44C3-ABC5-C2C9353B9DC4.html
- https://docs.vmware.com/en/VMware-vSphere/7.0/com.vmware.vsphere.security.doc/GUID-7DE1ED8F-880B-421E-B27B-5AAA58454AFA.html

L: Security & Compliance

---

[Chore] TLS to the container if not on by default

L: Security & Compliance

---

Install Tanzu File Integrity Manager

L: Security & Compliance



