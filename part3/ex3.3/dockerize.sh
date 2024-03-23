#!/bin/bash

USER_REPO="$1"
USER_HUB="$2"

repo_name="${USER_REPO##*/}"

git clone "https://github.com/${USER_REPO}.git"
cd "${repo_name}" || exit 1

docker build -t "${USER_HUB}" . 
docker push "${USER_HUB}"



