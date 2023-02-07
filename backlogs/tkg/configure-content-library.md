Need to configure Content Library

### Why
1. Need Content Library configured to get access to certified TKG images to deploy cluster and related components

**As vSphere administrator**
**I want **  to configure Content Library
**So that **  TKG can pull images during install and upgrades

### Acceptance Criteria

```gherkin
Scenario:  Needs  to configure Content Library
Given vSphere is available
When Need to install or upgrade TKG
Then  Configure Content Library
```

**Notes:**
