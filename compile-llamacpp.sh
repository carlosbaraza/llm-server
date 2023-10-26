#!/usr/bin/env bash

# ---------------------------------------------------------------
# Description: Script to clone and compile llama.cpp
# Author: Your Name
# Date: Date you created the script
# ---------------------------------------------------------------

# Exit options
set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

export BASE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$BASE_PATH" || exit 1
source ./config.sh

# Function to clone and compile llama.cpp
compile_llamacpp() {
    # check if folder exists before cloning
    if [[ -d llama.cpp ]]; then
        echo "llama.cpp already exists, skipping clone."
    else
        git clone https://github.com/ggerganov/llama.cpp.git
    fi
    cd llama.cpp || exit 1
    make LLAMA_CUBLAS=1 -j
}

# Main script logic
compile_llamacpp
