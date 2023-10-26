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

# Set environment variables
export LLAMA_MODEL_PATH="$MODEL_DIR/$(basename "$MODEL_URL")"
export LLAMA_THREADS="$LLAMA_THREADS"
export LLAMA_GPU_LAYERS="$LLAMA_GPU_LAYERS"

# Run benchmark
./benchmark.sh
