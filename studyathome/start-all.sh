#!/bin/bash

export STUDYATHOME_BASEDIR="/home/mad/studyathome"
export MOODLE_PREFIX="unia_"

export MOODLE_DOCKER_WWWROOT="$(pwd)/../moodle"
export MOODLE_DOCKER_DB="pgsql"
export MOODLE_DOCKER_DBPREFIX="${MOODLE_PREFIX}m_"
export MOODLE_DOCKER_DB_VOLUME="${STUDYATHOME_BASEDIR}/db-volume"
export MOODLE_DOCKER_DATAROOT="${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX}/moodledata"

if [ "$1" == "-c" ] ; then
    echo "Cleaning up old volumes at ${STUDYATHOME_BASEDIR}"
    sudo rm -Rvf "${STUDYATHOME_BASEDIR}/"
fi

if [ ! -d ${MOODLE_DOCKER_DATAROOT} ] ; then
    echo "Creating directory for moodle data at ${MOODLE_DOCKER_DATAROOT}"
    mkdir -p ${MOODLE_DOCKER_DATAROOT}
    chmod -R 777 ${MOODLE_DOCKER_DATAROOT}
fi

# Ensure customized config.php for the Docker containers is in place
cp config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php

# Start up containers
bin/moodle-docker-compose up -d