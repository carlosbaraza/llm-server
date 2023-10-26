#!/usr/bin/env bash

# ---------------------------------------------------------------
# Description: Script to run llama.cpp benchmark
# ---------------------------------------------------------------

# Exit options
set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

# Default settings
LLAMA_THREADS=${LLAMA_THREADS:-4}
LLAMA_GPU_LAYERS=${LLAMA_GPU_LAYERS:-35}

cd ~/llm-server/llama.cpp || exit 1

# Main script logic
./main \
    -m "$LLAMA_MODEL_PATH" \
    -p "Building a website can be done in 10 simple steps:\nStep 1:" \
    -n 400 \
    -e \
    -t "$LLAMA_THREADS" \
    --n-gpu-layers "$LLAMA_GPU_LAYERS"
