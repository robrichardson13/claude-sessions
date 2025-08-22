---
description: Start a new development session with tracking
argument-hint: [session-name]
---

## Your task

Start a new development session by creating a session file in `.claude/sessions/` with the format `YYYY-MM-DD-HHMM-$ARGUMENTS.md` (or just `YYYY-MM-DD-HHMM.md` if no name provided).

**Important**: Use `date '+%Y-%m-%d %I:%M %p'` for timestamps and `date '+%Y-%m-%d-%H%M'` for filenames. This ensures correct year, format, and local timezone.

**Context-Aware Initialization**: Before creating the session file, check if we're starting mid-conversation by detecting:
- Active todo lists with completed/in-progress tasks
- Recent tool usage or file modifications
- Git working directory changes (uncommitted files)

### For Fresh Conversations (No Context)
Create a basic session file with:
1. Session name and timestamp as the title (using local time)
2. Session overview section with start time (local time)
3. Goals section (ask user for goals if not clear)
4. Empty progress section ready for updates

### For Mid-Conversation Starts (Context Detected)
Create a session file that includes the basic structure PLUS an initial progress entry capturing current state:

1. Session name and timestamp as the title (using local time)
2. Session overview section noting that tracking began mid-conversation
3. Goals section (infer from context or ask if unclear)
4. **Initial Progress Entry** with current timestamp including:
   - Git status summary (files modified/added/deleted from `git status --porcelain`)
   - Current branch and recent commits
   - Todo list status (completed/in-progress/pending counts)
   - List any completed tasks from active todo list
   - Brief summary of recent activities based on conversation context
   - Note that session tracking started partway through work

Use this format for the initial entry:
```
## Progress

### Session Started - [timestamp]
*Note: Session tracking began mid-conversation*

**Current Git Status**:
- Modified: [list files]
- Added: [list files] 
- Current branch: [branch] (commit: [hash])

**Todo Progress**: [X completed, Y in progress, Z pending]
- ✓ Completed: [list completed tasks]
- 🔄 In Progress: [list active tasks]

**Context Summary**: [Brief summary of work already done based on conversation]
```

After creating the file, create or update `.claude/sessions/.current-session` to track the active session filename.

Confirm the session has started and remind the user they can:
- Update it with `/session-update`
- End it with `/session-end`