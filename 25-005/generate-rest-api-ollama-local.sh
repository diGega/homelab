# Generate a response based on https://github.com/ollama/ollama

curl http://localhost:11434/api/generate -d '{ "model": "llama3.2:1b", "prompt":"Why is the sky blue?" }'
