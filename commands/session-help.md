---
description: Show help for session management system
---

Show help for the session management system:

## Session Management Commands

The session system helps document development work for future reference and provides comprehensive tracking of progress, issues, and solutions.

### Core Commands:

- `/session-start [name]` - Start a new development session with optional name
- `/session-update [notes]` - Add progress notes to current session  
- `/session-end` - End session with comprehensive summary
- `/session-current` - Show current session status and progress

### Management Commands:

- `/session-list` - List all session files with details
- `/session-help` - Show this help

### How It Works:

1. **Sessions** are markdown files stored in `.claude/sessions/`
2. **File naming**: `YYYY-MM-DD-HHMM-name.md` format
3. **Active tracking**: Only one session can be active at a time via `.current-session`
4. **Comprehensive logging**: Tracks progress, git changes, issues, solutions, and learnings

### Best Practices:

- **Start early**: Begin a session when starting significant work
- **Update regularly**: Log important changes, findings, and decisions
- **End thoroughly**: Provide comprehensive summary for future reference
- **Search history**: Review past sessions before starting similar work
- **Export data**: Use export for reporting or analysis

### Example Workflow:

```
/session-start refactor-auth
/session-update Added Google OAuth restriction
/session-update Fixed Next.js 15 params Promise issue  
/session-end
```

### Advanced Usage:

```
# Basic workflow example
/session-start refactor-auth
/session-update Added Google OAuth restriction
/session-update Fixed Next.js 15 params Promise issue
/session-end
```