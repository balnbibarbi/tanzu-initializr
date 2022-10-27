
# Tanzu Initializr

Tanzu Initializr is a library of canned backlogs for modern application platforms such as [TKO](), [TAP](https://tanzu.vmware.com/application-platform), and [TAS]()

The aspirations for this initiative are:	
- Expedite and automate the process of backlog creation for platform teams
- Achieve consistency across VMware Tanzu Labs delivery teams, partners and Tanzu customers

## Prerequisites

Install [Prolific](https://github.com/onsi/prolific#installation) and [Prolific-Importer](https://github.com/sneal/prolific-importer#installation) via the Github releases tab, or with Go 1.16+:

```bash
  go install github.com/onsi/prolific@latest
  go install github.com/sneal/prolific-importer@latest
```

## To create a new Tracker project and import a canned backlog 

```bash
  $ export TRACKER_TOKEN='<your-tracker-token>'

  $ cd bin/

  $ ./create_backlog.sh --new
```
### How the script works
The user stories in this repo are formatted in markdown to work with [Prolific](https://github.com/onsi/prolific). The Prolific tool converts each markdown to a to CSV file. The CSV file are then imported into a Pivotal Tracker project via [Prolific-Importer](https://github.com/sneal/prolific-importer#installation).

```bash
  #Convert to CSV
  prolific path/to/stories.md > path/to/stories.csv
   
  #import to Tracker
  prolific-importer [API_TOKEN] [PROJECT_ID] path/to/stories.csv
 
  #Or simply combine both commands
  prolific path/to/stories.prolific | prolific-importer [API_TOKEN] [PROJECT_ID]
```
