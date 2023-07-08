#!/usr/bin/env bash
set -euo pipefail

STARTTIME=$(date +%s)
AGENCIES=("dc" "de" "ef" "fd" "nd" "or" "pa" "sc" "va")
for i in "${AGENCIES[@]}"
do
	bash ./p2j.one.sh $i form "Expected: NO Exception, All Parsed OK"
done

ENDTIME=$(date +%s)
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to process all PDFs ..."
