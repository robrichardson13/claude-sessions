---
description: End current development session with comprehensive summary
allowed-tools: Bash(git:*), Bash(cat:*), Bash(echo:*), Bash(wc:*), Bash(grep:*), Bash(rm:*), Bash(truncate:*), Bash(env:*), Bash(date:*)
---

End the current development session by:

1. Check `.claude/sessions/.current-session` for the active session
2. If no active session, inform user there's nothing to end
3. If session exists, append a comprehensive summary including:
   - Session duration (calculated using local timezone)
   - Git summary:
     * Total files changed (added/modified/deleted)
     * List all changed files with change type
     * Number of commits made (if any)
     * Final git status
   - Todo summary:
     * Total tasks completed/remaining
     * List all completed tasks
     * List any incomplete tasks with status
   - Key accomplishments
   - All features implemented
   - Problems encountered and solutions
   - Breaking changes or important findings
   - Dependencies added/removed
   - Configuration changes
   - Deployment steps taken
   - Lessons learned
   - What wasn't completed
   - Tips for future developers

4. Empty the `.claude/sessions/.current-session` file (don't remove it, just clear its contents)
5. Inform user the session has been documented

**Important**: Always use `date '+%Y-%m-%d %I:%M %p'` for timestamps. This ensures correct year, 12-hour format with AM/PM, and local timezone.

The summary should be thorough enough that another developer (or AI) can understand everything that happened without reading the entire session.