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

./server \
    -t "$LLAMA_THREADS" \
    -m "$LLAMA_MODEL_PATH" \
    --n-gpu-layers "$LLAMA_GPU_LAYERS"
