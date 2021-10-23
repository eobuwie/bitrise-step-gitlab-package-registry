#!/bin/bash
set -ex

URL=${api_base_url}/projects/${path}/packages/${type}/${name}/${version}/${name}.zip

curl --user "user:${token}" --upload-file ${input_dir}/${name}.zip ${URL}

envman add --key ARTIFACT_URL --value "$URL"
