[chore] Prepare IaaS for TAS Installation

Have the creds ready for the IaaS  
Pave infra for Isolation segments for TAS

https://docs.pivotal.io/platform/2-10/plan/index.html

AWS-specific steps:
 Before installing Ops Manager, basic IaaS paving must occur, including (for AWS):
 - S3 buckets
 - RDS instance
 - VPCs
 - Security Groups
 - Load Balancers

L: infrastructure & networking

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

Manage multiple foundations by setting up a control plane

**As a Platform Engineer**
**I want** set up a control plane
**So that** I can manage multiple foundations

### Acceptance Criteria: 
```gherkin
OpsMgr from the control plane is accessible
```

L: infrastructure & networking

---

[chore] Validate the TAS deploy readiness

Test the following items:
- DNS
- Network routing
- Firewalls
- Certs
- IaaS layer

L: infrastructure & networking

---

Set system-wide proxy on Jumpbox

**As a Platform Engineer**
**I want** the Jumpbox to send traffic through the proxy
**So that** I can properly access the internet

### Acceptance Criteria: 
```gherkin
- Jumpbox user can access internet
- Root user can access internet
- Sudo command can access internet
 ```


L: infrastructure & networking

---

[chore] Validate the NTP configuration

In order to ensure that the foundation will function properly and that time is continuously synchronized throughout the system,
Platform Engineering must validate the NTP configuration.


**Detail**
The bedrock assumption of inter-networked compute is that time is synchronized with everyone's watch is synchronized to the same time.  NTP is that protocol that ensures that shared understanding of the current time.  NTP issues are insidious and maddening if they are allowed to creep up.  Over a period of time as short as four days or less the various VMs and servers that make up Cloud Foundry may start to drift away from a common time.  Without a common understanding of _now_, and with these component clocks ticking away independently.  The system will begin to experience issues in the cadence of communication so crucial to making servers collaborate well.  NTP drift will cause any of a number of issues, many unpredictable with error messages that do not convey that there is not agreement on the correct time among peers.  For instance, a MySQL Galera cluster out of sync by a whooping 4 seconds will begin to fail miserably and provide zero insight that the issue is related to NTP.  This is because most software takes for granted that it is operating in the correct _now_.

There are two commands that can help you find NTP current state quickly and reliably.

`ntpq` – standard NTP query program  
`ntpstat` – show network time synchronization status

L: infrastructure & networking

---

Create a jumpbox

**As a Platform Engineer**
**I want** a jumpbox 
**So that** I can speed up operation activities securely

### Acceptance Criteria: 
```gherkin
 - Ubuntu server built and accessible in '---' vcenter with internet access.
```

L: infrastructure & networking

---

Configure jumpbox to use direnv

**As Platform Engineer**  
**I want** my environment config to be automatic when I change directories in the jumpbox  
**So that** it is easier and less error prone to change foundations

### Acceptance Criteria: 
```gherkin
Scenario:
Given separate environments in the jumpbox
When we need to switch between environments
Then we can simply cd into a directory to enable the desired environment config
```

L: infrastructure & networking, jumpbox

---

