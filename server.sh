#!/usr/bin/env bash

# ---------------------------------------------------------------
# Description: Script to run llama.cpp benchmark
# ---------------------------------------------------------------

# Exit options
set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

export BASE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$BASE_PATH" || exit 1
source ./config.sh
./download-model.sh

cd ./llama.cpp || exit 1

./server \
    -t "$LLAMA_THREADS" \
    -m "$LLAMA_MODEL_PATH" \
    --n-gpu-layers "$LLAMA_GPU_LAYERS" \
    --host "$LLAMA_HOST" \
    --port "$LLAMA_PORT"
