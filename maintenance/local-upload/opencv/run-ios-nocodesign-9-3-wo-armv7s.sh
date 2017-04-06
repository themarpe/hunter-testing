#!/bin/bash -e

set -x

[ "${GITHUB_USER_PASSWORD}" = "" ] && { echo "GITHUB_USER_PASSWORD is not set"; exit 1; }

export GITHUB_USER_PASSWORD

THIS_SCRIPT_DIR=`dirname "${BASH_SOURCE[0]}"`

cd "${THIS_SCRIPT_DIR}/../../.."

# {
export TOOLCHAIN=ios-nocodesign-9-3-wo-armv7s
PROJECT_DIR=examples/OpenCV ./jenkins.py --verbose --upload --clear-except-download
# }
