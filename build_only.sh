#!/bin/bash

ARG1=${1:-~/myexam} # default jekyll project root dir

# build jekyll site
(cd "$ARG1" && exec ~/gems/bin/bundle exec ~/gems/bin/jekyll build)
