#!/bin/bash

sudo ansible-playbook ~/myexam-playbooks/myexam.yaml -i ~/myexam-playbooks/inventory --extra-vars "proj_env=dev" &&
(cd ~/myexam && exec ~/gems/bin/bundle exec ~/gems/bin/jekyll build)
