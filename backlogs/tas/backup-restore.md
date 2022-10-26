(Spike) Determine the storage for backup files

To do:
- Determine the storage for backup files
- Determine the retention period for backups
- Determine organizational policies around backups 
  
L: backup & restore

---

Set up BBR to back up the platform on a regular schedule

**As a Platform Engineer**  
**I want** BBR to back up the '---' platform on an automated schedule
**So that** backups happen automatically


### Acceptance Criteria
```gherkin
BBR is configured to automatically backup the '---' foundation (OPS MAN, TAS, and BOSH Director)
BBR automatically backs up the '---' foundation per that schedule 
```

L: backup & restore

---

Set up manual backup of the platform using BBR

**As a Platform Engineer**
**I want** to make a manual backup of my platform using BBR
**So that** I restore in case I want to revert back to a good known state

### Acceptance Criteria
```gherkin
Scenario: 
Given a TAS foundation
When I delete my TAS foundation
Then I can restore from my BBR backup
```

**Notes:**

L: backup & restore

---

Test the restore of the platform from BBR backup

**As a Platform Engineer**  
**I want** to test the restore from a BBR backup  
**So that** I have confidence in my backup files and the process

L: backup & restore

---

Validate Tanzu SQL databases restore from backups

**As a Platform Engineer**  
**I want** to validate my Tanzu SQL backups are complete and usable   
**So that** we have confidence that our restore process works

### Acceptance Criteria
```gherkin
When Backups are created on the defined schedule
Then Tile functionality can be restored by restoring from these backups
```

L: backup & restore, Data services