#!/bin/bash

export MOODLE_DOCKER_WWWROOT="$(pwd)/../moodle"
export MOODLE_DOCKER_DB="pgsql"
export MOODLE_DOCKER_DBPREFIX="UniA_m_"
export MOODLE_DOCKER_DB_VOLUME="$(pwd)/studyathome/db-volume"
export MOODLE_DOCKER_DATAROOT="$(pwd)/studyathome/UniA/moodledata"


# Start up containers
bin/moodle-docker-compose down