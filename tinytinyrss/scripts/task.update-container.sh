#!/bin/bash
set -e
set -x

SCRIPT_PATH=$(dirname "$0")

pushd ${SCRIPT_PATH}
    bash ./task.build-application.sh
    docker stop ttrssapp
    docker rename ttrssapp ttrssapp-backup
    bash ./task.run.sh
popd