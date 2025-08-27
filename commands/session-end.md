---
description: End current development session with comprehensive summary
---

## Your task

End the current development session by:

1. Check `.claude/sessions/.current-session` for the active session
2. If no active session, inform user there's nothing to end
3. If session exists, append a comprehensive summary including:
   - Session duration (calculated using local timezone)
   - **Consolidated Key Learnings**: Extract and consolidate all important findings from session updates:
     * Most important codebase discoveries
     * Critical constraints or limitations found
     * Proven successful approaches and patterns
     * Failed approaches and why they didn't work
     * Remove duplicates and organize by importance
   - Git summary:
     * Total files changed (added/modified/deleted)
     * List all changed files with change type and purpose
     * Number of commits made (if any)
     * Final git status
   - Todo summary:
     * Total tasks completed/remaining
     * List all completed tasks with details
     * List any incomplete tasks with status and context
   - **Comprehensive Problem Log**: All issues encountered and their solutions
   - Key accomplishments and features implemented
   - Breaking changes or important findings
   - Dependencies added/removed with rationale
   - Configuration changes made
   - Deployment steps taken
   - **Knowledge for Future Sessions**:
     * What works well in this codebase
     * What to avoid and why
     * Useful patterns or techniques discovered
     * Important architectural insights
   - **Unfinished Work**: What wasn't completed with enough context for resumption
   - **Next Steps**: Clear actionable items for continuing this work

4. Empty the `.claude/sessions/.current-session` file (don't remove it, just clear its contents)
5. Inform user the session has been documented

**Important**: Always use `date '+%Y-%m-%d %I:%M %p'` for timestamps. This ensures correct year, 12-hour format with AM/PM, and local timezone.

**Information Consolidation Guidelines**:
- Read through ALL session updates and extract key information
- Group similar findings together and remove duplicates
- Prioritize learnings that would be most valuable for future work
- Include enough detail in "Unfinished Work" so someone can pick up exactly where you left off
- Make "Next Steps" specific and actionable, not vague
- Focus on insights that save time and prevent mistakes in future sessions

The summary should be thorough enough that another developer (or AI) can understand everything that happened, continue the work effectively, and avoid repeating the same mistakes or investigations.