#!/bin/sh

if [[ -z ${INPUT_USER_TOKEN} ]]; then
  echo "[ERROR] The user token must not be empty!"
  exit 1
fi

${INPUT_COMMAND} --token "${INPUT_USER_TOKEN}"