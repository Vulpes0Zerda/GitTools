#!/bin/bash
function f () {
  COMMIT_MESSAGE=""
  REMOTE_NAME=""
  BRANCH_NAME=""
  if [[ ! "$1" == -* ]]
  then
    if [[ -z "$2" || "$2" == -* ]]
    then
    echo "Please enter both remote and branch if specifying them."
    exit 1
    fi
    REMOTE_NAME="$1"
    BRANCH_NAME="$2"
    shift 2
  fi

  while getopts 'm:' flag; do
    case "${flag}" in
      m)
        COMMIT_MESSAGE="${OPTARG}"
        echo "Tried to set COMMIT_MESSAGE";;
      *)
        echo "${flag} is not a valid flag." 
        exit 1;;
    esac
  done

  if [ -z "$COMMIT_MESSAGE" ]
  then
    git add -A && git commit
  else
    git add -A && git commit -m "$COMMIT_MESSAGE"
  fi
  if [ -z "$REMOTE_NAME" ] && [ -z "$BRANCH_NAME" ]
  then
    git push
  else
    git push "$REMOTE_NAME" "$BRANCH_NAME"
  fi

}

f "$@"
