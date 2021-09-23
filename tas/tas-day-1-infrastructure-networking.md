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

[feature] Manage multiple foundations by setting up a control plane

**AS A** Platform engineer
**I NEED** set up a control plane
**SO THAT** I can manage multiple foundations

**AC:**
 - OpsMgr from the control plane is accessible

L: infrastructure & networking

---

[feature] Validate the TAS deploy readiness

Test the following items:
- DNS
- Network routing
- Firewalls
- Certs
- IaaS layer

L: infrastructure & networking

---

[feature] Set system-wide proxy on Jumpbox

**AS A** Platform Engineer
**I NEED** the Jumpbox to send traffic through the proxy
**SO THAT** I can properly access the internet

**AC:**
 - Jumpbox user can access internet
 - Root user can access internet
 - Sudo command can access internet

**Notes:**

L: infrastructure & networking

---

[feature] Validate the NTP configuration

In order to ensure that the foundation will function properly and that time is continuously synchronized throughout the system,
Platform Engineering must validate the NTP configuration.

**Acceptance Criteria**
On the booted an OpsMan VM,


**Detail**
The bedrock assumption of inter-networked compute is that time is synchronized with everyone's watch is synchronized to the same time.  NTP is that protocol that ensures that shared understanding of the current time.  NTP issues are insidious and maddening if they are allowed to creep up.  Over a period of time as short as four days or less the various VMs and servers that make up Cloud Foundry may start to drift away from a common time.  Without a common understanding of _now_, and with these component clocks ticking away independently.  The system will begin to experience issues in the cadence of communication so crucial to making servers collaborate well.  NTP drift will cause any of a number of issues, many unpredictable with error messages that do not convey that there is not agreement on the correct time among peers.  For instance, a MySQL Galera cluster out of sync by a whooping 4 seconds will begin to fail miserably and provide zero insight that the issue is related to NTP.  This is because most software takes for granted that it is operating in the correct _now_.

_Note:_
There are two commands that can help you find NTP current state quickly and reliably.

ntpq – standard NTP query program
ntpstat – show network time synchronisation status

L: infrastructure & networking

---

[feature] Create a jumpbox

**AS A/AN** Platform Engineer
**I NEED** a jumpbox 
**SO THAT** I can speed up operation activities securely

**AC:**
 - Ubuntu server built and accessible in '---' vcenter with internet access.

L: infrastructure & networking

---

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

