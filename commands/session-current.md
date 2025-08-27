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
   - **Key Learnings Summary**: Extract and highlight important findings from session updates
   - **Files Recently Edited**: List files modified with timestamps and brief descriptions
   - **Unresolved Issues**: Current blockers or questions that need attention
   - **Next Steps**: Based on incomplete todos and context notes
   - Show last few updates (condensed)
   - Show current goals/tasks
   - **Context for Resumption**: Critical information for picking up work
   - Remind user of available commands

**Important**: Always use `date '+%Y-%m-%d %I:%M %p'` for timestamps. This ensures correct year, 12-hour format with AM/PM, and local timezone.

**Information Extraction**: When reading the session file:
- Scan all "Key Findings/Learnings" sections and consolidate the most important ones
- Look for "Context for Next Session" sections in updates
- Identify patterns in "Problems & Solutions" that indicate ongoing issues
- Extract file modification information from "Files Edited" sections
- Summarize incomplete todos and their context

Keep the output concise but comprehensive enough for effective work resumption. Focus on actionable information that helps understand where work left off and what needs attention.