#!/bin/bash
#
# oem at oemden dot com - Munki Conditions // install Check Script
## snippets borrowed from DeployStudio script modified by oem

## AD or not ??

IS_BOUND=`dsconfigad -show | grep "Active Directory Domain"`
if [[ -n "${IS_BOUND}" ]] ;
then
  ## Host is binded - do not install
  echo "Host is binded to AD" 2>&1
  exit 1
else
  ## Host is NOT binded - do install
  echo "Host is not binded to AD" 2>&1
  exit 0
fi

