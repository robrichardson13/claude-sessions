---
description: Update current development session with progress and changes
argument-hint: [update-notes]
---

## Your task

Update the current development session by:

1. Check if `.claude/sessions/.current-session` exists to find the active session
2. If no active session, inform user to start one with `/session-start`
3. If session exists, append to the session file with:
   - Current timestamp using: `date '+%Y-%m-%d %I:%M %p'` (e.g., "2024-08-20 7:14 PM")
   - The update: $ARGUMENTS (or if no arguments, summarize recent activities)
   - **Files Edited**: List files modified with brief description of changes and rationale
   - **Key Findings/Learnings**: Important discoveries, patterns, or insights found during this update:
     * 🔍 Codebase discoveries (architecture, patterns, existing functionality)
     * ⚠️ Important constraints, limitations, or gotchas discovered
     * ✅ Successful approaches, techniques, or solutions that worked well
     * ❌ Approaches that didn't work and why (to avoid repeating mistakes)
   - **Problems & Solutions**: Issues encountered and how they were resolved
   - Git status summary:
     * Files added/modified/deleted (from `git status --porcelain`)
     * Current branch and last commit
   - Todo list status:
     * Number of completed/in-progress/pending tasks
     * List any newly completed tasks
   - **Dependencies Changed**: Any packages added, removed, or updated
   - **Configuration Updates**: Changes to config files, environment variables, or settings
   - **Context for Next Session**: Critical information needed for effective resumption:
     * Current investigation focus
     * Unresolved questions or blockers
     * Next logical steps
     * Files that still need attention

**Important**: Always use `date '+%Y-%m-%d %I:%M %p'` for timestamps. This ensures correct year, 12-hour format with AM/PM, and local timezone.

Focus on capturing insights and learnings that would help someone (including AI) resume work effectively after clearing context.

Example format:
```
### Update - 2024-08-20 7:14 PM

**Summary**: Implemented user authentication

**Files Edited**:
- app/middleware.ts: Added auth middleware to check session tokens
- lib/auth.ts: Created authentication helper functions
- app/login/page.tsx: New login page with form validation

**Key Findings/Learnings**:
- 🔍 App uses Next.js middleware for route protection
- ⚠️ Session tokens must be httpOnly cookies for security
- ✅ NextAuth.js integrates well with existing database schema
- ❌ JWT tokens in localStorage failed security audit requirements

**Problems & Solutions**:
- Problem: CSRF attacks on login form
  Solution: Added CSRF tokens using next-csrf library

**Git Changes**:
- Modified: app/middleware.ts, lib/auth.ts
- Added: app/login/page.tsx
- Current branch: main (commit: abc123)

**Todo Progress**: 3 completed, 1 in progress, 2 pending
- ✓ Completed: Set up auth middleware
- ✓ Completed: Create login page
- ✓ Completed: Add logout functionality

**Dependencies Changed**: Added next-csrf, bcryptjs

**Context for Next Session**:
- Need to implement password reset functionality
- OAuth integration with Google still pending
- Test coverage needs to be added for auth flows
```