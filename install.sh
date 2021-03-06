#!/usr/bin/env bash

set -e

CONFIG=".install.conf.yaml"
DOTBOT_DIR=".dotbot"

DOTBOT_BIN="bin/dotbot"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "${BASEDIR}"
git submodule update --init --recursive
git -C "${DOTBOT_DIR}" submodule sync --quiet --recursive

"${BASEDIR}/${DOTBOT_DIR}/${DOTBOT_BIN}" -d "${BASEDIR}" -c "${CONFIG}" "${@}"