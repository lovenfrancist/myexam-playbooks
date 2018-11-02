#!/bin/bash

ARG1=${1:-dev} # 'dev' (default) OR 'staging'
ARG2=${2:-~/myexam} # default jekyll project root dir
ARG3=${3:-jekyll_project_path="$ARG2"} # extra vars for ansible playbook param

# echo "$ARG1"
# echo "$ARG2"
# echo "$ARG3"

# run ansible playbook
sudo ansible-playbook myexam.yaml -i inventory --extra-vars "proj_env='$ARG1'"

# build jekyll site
(cd "$ARG2" && exec ~/gems/bin/bundle exec ~/gems/bin/jekyll build)
