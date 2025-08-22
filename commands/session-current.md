---
description: Show current session status and progress
---

## Your task

Show the current session status by:

1. Check if `.claude/sessions/.current-session` exists
2. If no active session, inform user and suggest starting one
3. If active session exists:
   - Show session name and filename
   - Calculate and show duration since start (using local timezone)
   - Show last few updates
   - Show current goals/tasks
   - Remind user of available commands

**Important**: Always use `date '+%Y-%m-%d %I:%M %p'` for timestamps. This ensures correct year, 12-hour format with AM/PM, and local timezone.

Keep the output concise and informative.