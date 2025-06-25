import asyncio, re
from skillweaver.agent import vars

(print,) = vars['/root/SkillWeaver/output/shopping-claude-sonnet-4-20250514-full/shopping/task_21/py_2_2.py']



async def act(page):
    # Click on Page 2 to see more reviews
    await page.get_by_role("link", name="Page 2").click()