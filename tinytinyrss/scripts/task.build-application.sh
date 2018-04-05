#!/bin/bash
set -e
set -x

SCRIPT_PATH=$(dirname "$0")

TTRSS_VERSION_HASH="963c22646b"
TTRSS_VERSION_DATE="2018-04-03"
IMAGE_TAG="${TTRSS_VERSION_DATE}-${TTRSS_VERSION_HASH}"

pushd ${SCRIPT_PATH}/../build_application
docker build \
    --build-arg "TTRSS_VERSION=${TTRSS_VERSION_HASH}" \
    --tag "erdnussflips/tinytinyrss:${IMAGE_TAG}" \
    --tag erdnussflips/tinytinyrss:latest \
    .
popd