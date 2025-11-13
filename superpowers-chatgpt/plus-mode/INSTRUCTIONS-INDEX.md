# ChatGPT Pro: Skills Instructions Index

This index lists all available instruction files for using Superpowers skills on ChatGPT Pro (Projects Mode).

## Overview

Each skill has a dedicated `INSTRUCTIONS-{skill-name}.md` file that explains:
- Platform-specific setup for ChatGPT Pro
- How to activate and use the skill
- Custom instructions templates
- Example usage patterns
- Troubleshooting tips
- Integration with other skills

## Quick Start

1. **Setup ChatGPT Project:**
   - See [PROJECTS-SETUP-GUIDE.md](PROJECTS-SETUP-GUIDE.md)
   - Create "Superpowers Development" project
   - Upload all files from `knowledge-files/` directory

2. **Find Your Skill:**
   - Browse categories below
   - Open relevant `INSTRUCTIONS-{skill-name}.md` file
   - Follow platform-specific guidance

3. **Use the Skill:**
   - Explicitly invoke: "Use {skill-name} skill for this"
   - Follow the instruction file's recommendations

## Core Skills (Must-Have)

Essential skills for development workflow:

| Skill | Description | Instructions |
|-------|-------------|--------------|
| **test-driven-development** | RED-GREEN-REFACTOR workflow | [INSTRUCTIONS-test-driven-development.md](knowledge-files/core/INSTRUCTIONS-test-driven-development.md) |
| **systematic-debugging** | 4-phase root cause investigation | [INSTRUCTIONS-systematic-debugging.md](knowledge-files/core/INSTRUCTIONS-systematic-debugging.md) |
| **brainstorming** | Socratic design refinement | [INSTRUCTIONS-brainstorming.md](knowledge-files/core/INSTRUCTIONS-brainstorming.md) |
| **using-superpowers** | Understanding the system | [INSTRUCTIONS-using-superpowers.md](knowledge-files/core/INSTRUCTIONS-using-superpowers.md) |

## Testing Skills

Quality assurance and testing methodology:

| Skill | Description | Instructions |
|-------|-------------|--------------|
| **testing-anti-patterns** | What NOT to do in testing | [INSTRUCTIONS-testing-anti-patterns.md](knowledge-files/testing/INSTRUCTIONS-testing-anti-patterns.md) |
| **condition-based-waiting** | Async operation patterns | [INSTRUCTIONS-condition-based-waiting.md](knowledge-files/testing/INSTRUCTIONS-condition-based-waiting.md) |

## Debugging Skills

Bug investigation and resolution:

| Skill | Description | Instructions |
|-------|-------------|--------------|
| **verification-before-completion** | Pre-completion checks | [INSTRUCTIONS-verification-before-completion.md](knowledge-files/debugging/INSTRUCTIONS-verification-before-completion.md) |
| **defense-in-depth** | Multiple validation layers | [INSTRUCTIONS-defense-in-depth.md](knowledge-files/debugging/INSTRUCTIONS-defense-in-depth.md) |
| **root-cause-tracing** | Deep issue investigation | [INSTRUCTIONS-root-cause-tracing.md](knowledge-files/debugging/INSTRUCTIONS-root-cause-tracing.md) |

## Collaboration Skills

Team workflows and git operations:

| Skill | Description | Instructions |
|-------|-------------|--------------|
| **writing-plans** | Structured planning | [INSTRUCTIONS-writing-plans.md](knowledge-files/collaboration/INSTRUCTIONS-writing-plans.md) |
| **executing-plans** | Plan implementation | [INSTRUCTIONS-executing-plans.md](knowledge-files/collaboration/INSTRUCTIONS-executing-plans.md) |
| **requesting-code-review** | Pre-review preparation | [INSTRUCTIONS-requesting-code-review.md](knowledge-files/collaboration/INSTRUCTIONS-requesting-code-review.md) |
| **receiving-code-review** | Responding to feedback | [INSTRUCTIONS-receiving-code-review.md](knowledge-files/collaboration/INSTRUCTIONS-receiving-code-review.md) |
| **finishing-a-development-branch** | Branch completion | [INSTRUCTIONS-finishing-a-development-branch.md](knowledge-files/collaboration/INSTRUCTIONS-finishing-a-development-branch.md) |
| **using-git-worktrees** | Parallel development | [INSTRUCTIONS-using-git-worktrees.md](knowledge-files/collaboration/INSTRUCTIONS-using-git-worktrees.md) |
| **dispatching-parallel-agents** | Task distribution | [INSTRUCTIONS-dispatching-parallel-agents.md](knowledge-files/collaboration/INSTRUCTIONS-dispatching-parallel-agents.md) |
| **subagent-driven-development** | Delegated implementation | [INSTRUCTIONS-subagent-driven-development.md](knowledge-files/collaboration/INSTRUCTIONS-subagent-driven-development.md) |

## Meta Skills

Skill creation and management:

| Skill | Description | Instructions |
|-------|-------------|--------------|
| **writing-skills** | Creating new skills | [INSTRUCTIONS-writing-skills.md](knowledge-files/meta/INSTRUCTIONS-writing-skills.md) |
| **sharing-skills** | Contributing skills | [INSTRUCTIONS-sharing-skills.md](knowledge-files/meta/INSTRUCTIONS-sharing-skills.md) |
| **testing-skills-with-subagents** | Validating skill effectiveness | [INSTRUCTIONS-testing-skills-with-subagents.md](knowledge-files/meta/INSTRUCTIONS-testing-skills-with-subagents.md) |

## Content Skills

Writing, UX, and content creation:

