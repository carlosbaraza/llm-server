#!/usr/bin/env bash

# ---------------------------------------------------------------
# Description: Script to download a model to the models directory
# ---------------------------------------------------------------

# Exit options
set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

export BASE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source ./config.sh

mkdir -p "$MODEL_DIR"

if [[ -f "$MODEL_DIR/$MODEL_NAME" ]]; then
    echo "Model file $MODEL_NAME already exists, skipping download."
else
    wget -P "$MODEL_DIR" "$MODEL_URL"
fi
