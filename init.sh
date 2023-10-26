#!/usr/bin/env bash

# ---------------------------------------------------------------
# Description: Initialization script for model download, compilation, and benchmark
# ---------------------------------------------------------------

# Exit options
set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

export BASE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source ./config.sh

# Download model
./download-model.sh "$MODEL_URL"

# Compile llama.cpp
./compile-llamacpp.sh