| Skill | Description | Instructions |
|-------|-------------|--------------|
| **ux-writing** | User experience writing | [INSTRUCTIONS-ux-writing.md](knowledge-files/content/INSTRUCTIONS-ux-writing.md) |
| **linkedin-thought-leadership** | LinkedIn content creation | [INSTRUCTIONS-linkedin-thought-leadership.md](knowledge-files/content/INSTRUCTIONS-linkedin-thought-leadership.md) |
| **ai-text-humanization** | Humanizing AI-generated text | [INSTRUCTIONS-ai-text-humanization.md](knowledge-files/content/INSTRUCTIONS-ai-text-humanization.md) |
| **humanisation-texte-ia-francais** | French text humanization | [INSTRUCTIONS-humanisation-texte-ia-francais.md](knowledge-files/content/INSTRUCTIONS-humanisation-texte-ia-francais.md) |
| **voice-chart-template** | Voice and tone guidelines | [INSTRUCTIONS-voice-chart-template.md](knowledge-files/content/INSTRUCTIONS-voice-chart-template.md) |
| **error-message-template** | Error message writing | [INSTRUCTIONS-error-message-template.md](knowledge-files/content/INSTRUCTIONS-error-message-template.md) |
| **patterns-detailed** | UX writing patterns | [INSTRUCTIONS-patterns-detailed.md](knowledge-files/content/INSTRUCTIONS-patterns-detailed.md) |
| **thought-leadership-angles** | Content angles and perspectives | [INSTRUCTIONS-thought-leadership-angles.md](knowledge-files/content/INSTRUCTIONS-thought-leadership-angles.md) |
| **linkedin-formats** | LinkedIn post formats | [INSTRUCTIONS-linkedin-formats.md](knowledge-files/content/INSTRUCTIONS-linkedin-formats.md) |
| **engagement-frameworks** | Content engagement strategies | [INSTRUCTIONS-engagement-frameworks.md](knowledge-files/content/INSTRUCTIONS-engagement-frameworks.md) |
| **accessibility-guidelines** | Accessibility best practices | [INSTRUCTIONS-accessibility-guidelines.md](knowledge-files/content/INSTRUCTIONS-accessibility-guidelines.md) |

## Platform-Specific Notes

### ChatGPT Projects Features

**Advantages:**
- Persistent skills across all project conversations
- No file size limits for knowledge files
- Web browsing and DALL-E integration available
- Mobile app support
- Familiar interface

**Limitations:**
- No TodoWrite tool (manual tracking required)
- No automatic skill activation
- Must explicitly invoke skills
- No background task execution
- Text-based progress tracking only

### Custom Instructions

All instruction files include:
- Recommended custom instructions for your project
- Platform-specific activation patterns
- Manual tracking templates
- Integration guidance

### Usage Pattern

```
User: "Help me implement feature X"

You: "I'll use the [skill-name] skill for this.

      Let me check INSTRUCTIONS-[skill-name].md for
      ChatGPT-specific best practices.

      [Follows skill methodology with manual tracking]

      Progress:
      ✓ Phase 1: Complete
      ⧖ Phase 2: In progress
      ○ Phase 3: Pending"
```

## Finding the Right Skill

### By Task Type

- **Implementing features** → test-driven-development
- **Fixing bugs** → systematic-debugging
- **Planning work** → brainstorming, writing-plans
- **Code review** → requesting-code-review, receiving-code-review
- **Testing** → testing-anti-patterns, condition-based-waiting
- **Creating content** → ux-writing, linkedin-thought-leadership
- **Creating skills** → writing-skills, sharing-skills

### Skill Combinations

Many tasks benefit from multiple skills:

**Feature Development:**
1. brainstorming (design)
2. writing-plans (planning)
3. test-driven-development (implementation)
4. verification-before-completion (final check)

**Bug Investigation:**
1. systematic-debugging (investigation)
2. test-driven-development (fix implementation)
3. defense-in-depth (prevention)

**Content Creation:**
1. linkedin-thought-leadership (strategy)
2. ux-writing (writing)
3. accessibility-guidelines (review)

## Troubleshooting

### Skill Not Working?

1. **Check file is uploaded:**
   - Go to your project settings
   - Verify file in project knowledge
   - Try: "Check your knowledge files for [skill-name]"

2. **Explicit invocation:**
   - Always invoke by name
   - Example: "Use test-driven-development skill"

3. **Custom instructions:**
   - Add recommended instructions to project
   - See individual INSTRUCTIONS files

### Manual Tracking Issues?

Since TodoWrite isn't available:
- Ask ChatGPT to show checklist in responses
- Use markdown checkboxes
- Copy to separate notes if needed
- Reference specific instruction file for tracking template

### Multiple Skills?

Invoke all needed skills upfront:
```
"Use brainstorming skill to design this feature,
then test-driven-development to implement it"
```

## Contributing

Found issues or improvements for instruction files?

- **Issues:** https://github.com/obra/superpowers/issues
- **Discussions:** https://github.com/obra/superpowers/discussions
- **PRs:** Contributions welcome!

## Updates

Instruction files are versioned with the main repository:
- Check [RELEASE-NOTES.md](../../RELEASE-NOTES.md) for updates
- Re-upload files to get latest versions
- Watch repository for new skills

## Related Documentation

- [Main Setup Guide](PROJECTS-SETUP-GUIDE.md)
- [ChatGPT Plus Mode README](README.md)
- [General Superpowers README](../../README.md)

---

**Total Skills:** 31 skills with platform-specific instructions
**Last Updated:** 2025-11-13
**Platform:** ChatGPT Pro (Projects Mode)
