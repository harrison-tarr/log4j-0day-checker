#!/bin/bash

#clone_and_check () {
  # Set comma as delimiter
  IFS=/

  #Read the split words into an array based on comma delimiter
  read -a strarr <<< "$1"
  # echo ${strarr[@]}
  repoName=${strarr[4]}
  echo "$repoName"
  git clone git@github.com:$2/$repoName.git -q
  cd $repoName
  mvn dependency:tree | grep -i log4j
  cd ../
#}
 
#while IFS= read -r line; do
#  clone_and_check $line $2
#done < $1
