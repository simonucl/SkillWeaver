import asyncio, re
from skillweaver.agent import vars

(print,) = vars['/root/SkillWeaver/output/shopping-claude-sonnet-4-20250514-full/shopping/task_21/py_4_4.py']



async def act(page):
    # Scroll down to see if there are more reviews or pagination controls
    await page.evaluate("window.scrollTo(0, document.body.scrollHeight)")