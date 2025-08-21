---
description: Update current development session with progress and changes
argument-hint: [update-notes]
allowed-tools: Bash(git:*), Bash(cat:*), Bash(echo:*), Bash(date:*), Bash(wc:*), Bash(grep:*), Bash(env:*)
---

## Context

- Current session file: !`cat .claude/sessions/.current-session 2>/dev/null || echo "No active session"`
- Git status: !`git status --porcelain 2>/dev/null`
- Git branch: !`git branch --show-current 2>/dev/null`
- Recent commits: !`git log --oneline -3 2>/dev/null`
- Files changed: !`git status --porcelain 2>/dev/null | wc -l` files
- Current timestamp: !`date '+%Y-%m-%d %I:%M %p'`
- Last session update: !`tail -n 5 "$(cat .claude/sessions/.current-session 2>/dev/null)" 2>/dev/null | grep -E "###.*Update.*[0-9]" | tail -1`

## Your task

Update the current development session by:

1. Check if `.claude/sessions/.current-session` exists to find the active session
2. If no active session, inform user to start one with `/session-start`
3. If session exists, append to the session file with:
   - Current timestamp using: `date '+%Y-%m-%d %I:%M %p'` (e.g., "2024-08-20 7:14 PM")
   - The update: $ARGUMENTS (or if no arguments, summarize recent activities)
   - Git status summary:
     * Files added/modified/deleted (from `git status --porcelain`)
     * Current branch and last commit
   - Todo list status:
     * Number of completed/in-progress/pending tasks
     * List any newly completed tasks
   - Any issues encountered
   - Solutions implemented
   - Code changes made

**Important**: Always use `date '+%Y-%m-%d %I:%M %p'` for timestamps. This ensures correct year, 12-hour format with AM/PM, and local timezone.

Keep updates concise but comprehensive for future reference.

Example format:
```
### Update - 2024-08-20 7:14 PM

**Summary**: Implemented user authentication

**Git Changes**:
- Modified: app/middleware.ts, lib/auth.ts
- Added: app/login/page.tsx
- Current branch: main (commit: abc123)

**Todo Progress**: 3 completed, 1 in progress, 2 pending
- ✓ Completed: Set up auth middleware
- ✓ Completed: Create login page
- ✓ Completed: Add logout functionality

**Details**: [user's update or automatic summary]
```