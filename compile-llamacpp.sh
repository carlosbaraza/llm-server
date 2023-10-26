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

# Function to clone and compile llama.cpp
compile_llamacpp() {
    git clone https://github.com/ggerganov/llama.cpp.git
    cd llama.cpp || exit 1
    make LLAMA_CUBLAS=1 -j
}

# Main script logic
compile_llamacpp
