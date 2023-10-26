#!/usr/bin/env bash

# ---------------------------------------------------------------
# Description: Initialization script for model download, compilation, and benchmark
# ---------------------------------------------------------------

# Exit options
set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

source ./config.sh

cd ~/llm-server || exit 1

# Download model
./download-model.sh "$MODEL_URL"

# Compile llama.cpp
./compile-llamacpp.sh

# Run benchmark
./benchmark.sh
