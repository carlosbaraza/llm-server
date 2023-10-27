# Use environment variables if available, otherwise set default values
MODEL_URL="${MODEL_URL:-https://huggingface.co/TheBloke/Mistral-7B-Instruct-v0.1-GGUF/resolve/main/mistral-7b-instruct-v0.1.Q4_K_M.gguf}"
MODEL_DIR="${MODEL_DIR:-$BASE_PATH/volume/models}"
MODEL_NAME=$(basename "$MODEL_URL")
LLAMA_MODEL_PATH="${LLAMA_MODEL_PATH:-$MODEL_DIR/$MODEL_NAME}"
LLAMA_THREADS="${LLAMA_THREADS:-4}"
LLAMA_GPU_LAYERS="${LLAMA_GPU_LAYERS:-35}"
LLAMA_HOST="${LLAMA_HOST:-0.0.0.0}"
LLAMA_PORT="${LLAMA_PORT:-8080}"
