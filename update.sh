#!/bin/bash

rm -rf */

releases=(`./kerl list releases | head -1`)
for rel in "${releases[@]}"
do
    mkdir "${rel}"
    sed "s/%%ERLANG_VSN%%/${rel}/g" Dockerfile.template > "${rel}/Dockerfile"
done

echo "Written ${#releases[@]} Dockerfiles"
