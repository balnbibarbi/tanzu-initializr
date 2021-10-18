(Spike) Determine the desired Auth for OpsManager

Determine the desired Auth for OpsManager (e.g. LDAP)

L: platform authentication

---

Integrate OpsManager Auth with an IdP (e.g. LDAP)

**As a Platform Engineer**  
**I want** to use my AD account to login to OpsManager  
**So that** all users/access levels can be managed centrally

**Acceptance Criteria**
```gherkin
Scenario:
Given the ops manager 
When I use my AD account user/pass
Then I am authenticated and can access Ops Manager UI
```

**Notes:**
INFO NEEDED: 
- Groups to grant access to, to bind account to, Creds to connect to LDAP
- Need network access to AD server (connection info, host, ports, SSL, search base, search filter)


---

To integrate App Manager with an IdP (e.g. LDAP)

**As an Application Developer**
**I want** to use my AD account to login Apps Manager
**So that** all users/access levels can be managed centrally

**Acceptance Criteria**
```gherkin
Scenario: 
Given the app manager
When I use my AD account user/pass
Then I am authenticated and can access apps manager
```

---

Integrate OpsManager Auth with an IdP (e.g. LDAP) using Automation

**As a Platform Engineer**  
**I want** to automate the process of integrating OpsManager with my LDAP provider  
**So that** I can login using my AD account in every new instances of Ops Manager

**Acceptance Criteria**
```gherkin
Given A new Ops Manager
When I run my automation pipeline
Then OpsManager is integrated with LDAP and I can login using my AD account
```