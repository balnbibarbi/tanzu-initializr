Discover observability strategy and toolset for the platform

**As a Platform Engineer**  
**I want** to understand the best strategy and the toolset for platform observability  
**So that** I can offer the best solution to my users

L: platform observability

---

Install Platform Monitoring solution

**As an Platform Engineer**  
**I want** to integrate my platform with a monitoring/logging solutions   
**So that** it can see metrics and monitor the platform  

L: platform observability

---

Install Healthwatch 

**As a Platform Engineer**
**I want** to install Healthwatch in '-----' Environment
**So that** I can monitor the health of the platform

### Acceptance Criteria: 
```gherkin
- The Healthwatch app is in the system space
- Healthwatch is accessible through the web UI
```

L: platform observability

---

Key Performance Indicators for platform health

**As A Platform Engineer**  
**I want** to know what Key Performance Indicators (KPIs) I want to monitor in the platform  
**So that** I can ensure the platform is in a good operational state


**Notes:**
https://docs.pivotal.io/platform/monitoring/kpi.html

L: platform observability, metrics

---

(Spike) Where to send platform alerts to

What mailbox are alerts being sent to
Should we integrate with a ticketing system
Do we want to receive alerts on a paging/mobile device

L: platform observability, alerts

---

Set up Alerting for the platform

**As A Platform Engineer**  
**I want** set up alerts for the platform  
**So that** I can be notified when an issue occurs 

**Notes:**
Docs: 
- https://docs.pivotal.io/healthwatch/2-1/configuring/optional-config/alerting.html


### Acceptance Criteria: 
```gherkin
When Bosh Director is down
Then Receive an email alert
```

L: platform observability

---

Install Telemetry tile

**As a Platform Engineer**    
**I want** to receive weekly reports on key indicators of my platform health  
**So that** I can ensure the platform is maintained consistently across foundations with respect to product versions, certificates, configurations, and more  

**Notes:**
- Registration is required with the Telemetry team (to configure the tile)

L: platform observability
