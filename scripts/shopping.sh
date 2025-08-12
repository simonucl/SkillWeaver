MODEL=gpt-4.1
MODEL_NAME=$(basename $MODEL)
export DOCKER=true

# Exploration
python -m skillweaver.explore shopping logs/explore-shopping-${MODEL_NAME} \
    --agent-lm-name $MODEL --api-synthesis-lm-name $MODEL --success-check-lm-name $MODEL --iterations 150