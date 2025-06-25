import asyncio, re
from skillweaver.agent import vars

(print,) = vars['/root/SkillWeaver/output/shopping-claude-sonnet-4-20250514-full/shopping/task_21/py_0_0.py']



async def act(page):
    # Click on the "12 Reviews" link to navigate to the reviews section
    await page.get_by_role("link", name="12 Reviews").click()