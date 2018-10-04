#!/bin/bash

#first source environment
. studyathome/.studyathome-env

#Stop all containers
export MOODLE_PREFIX="${MOODLE_PREFIX_UNI_STUDYATHOME_HUB}"
export MOODLE_DOCKER_WEB_PORT="${MOODLE_DOCKER_WEB_PORT_UNI_STUDYATHOME_HUB}"
export COMPOSE_PROJECT_NAME="${MOODLE_PREFIX}"
bin/moodle-docker-compose down

export MOODLE_PREFIX="${MOODLE_PREFIX_UNI_A}"
export MOODLE_DOCKER_WEB_PORT="${MOODLE_DOCKER_WEB_PORT_UNI_A}"
export COMPOSE_PROJECT_NAME="${MOODLE_PREFIX}"
bin/moodle-docker-compose down

export MOODLE_PREFIX="${MOODLE_PREFIX_UNI_B}"
export MOODLE_DOCKER_WEB_PORT="${MOODLE_DOCKER_WEB_PORT_UNI_B}"
export COMPOSE_PROJECT_NAME="${MOODLE_PREFIX}"
bin/moodle-docker-compose down

export MOODLE_PREFIX="${MOODLE_PREFIX_UNI_C}"
export MOODLE_DOCKER_WEB_PORT="${MOODLE_DOCKER_WEB_PORT_UNI_C}"
export COMPOSE_PROJECT_NAME="${MOODLE_PREFIX}"
bin/moodle-docker-compose down