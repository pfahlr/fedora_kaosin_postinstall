#!/usr/bin/bash
IFS=$'\n'
incode=false

get_sourced_script_fullpath() {
  line=$1
  path=`pwd`
  sub_script=$(echo ${line/source/} | xargs)
  sub_script="$path/$sub_script"
  echo $sub_script
}

get_lineprefix() {
  if [[ $1 == "code"  &&  $incode == true ]]; then
    incode=true
  elif [[ $1 == "code" &&  $incode == false ]]; then
    incode=true
    #echo "\`\`\`"
  elif [[ $1 == "comment"  &&  $incode == true ]]; then
    incode=false
    #echo "\`\`\`"
  elif [[ $1 == "comment"  &&  $incode == false ]]; then
    incode=false
  fi
}


for line in `cat $1`
  do
    if [[ $line == *"source "* ]]; then
      path=`pwd`
      echo "# source of included script: (echo ${line/source/} | xargs)"
      sub_script=$(get_sourced_script_fullpath $line)
      cat $sub_script   
      echo "# /end source of included script"
    elif [[ $line == \#* ]]; then
      echo "${line/\#/}"
      echo $(get_lineprefix 'comment')
    elif [[ "$line" =~ ^[[:space:]]*$ ]]; then
      echo "\n"
    else
      echo $(get_lineprefix 'code')
      echo $line
    fi
  done
