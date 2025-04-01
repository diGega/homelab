# Chat with a model based on https://github.com/ollama/ollama

curl http://localhost:11434/api/chat -d '{
  "model": "llama3.2:1b",
  "messages": [
    { "role": "user", "content": "why is the sky blue?" }
  ]
}'