import os
import json
from typing import List

def get_reddit_task_ids() -> List[str]:
    """Get all task IDs from reddit test cases."""
    test_cases_dir = os.path.join(os.path.dirname(__file__), "split")
    task_ids = []
    
    if os.path.exists(test_cases_dir):
        for filename in os.listdir(test_cases_dir):
            if filename.endswith('.json'):
                with open(os.path.join(test_cases_dir, filename), 'r') as f:
                    data = json.load(f)
                    if "reddit" in data["sites"]:
                        task_ids.append(f"browsergym/webarena.{filename.split('.')[0]}")
    
    return task_ids


if __name__ == "__main__":
    task_ids = get_reddit_task_ids()
    with open("reddit_task_ids.txt", "w") as f:
        for task_id in task_ids:
            f.write(task_id + "\n")