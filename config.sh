MODEL_URL="https://huggingface.co/TheBloke/Mistral-7B-Instruct-v0.1-GGUF/resolve/main/mistral-7b-instruct-v0.1.Q4_K_M.gguf"
MODEL_DIR=~/llm-server/models
LLAMA_MODEL_PATH="$MODEL_DIR/$(basename "$MODEL_URL")"
LLAMA_THREADS=4
LLAMA_GPU_LAYERS=35
LLAMA_HOST="127.0.0.1"
