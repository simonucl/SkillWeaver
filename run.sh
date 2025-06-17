KNOWLEDGE_BASE_PATH=/Users/simonyu/local/SkillWeaver/logs/explore-reddit-gpt4o-1/iter_56/kb_post
KNOWLEDGE_BASE_PATH=/Users/simonyu/local/SkillWeaver/skillnet/shopping/shopping_kb_post
KNOWLEDGE_BASE_PATH=/Users/simonyu/local/SkillWeaver/logs/explore-shopping-gpt-4o/iter_49/kb_post
# Sanity check
# python -m skillweaver.attempt_task $WA_REDDIT \
#     "Post to the gaming forum to ask about the best games of the year"

MODEL=anthropic/claude-sonnet-4-20250514
# MODEL=google/gemini-2.5-flash-preview-05-20
# MODEL=openai/gpt-4o
MODEL_NAME=$(basename $MODEL)

# Exploration
python -m skillweaver.explore $WA_SHOPPING logs/explore-shopping-${MODEL_NAME} \
    --agent-lm-name $MODEL --api-synthesis-lm-name $MODEL --success-check-lm-name $MODEL --iterations 150

# Eval with induced knowledge
# python -m skillweaver.attempt_task $WA_SHOPPING \
#     "Add all visible products to the cart" \
#     --agent-lm-name $MODEL

# python -m skillweaver.evaluation.evaluate_benchmark shopping \
#     output/shopping-${MODEL_NAME}-new \
#     --knowledge-base-path-prefix $KNOWLEDGE_BASE_PATH \
#     --lm-name $MODEL \
#     --selected-tasks reduced_set

# Eval with induced knowledge
# rm -rf output/*
# 30/106
# python -m skillweaver.evaluation.evaluate_benchmark shopping \
#     output/shopping-skills-new \
#     --knowledge-base-path-prefix $KNOWLEDGE_BASE_PATH \
#     --lm-name gpt-4o \
#     --selected-tasks reduced_set


# python -m skillweaver.evaluation.evaluate_benchmark shopping \
#     output/shopping-no-skills \
#     --lm-name gpt-4o \
#     --selected-tasks reduced_set


# 19/106
# python -m skillweaver.evaluation.evaluate_benchmark reddit \
#     output/reddit-empty
