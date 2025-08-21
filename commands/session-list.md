---
description: List all development sessions with details
allowed-tools: Bash(ls:*), Bash(cat:*), Bash(head:*), Bash(sort:*), Bash(grep:*), Bash(wc:*)
---

## Context

- Sessions directory check: !`ls -la .claude/sessions/ 2>/dev/null || echo "No sessions directory"`
- Session files count: !`ls .claude/sessions/*.md 2>/dev/null | wc -l || echo "0"` files
- Current active session: !`cat .claude/sessions/.current-session 2>/dev/null || echo "No active session"`
- Recent session files: !`ls -t .claude/sessions/*.md 2>/dev/null | head -5 || echo "No session files"`

## Your task

List all development sessions by:

1. Check if `.claude/sessions/` directory exists
2. List all `.md` files (excluding hidden files and `.current-session`)
3. For each session file:
   - Show the filename
   - Extract and show the session title
   - Show the date/time
   - Show first few lines of the overview if available
4. If `.claude/sessions/.current-session` exists, highlight which session is currently active
5. Sort by most recent first

Present in a clean, readable format.