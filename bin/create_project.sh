#!/usr/bin/env bash

# This script will create a new tracker backlog and import epics and stories based on user input.

TRACKER_URL='https://www.pivotaltracker.com/services/v5'

if [ -z $TRACKER_TOKEN ]; then
  echo "Please export TRACKER_TOKEN"
  exit;
fi

function create_tracker() {
  
  local NAME=$1

  new_project=$(curl -s -X POST -H "X-TrackerToken: $TRACKER_TOKEN" -H \
    		"Content-Type: application/json" \
    		-d '{"name":"'"$NAME"'","iteration_length":4,"automatic_planning":false}' \
    		"$TRACKER_URL/projects")

  id=$(echo $new_project |jq -r '.id')

  # Make sure we got a PID back.
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
  local PID=$(create_tracker "$TRACKER_NAME")
  >&2 echo "Created new project https://www.pivotaltracker.com/n/projects/$PID"
  sleep 3
  echo "$PID"
}

function add_stories() {

  local story_file=$1
  local PID=$2
  prolific $story_file | prolific-importer ${TRACKER_TOKEN} ${PID}
}

function list_backlogs() {

  local PID=$1

  for dir in $(ls -1 backlogs); do

    # Skip directories called tas or sre (for now)
    if [ "$dir" == "tas" ] || [ $dir == 'sre' ]; then
      continue
    fi

    for backlog in backlogs/$dir/*.md; do
      echo "$backlog"
    done
  done
  read -p "Paste backlog name followed by a space: " -a MDFILES

  # Create a temp file
  TMPFILE=$(mktemp)
  for mdfile in ${MDFILES[@]}; do
    cat $mdfile >> $TMPFILE
  done

  add_stories "$TMPFILE" "$PID"
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
  PID=$(new_tracker)
  list_backlogs $PID
else
  usage
fi


