import asyncio, re
from skillweaver.agent import vars

(print,) = vars['/root/SkillWeaver/output/shopping-claude-sonnet-4-20250514-full/shopping/task_21/py_3_3.py']



async def act(page):
    # Go back to page 1 to see all reviews
    await page.get_by_role("link", name="Page 1").click()