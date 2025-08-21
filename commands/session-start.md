---
description: Start a new development session with tracking
argument-hint: [session-name]
allowed-tools: Bash(mkdir:*), Bash(touch:*), Bash(date:*), Bash(echo:*), Bash(env:*)
---

Start a new development session by creating a session file in `.claude/sessions/` with the format `YYYY-MM-DD-HHMM-$ARGUMENTS.md` (or just `YYYY-MM-DD-HHMM.md` if no name provided).

**Important**: Use `date '+%Y-%m-%d %I:%M %p'` for timestamps and `date '+%Y-%m-%d-%H%M'` for filenames. This ensures correct year, format, and local timezone.

The session file should begin with:
1. Session name and timestamp as the title (using local time)
2. Session overview section with start time (local time)
3. Goals section (ask user for goals if not clear)
4. Empty progress section ready for updates

After creating the file, create or update `.claude/sessions/.current-session` to track the active session filename.

Confirm the session has started and remind the user they can:
- Update it with `/session-update`
- End it with `/session-end`