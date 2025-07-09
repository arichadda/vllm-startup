response=$(curl http://localhost:8000/v1/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "deepseek-ai/DeepSeek-R1-Distill-Qwen-7B",
        "prompt": "What model are you?",
        "max_tokens": 2048,
        "temperature": 0
    }')

echo $response | python3 -m json.tool

