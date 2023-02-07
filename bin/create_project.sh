#!/usr/bin/env bash

set -e

# This script will create a new tracker backlog and import epics and stories based on user input.

TRACKER_URL='https://www.pivotaltracker.com/services/v5'

if [ -z $TRACKER_TOKEN ]; then
  echo "Please export TRACKER_TOKEN"
  exit;
fi

bindir=$(dirname $(readlink -f "$0"))

gopath=$(go env|fgrep GOPATH|sed -r -e 's/^GOPATH="//g'|sed -r -e 's/"$//g')

all_prolific_paths="\
/usr/local/bin/prolific
$HOME/go/bin/prolific
${gopath}/bin/prolific
"

if which prolific >/dev/null 2>&1 ; then
	prolific=$(which prolific)
else
	prolific=""
	for prolific_path in $all_prolific_paths ; do
		if test -x "$prolific_path" ; then
			prolific="$prolific_path"
			break
		fi
	done
fi

if test -z "$prolific" ; then
	echo "Prolific not found (looked in $all_prolific_paths)" 1>&2
	exit 1
fi

all_prolific_importer_paths="\
/usr/local/bin/prolific-importer
$HOME/go/bin/prolific-importer
${gopath}/bin/prolific-importer
"

if which prolific-importer >/dev/null 2>&1 ; then
	prolific_importer=$(which prolific_importer)
else
	prolific_importer=""
	for prolific_importer_path in $all_prolific_importer_paths ; do
		if test -x "$prolific_importer_path" ; then
			prolific_importer="$prolific_importer_path"
			break
		fi
	done
fi

if test -z "$prolific_importer" ; then
	echo "Prolific-importer not found (looked in $all_prolific_importer_paths)" 1>&2
	exit 1
fi

function create_tracker() {
  
  local NAME=$1

  new_project=$(curl -s -X POST -H "X-TrackerToken: $TRACKER_TOKEN" -H \
    		"Content-Type: application/json" \
    		-d '{"name":"'"$NAME"'","iteration_length":4,"automatic_planning":false}' \
    		"$TRACKER_URL/projects")

  id=$(echo $new_project |jq -r '.id')

  # Make sure we got a project ID back.
  echo $id | grep -Eq '^[0-9]{7}$'
  if [ $? -ne 0 ]; then
    echo "$new_project" | jq > error.log
    >&2 echo "Error creating new project."
    >&2 jq . error.log
    exit 127
  fi

  echo $id
}

function usage() {

  echo
  echo "$0: 
    --new       Create a new Tracker"
  echo
  exit 0
}

function new_tracker() {

  read -p 'New Tracker project name: ' TRACKER_NAME
  # Replace any spaces with a dash for the project name.
  TRACKER_NAME=${TRACKER_NAME// /-}
  local PROJECT_ID=$(create_tracker "$TRACKER_NAME")
  >&2 echo "Created new project https://www.pivotaltracker.com/n/projects/$PROJECT_ID"
  sleep 3
  echo "$PROJECT_ID"
}

function add_stories() {

  local story_file=$1
  local PROJECT_ID=$2
  "${prolific}" $story_file | "${prolific_importer}" "${TRACKER_TOKEN}" "${PROJECT_ID}"
}

backlog_dir="${bindir}/../backlogs"
categories=$(cd "${backlog_dir}" && ls -1)

function list_backlogs() {

  local PROJECT_ID=$1

  echo "Here are the available backlog items:"

  for dir in $categories; do

    # Skip directories called tas or sre (for now)
    if [ "$dir" == "tas" ] || [ $dir == 'sre' ]; then
      continue
    fi

    echo "---------"
    echo "Category: $dir"
    echo "---------"
    (
      cd "${backlog_dir}"
      for backlog in "${dir}"/*.md; do
        echo "$backlog"
      done
    )
    echo
  done
  read -p "Please enter a list of the above categories and/or individual stories, separated by spaces: " -a MDFILES

  # Create a temp file
  TMPFILE=$(mktemp)
  for mdfile in ${MDFILES[@]}; do
    if test -d "${backlog_dir}/${mdfile}" ; then
      for backlog in "${backlog_dir}/${mdfile}"/*.md ; do
        cat "${backlog}" >> $TMPFILE
      done
    else
      cat "${backlog_dir}/${mdfile}" >> $TMPFILE
    fi
  done

  add_stories "$TMPFILE" "$PROJECT_ID"
  rm $TMPFILE
}

while [[ $# -gt 0 ]]; do
  key="$1"

  case $key in
      -n|--new)
        NEW='yes'
        shift 
      ;;
  esac
done

if [ ! -z "$NEW" ]; then
  # Create a new project
  PROJECT_ID=$(new_tracker)
  list_backlogs $PROJECT_ID
else
  usage
fi


