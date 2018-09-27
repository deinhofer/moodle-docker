#!/bin/bash

export MOODLE_DOCKER_WWWROOT="$(pwd)/../moodle"
export MOODLE_DOCKER_DB="pgsql"
export MOODLE_DOCKER_DBPREFIX="UniA_m_"
export MOODLE_DOCKER_DB_VOLUME="$(pwd)/studyathome/db-volume"
export MOODLE_DOCKER_DATAROOT="$(pwd)/studyathome/UniA/moodledata"

# Ensure customized config.php for the Docker containers is in place
cp config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php

# Start up containers
bin/moodle-docker-compose up -d