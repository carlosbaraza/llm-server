#!/usr/bin/env bash

# ---------------------------------------------------------------
# Description: Script to download a model to the models directory
# ---------------------------------------------------------------

# Exit options
set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

# Script variables
readonly MODEL_DIR="./models"
readonly MODEL_URL=$1

# Function to download model
download_model() {
    mkdir -p "$MODEL_DIR"
    wget -P "$MODEL_DIR" "$MODEL_URL"
}

# Main script logic
download_model
