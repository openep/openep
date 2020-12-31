#!/bin/bash

if [[ $# != 1 ]]; then
  echo "Usage _gen/gen.sh <openep dir>"
  exit 1
fi

function trim() {
  local trimmed=`echo $1 | sed -e 's/^[[:space:]]*//' | sed -e 's/[[:space:]]*$//' | sed '/./,$!d'`
  echo -n "$trimmed"  # Output trimmed string.
}

dir=$1
apiFile=$(dirname $0)'/../api.md'

echo '---
title: API Reference
subtitle: >-
  Documentation for each available function
layout: page
---

<style>
.post-content p {
  margin: 0;
}

.post-content {
  font-size: 90%;
}

.post-content h2 {
  padding-top: 85pt;
  margin-top: -85pt;
}

pre.highlight {
  padding: 5pt;
  font-size: 90%;
}

td>p {
  margin: 0;
}

td {
  padding: 0;
}

pre.highlight {
  padding: 5pt;
  font-size: 90%;
}

td>p {
  margin: 0;
}

td {
  padding: 0;//
}

.apilinks {
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  flex-wrap: wrap;
  margin: 0 -0.83333em 1.66667em;
}

.apilinks div {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex: 0 0 33.333%;
  -ms-flex: 0 0 33.333%;
  flex: 0 0 33.333%;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
}

.apilinks a {
  width: max-content;
}
</style>

<div class="apilinks">

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
  name=$(trim ${parts2[0]})
  href=$(echo "$name" | awk '{print tolower($0)}')
  printf "<div class=\"apilink\"><a href=\"#%s\">%s</a></div>\n" "$href" "$name" >> "$apiFile"
done

echo '</div>
' >> "$apiFile"

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
  name=$(trim ${parts2[0]})
  in=`echo ${parts2[1]} | sed 's/[\(\)]//g'`

  printf "\n\n" >> "$apiFile"
  content=`cat "$path" | sed '0,/^function/d;/^% Author/,$d;1d'`

  IFS=$'\n'
  lines=""
  for line in $content; do
    lines=$lines${line#"%"}"<br/>"
  done
  unset IFS

  printf "\n## %s\n\n" "$name" >> "$apiFile"
  IFS=""
  info="$(echo $lines | awk -F'Usage:' '{print $1}')"
  info=`echo "$info" | sed $'s/<br\/>/\\\\\\n/g'`
  content="$(echo $lines | awk -F'Usage:' '{print $2}')"

  usage="$(echo $content | awk -F'Where:' '{print $1}')"
  usage=`echo "$usage" | sed $'s/<br\/>/\\\\\n/g'`
  c2="$(echo $content | awk -F'Where:' '{print $2}')"

  printf "%s\n\n" "$info" >> "$apiFile"
  printf "#### Usage\n" >> "$apiFile"
  printf "\`\`\`m\n%s\n\`\`\`\n\n" "$(trim $usage)" >> "$apiFile"

  info="$(echo $c2 | awk -F'<br/><br/>' '{print $1}')"
  info=`echo "$info" | sed $'s/<br\/>/\\\\\n/g'`

  printf "#### Parameters\n" >> "$apiFile"

  IFS=$'\n'
  delimiter=" - "

  for line in $info; do
    s=$line$delimiter
    parts=();
    while [[ $s ]]; do
      parts+=( "${s%%"$delimiter"*}" );
      s=${s#*"$delimiter"};
    done;

    if [[ -z "${parts[1]}" ]]; then # not a parameter line
      printf '&nbsp;&nbsp;&nbsp;&nbsp;%s  \n' ${parts[0]} >> "$apiFile"
    else
      printf '\n**%s**  \n&nbsp;&nbsp;&nbsp;&nbsp;%s  \n' $(trim ${parts[0]}) ${parts[1]} >> "$apiFile"
    fi
  done

  info=""
  c2="$(trim $(echo $content | awk -F'accepts the following parameter-value pairs' '{print $2}'))"
  if [[ ! -z "$c2" ]]; then 
    info="$(echo $c2 | awk -F'<br/><br/>' '{print $1}')"
    info=`echo "$info" | sed $'s/<br\/>/\\\\\n/g'`
    content="$(echo $c2 | awk -F'<br/><br/>' '{print $2}')"
  else
    content="$(echo $content | awk -F'<br/><br/>' '{print $2}')"
  fi
  content=`echo "$content" | sed $'s/<br\/>/\\\\\n/g'`

  if [[ ! -z "$info" ]]; then
    printf "\n#### Parameter Value Pairs\n" >> "$apiFile"

    for l in $info; do
	  line=`echo $(trim $l) | sed -e 's_|_\\\|_g'`
	  if [[ $line == "'"* ]]; then 
		  printf '\n**%s**  \n' $line >> "$apiFile"
	  else
		  printf '&nbsp;&nbsp;&nbsp;&nbsp;%s  \n' $line >> "$apiFile"
	  fi
    done
  fi
  unset IFS

  printf "\n\n#### Description\n" >> "$apiFile"
  printf "%s\n\n" "$content" >> "$apiFile"

  line=`grep -m 1 "^% Author:" "$path"`
  author=${line#"% Author:"}
  printf "**Author** %s\n\n---" "$author" >> "$apiFile"
done
