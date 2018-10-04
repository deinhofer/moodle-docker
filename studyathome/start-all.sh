#!/bin/bash

#first source environment
. studyathome/.studyathome-env

if [ "$1" == "-c" ] ; then
    echo "Cleaning up old volumes at ${STUDYATHOME_BASEDIR}"
    sudo rm -Rvf "${STUDYATHOME_BASEDIR}/"
fi

if [ ! -d "${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_STUDYATHOME_HUB}/moodledata" ] ; then
    echo "Creating directory for moodle data at ${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_STUDYATHOME_HUB}/moodledata"
    mkdir -p ${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_STUDYATHOME_HUB}/moodledata
    chmod -R 777 ${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_STUDYATHOME_HUB}/moodledata
fi

if [ ! -d "${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_A}/moodledata" ] ; then
    echo "Creating directory for moodle data at ${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_A}/moodledata"
    mkdir -p ${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_A}/moodledata
    chmod -R 777 ${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_A}/moodledata
fi

if [ ! -d "${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_B}/moodledata" ] ; then
    echo "Creating directory for moodle data at ${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_B}/moodledata"
    mkdir -p ${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_B}/moodledata
    chmod -R 777 ${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_B}/moodledata
fi

if [ ! -d "${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_C}/moodledata" ] ; then
    echo "Creating directory for moodle data at ${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_C}/moodledata"
    mkdir -p ${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_C}/moodledata
    chmod -R 777 ${STUDYATHOME_BASEDIR}/${MOODLE_PREFIX_UNI_C}/moodledata
fi
# Ensure customized config.php for the Docker containers is in place
cp config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php

# Start up containers
export MOODLE_PREFIX="${MOODLE_PREFIX_UNI_STUDYATHOME_HUB}"
export MOODLE_DOCKER_WEB_PORT="${MOODLE_DOCKER_WEB_PORT_UNI_STUDYATHOME_HUB}"
export COMPOSE_PROJECT_NAME="${MOODLE_PREFIX}"
bin/moodle-docker-compose up -d

export MOODLE_PREFIX="${MOODLE_PREFIX_UNI_A}"
export MOODLE_DOCKER_WEB_PORT="${MOODLE_DOCKER_WEB_PORT_UNI_A}"
export COMPOSE_PROJECT_NAME="${MOODLE_PREFIX}"
bin/moodle-docker-compose up -d

export MOODLE_PREFIX="${MOODLE_PREFIX_UNI_B}"
export MOODLE_DOCKER_WEB_PORT="${MOODLE_DOCKER_WEB_PORT_UNI_B}"
export COMPOSE_PROJECT_NAME="${MOODLE_PREFIX}"
bin/moodle-docker-compose up -d

export MOODLE_PREFIX="${MOODLE_PREFIX_UNI_C}"
export MOODLE_DOCKER_WEB_PORT="${MOODLE_DOCKER_WEB_PORT_UNI_C}"
export COMPOSE_PROJECT_NAME="${MOODLE_PREFIX}"
bin/moodle-docker-compose up -d