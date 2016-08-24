#!/bin/bash

/docker-entrypoint.sh rails server -b 0.0.0.0 &
sleep 50
cd /usr/src/redmine
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
