#!/bin/bash

if [[ $# != 1 ]]; then
  echo "Usage _gen/gen.sh <carto dir>"
  exit 1
fi

dir=$1
apiFile=$(dirname $0)'/../api.md'

echo '---
title: API Reference
subtitle: >-
  Documentation for each available function
layout: page
---

<style>
.post-content li p {
  margin: 0;
}

.post-content > p {
  font-size: 85%;
}
</style>

' > "$apiFile"

for path in "$dir"/*.m; do 
  file=$(basename "$path")
  name=`echo "$file" | cut -d'.' -f1`

  funcLine=`grep -m 1 "^func" "$path"`
  if [[ -z "$funcLine" ]]; then continue; fi

  line=${funcLine#"function"}
  IFS='='; parts=($line); unset IFS;
  out=`echo ${parts[0]} | sed 's/[][]//g'`

  if [[ -z "${parts[1]}" ]]; then # no output parameters
    out=""
    parts[1]=${parts[0]}
  fi

  IFS='('; parts2=(${parts[1]}); unset IFS;
  name=${parts2[0]}
  in=`echo ${parts2[1]} | sed 's/[\(\)]//g'`

  printf "\n## %s\n\n" "$name" >> "$apiFile"
  IFS=','
  printf '* in\n' >> "$apiFile"
  for var in $in; do
    printf '  * %s\n' "$var" >> "$apiFile"
  done
  printf '\n* out\n' >> "$apiFile"
  for var in "$out"; do
    printf '  * %s\n' "$var" >> "$apiFile"
  done
  unset IFS
  
  IFS=$'\n'
  printf "\n\n" >> "$apiFile"
  content=`cat "$path" | sed '/function/,/% Author/!d;//d'` #^$/'`
  for line in $content ; do
    plain=${line#"%"}
    printf '%s  \n' "$plain" >> "$apiFile"
  done
  printf "\n" >> "$apiFile"
  unset IFS
 
  funcLine=`grep -m 1 "^% Author:" "$path"`
  author=${funcLine#"% Author:"}
  printf "**Author** %s\n" "$author" >> "$apiFile"
done
