 Deploy a Secret Management solution for platform

**As a Platform Engineer**  
**I want**  to have a secret management solution  
**So that** I can securely read and write credentials


**Notes:**  
CredHub is recommended for TAS

L: secret management

---

Deploy a Secret Management solution for applications

**As an Application Developer**  
**I want** to have a secret management solution  
**So that** I can secure my application credentials 

**Notes:**  
CredHub is the recommended solution
Vault is the alternative

L: secret management

---
Backup platform automation CredHub

**As a Platform Engineer**  
**I want** to take back ups of the CredHub entries  
**So that** I can recover my CredHub if anything disaster happens

### Acceptance Criteria
```gherkin
When I run a command: credhub export -f (name of the file)    
Then there will be a file with all the Crehub entries
```

L: secret management, secret backup

---

Rotate user assignable admin passwords in platform

**As a Platform Engineer**   
**I want** to frequently replace old secrets/credentials (passwords) with new ones  
**So that** my platform is secure by rotating in new secrets

### Acceptance Criteria
```gherkin
Can log into the platform with replacement user assignable admin passwords
```

L: secret management, secret rotation
