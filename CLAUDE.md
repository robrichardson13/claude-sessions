# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Claude Code session management system that provides custom slash commands for tracking development sessions, progress, and decisions across multiple coding sessions. The system consists of markdown-based command definitions and session storage.

## Architecture

### Commands System
- **Location**: `commands/` directory
- **Format**: Markdown files with frontmatter metadata
- **Prefix**: Commands use `/project:` prefix for project-specific functionality
- **Arguments**: Support arguments via `$ARGUMENTS` placeholder

### Session Storage
- **Location**: `sessions/` directory 
- **Active Session Tracking**: `.current-session` file stores the current active session filename
- **Naming Convention**: `YYYY-MM-DD-HHMM[-optional-name].md`
- **Format**: Structured markdown with goals, progress updates, and summaries

### Available Commands

**Core Session Management:**
- `/project:session-start [name]` - Start new session with optional descriptive name
- `/project:session-update [notes]` - Add timestamped updates (auto-summarizes if no notes)
- `/project:session-end` - End session with comprehensive summary
- `/project:session-current` - View active session status
- `/project:session-list` - List all sessions
- `/project:session-help` - Show help information

### Key Implementation Details

**Command Structure**: Each command file contains:
- Frontmatter with description and argument hints
- Task instructions for Claude to execute
- Specific formatting requirements for consistency

**Session Files Include**:
- Session goals and objectives
- Timestamped progress updates
- Git status and changes tracking
- Todo list progress
- Issues encountered and solutions
- Dependencies and configuration changes
- Comprehensive end-of-session summaries

## Development Workflow

1. **Starting Work**: Use `/project:session-start [descriptive-name]` to begin tracking
2. **During Development**: Regular `/project:session-update` calls to document progress
3. **Ending Work**: Always use `/project:session-end` for complete summaries
4. **Knowledge Transfer**: Review past sessions via `/project:session-list` before starting related work

## File Structure

```
commands/           # Command definitions for Claude Code
├── session-*.md   # Individual command implementations
sessions/           # Session storage and tracking
├── .current-session    # Tracks active session filename
└── *.md           # Individual session files
```

## Important Notes

- This system is designed specifically for Claude Code's custom slash command feature
- Session files serve as living documentation of development decisions and progress  
- The `.current-session` file maintains state between Claude Code conversations
- All timestamps use local timezone formatting for consistency
- Session management helps maintain context across multiple AI interactions with the codebase