# Claude Desktop Pro: Skills Instructions Index

This index lists all available instruction files for using Superpowers skills on Claude Desktop Pro.

## Overview

Each skill has a dedicated `INSTRUCTIONS-{skill-name}.md` file that explains:
- Platform-specific setup for Claude Desktop Pro
- ZIP upload vs. Project Knowledge methods
- How to activate and use the skill
- Custom instructions templates
- Example usage with TodoWrite integration
- Troubleshooting tips
- Integration with other skills

## Quick Start

1. **Choose Your Setup Method:**
   - **ZIP Upload (Recommended):** See [SKILLS-ZIP-UPLOAD-GUIDE.md](SKILLS-ZIP-UPLOAD-GUIDE.md)
   - **Project Knowledge:** See [SETUP.md](SETUP.md)

2. **Install Skills:**
   - Pre-built ZIPs in `skill-zips/` directory
   - Upload to Settings → Capabilities
   - Or add to project knowledge

3. **Find Your Skill:**
   - Browse categories below
   - Open relevant `INSTRUCTIONS-{skill-name}.md` file
   - Follow platform-specific guidance

4. **Use the Skill:**
   - Invoke: "Use {skill-name} skill for this"
   - Claude will activate skill and track progress

## Core Skills (Must-Have)

Essential skills for development workflow:

| Skill | Description | Instructions | ZIP Location |
|-------|-------------|--------------|--------------|
| **test-driven-development** | RED-GREEN-REFACTOR workflow | [INSTRUCTIONS-test-driven-development.md](skills/core/INSTRUCTIONS-test-driven-development.md) | `skill-zips/test-driven-development.zip` |
| **systematic-debugging** | 4-phase root cause investigation | [INSTRUCTIONS-systematic-debugging.md](skills/core/INSTRUCTIONS-systematic-debugging.md) | `skill-zips/systematic-debugging.zip` |
| **brainstorming** | Socratic design refinement | [INSTRUCTIONS-brainstorming.md](skills/core/INSTRUCTIONS-brainstorming.md) | `skill-zips/brainstorming.zip` |
| **using-superpowers** | Understanding the system | [INSTRUCTIONS-using-superpowers.md](skills/core/INSTRUCTIONS-using-superpowers.md) | `skill-zips/using-superpowers.zip` |

## Testing Skills

Quality assurance and testing methodology:

| Skill | Description | Instructions | ZIP Location |
|-------|-------------|--------------|--------------|
| **testing-anti-patterns** | What NOT to do in testing | [INSTRUCTIONS-testing-anti-patterns.md](skills/testing/INSTRUCTIONS-testing-anti-patterns.md) | `skill-zips/testing-anti-patterns.zip` |
| **condition-based-waiting** | Async operation patterns | [INSTRUCTIONS-condition-based-waiting.md](skills/testing/INSTRUCTIONS-condition-based-waiting.md) | `skill-zips/condition-based-waiting.zip` |

## Debugging Skills

Bug investigation and resolution:

| Skill | Description | Instructions | ZIP Location |
|-------|-------------|--------------|--------------|
| **verification-before-completion** | Pre-completion checks | [INSTRUCTIONS-verification-before-completion.md](skills/debugging/INSTRUCTIONS-verification-before-completion.md) | `skill-zips/verification-before-completion.zip` |
| **defense-in-depth** | Multiple validation layers | [INSTRUCTIONS-defense-in-depth.md](skills/debugging/INSTRUCTIONS-defense-in-depth.md) | `skill-zips/defense-in-depth.zip` |
| **root-cause-tracing** | Deep issue investigation | [INSTRUCTIONS-root-cause-tracing.md](skills/debugging/INSTRUCTIONS-root-cause-tracing.md) | `skill-zips/root-cause-tracing.zip` |

## Collaboration Skills

Team workflows and git operations:

| Skill | Description | Instructions | ZIP Location |
|-------|-------------|--------------|--------------|
| **writing-plans** | Structured planning | [INSTRUCTIONS-writing-plans.md](skills/collaboration/INSTRUCTIONS-writing-plans.md) | `skill-zips/writing-plans.zip` |
| **executing-plans** | Plan implementation | [INSTRUCTIONS-executing-plans.md](skills/collaboration/INSTRUCTIONS-executing-plans.md) | `skill-zips/executing-plans.zip` |
| **requesting-code-review** | Pre-review preparation | [INSTRUCTIONS-requesting-code-review.md](skills/collaboration/INSTRUCTIONS-requesting-code-review.md) | `skill-zips/requesting-code-review.zip` |
| **receiving-code-review** | Responding to feedback | [INSTRUCTIONS-receiving-code-review.md](skills/collaboration/INSTRUCTIONS-receiving-code-review.md) | `skill-zips/receiving-code-review.zip` |
| **finishing-a-development-branch** | Branch completion | [INSTRUCTIONS-finishing-a-development-branch.md](skills/collaboration/INSTRUCTIONS-finishing-a-development-branch.md) | `skill-zips/finishing-a-development-branch.zip` |
| **using-git-worktrees** | Parallel development | [INSTRUCTIONS-using-git-worktrees.md](skills/collaboration/INSTRUCTIONS-using-git-worktrees.md) | `skill-zips/using-git-worktrees.zip` |
| **dispatching-parallel-agents** | Task distribution | [INSTRUCTIONS-dispatching-parallel-agents.md](skills/collaboration/INSTRUCTIONS-dispatching-parallel-agents.md) | `skill-zips/dispatching-parallel-agents.zip` |
| **subagent-driven-development** | Delegated implementation | [INSTRUCTIONS-subagent-driven-development.md](skills/collaboration/INSTRUCTIONS-subagent-driven-development.md) | `skill-zips/subagent-driven-development.zip` |

## Meta Skills

Skill creation and management:

| Skill | Description | Instructions | ZIP Location |
|-------|-------------|--------------|--------------|
| **writing-skills** | Creating new skills | [INSTRUCTIONS-writing-skills.md](skills/meta/INSTRUCTIONS-writing-skills.md) | `skill-zips/writing-skills.zip` |
| **sharing-skills** | Contributing skills | [INSTRUCTIONS-sharing-skills.md](skills/meta/INSTRUCTIONS-sharing-skills.md) | `skill-zips/sharing-skills.zip` |
| **testing-skills-with-subagents** | Validating skill effectiveness | [INSTRUCTIONS-testing-skills-with-subagents.md](skills/meta/INSTRUCTIONS-testing-skills-with-subagents.md) | `skill-zips/testing-skills-with-subagents.zip` |

## Content Skills

Writing, UX, and content creation:

| Skill | Description | Instructions | ZIP Location |
|-------|-------------|--------------|--------------|
| **ux-writing** | User experience writing | [INSTRUCTIONS-ux-writing.md](skills/content/INSTRUCTIONS-ux-writing.md) | `skill-zips/ux-writing.zip` |
| **linkedin-thought-leadership** | LinkedIn content creation | [INSTRUCTIONS-linkedin-thought-leadership.md](skills/content/INSTRUCTIONS-linkedin-thought-leadership.md) | `skill-zips/linkedin-thought-leadership.zip` |
| **ai-text-humanization** | Humanizing AI-generated text | [INSTRUCTIONS-ai-text-humanization.md](skills/content/INSTRUCTIONS-ai-text-humanization.md) | `skill-zips/ai-text-humanization.zip` |
| **humanisation-texte-ia-francais** | French text humanization | [INSTRUCTIONS-humanisation-texte-ia-francais.md](skills/content/INSTRUCTIONS-humanisation-texte-ia-francais.md) | `skill-zips/humanisation-texte-ia-francais.zip` |
| **voice-chart-template** | Voice and tone guidelines | [INSTRUCTIONS-voice-chart-template.md](skills/content/INSTRUCTIONS-voice-chart-template.md) | `skill-zips/voice-chart-template.zip` |
| **error-message-template** | Error message writing | [INSTRUCTIONS-error-message-template.md](skills/content/INSTRUCTIONS-error-message-template.md) | `skill-zips/error-message-template.zip` |
| **patterns-detailed** | UX writing patterns | [INSTRUCTIONS-patterns-detailed.md](skills/content/INSTRUCTIONS-patterns-detailed.md) | `skill-zips/patterns-detailed.zip` |
| **thought-leadership-angles** | Content angles and perspectives | [INSTRUCTIONS-thought-leadership-angles.md](skills/content/INSTRUCTIONS-thought-leadership-angles.md) | `skill-zips/thought-leadership-angles.zip` |
| **linkedin-formats** | LinkedIn post formats | [INSTRUCTIONS-linkedin-formats.md](skills/content/INSTRUCTIONS-linkedin-formats.md) | `skill-zips/linkedin-formats.zip` |
| **engagement-frameworks** | Content engagement strategies | [INSTRUCTIONS-engagement-frameworks.md](skills/content/INSTRUCTIONS-engagement-frameworks.md) | `skill-zips/engagement-frameworks.zip` |
| **accessibility-guidelines** | Accessibility best practices | [INSTRUCTIONS-accessibility-guidelines.md](skills/content/INSTRUCTIONS-accessibility-guidelines.md) | `skill-zips/accessibility-guidelines.zip` |

## Platform-Specific Notes

### Claude Desktop Pro Features

**Advantages:**
- TodoWrite integration (with Claude Code plugin)
- Automatic progress tracking
- Local file system access
- Command execution capabilities
- Better code editing experience
- Skills available account-wide (ZIP method)
- Automatic skill suggestions in some contexts

**Limitations:**
- Requires desktop application
- Pro subscription ($20/month)
- Skills must be uploaded/installed
- Manual update management

### Installation Methods

#### ZIP Upload (Recommended)

**Setup:**
1. All ZIPs pre-generated in `skill-zips/` directory
2. Claude Desktop → Settings → Capabilities
3. Click "Upload skill" for each ZIP
4. Skills available account-wide

**Advantages:**
- Clean, organized packages
- Account-wide availability
- Easy updates (re-upload ZIP)
- Better activation experience

**When to use:**
- Want skills available everywhere
- Using multiple projects
- Prefer organized structure

#### Project Knowledge

**Setup:**
1. Create project in Claude Desktop
2. Add skill files to project knowledge
3. Set project custom instructions
4. Skills available in that project only

**Advantages:**
- Project-specific configuration
- Can customize skills per project
- Good for testing modifications

**When to use:**
- Need project-specific customization
- Testing skill changes
- Don't need account-wide access

### Custom Instructions

All instruction files include:
- Recommended custom instructions
- Platform-specific activation patterns
- TodoWrite integration examples
- Automation guidance

### Usage Pattern

```
User: "Help me implement feature X"

Claude: "I'm using the [skill-name] skill for this.

         TodoWrite tracking:
         ✓ Phase 1: Complete
         ⧖ Phase 2: In progress
         ○ Phase 3: Pending

         [Follows skill methodology]"
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

## Automation

### Generating ZIPs

All ZIPs are pre-generated, but you can regenerate:

```bash
cd superpowers-desktop/pro-setup
./create-skill-zips.sh
```

Output: All skill ZIPs in `skill-zips/` directory

### Bulk Installation

Install core skills first:
1. test-driven-development
2. systematic-debugging
3. brainstorming
4. using-superpowers

Then add others as needed.

## Troubleshooting

### Skill Not Activating?

1. **Check installation:**
   - Settings → Capabilities → Verify skill listed
   - Or check project knowledge has file

2. **Explicit invocation:**
   - Always invoke by name
   - Example: "Use test-driven-development skill"

3. **Verify ZIP upload:**
   - Check upload succeeded
   - Try: "Check your capabilities for [skill-name]"

### TodoWrite Not Working?

- Available in Claude Code plugin, not basic Desktop
- Fall back to manual tracking
- Use markdown checklists in responses
- See instruction files for manual tracking templates

### ZIP Upload Failed?

- Check ZIP file integrity
- Verify from correct directory
- Try re-downloading/regenerating ZIP
- Check Settings → Capabilities for error messages

### Multiple Skills?

Install all needed skills via ZIP:
```
Settings → Capabilities → Upload skill (repeat for each)
```

Invoke by name:
```
"Use brainstorming to design, then test-driven-development to implement"
```

## Contributing

Found issues or improvements for instruction files?

- **Issues:** https://github.com/obra/superpowers/issues
- **Discussions:** https://github.com/obra/superpowers/discussions
- **PRs:** Contributions welcome!

## Updates

### Skill Updates

1. Pull latest from repository
2. Regenerate ZIPs: `./create-skill-zips.sh`
3. Re-upload to Claude Desktop
4. Overwrites previous versions

### Instruction Updates

Instruction files versioned with repository:
- Check [RELEASE-NOTES.md](../../RELEASE-NOTES.md)
- Pull latest changes
- Re-upload if using Project Knowledge method
- ZIP method: regenerate and re-upload

## Related Documentation

- [Skills ZIP Upload Guide](SKILLS-ZIP-UPLOAD-GUIDE.md) - Recommended method
- [Setup Guide](SETUP.md) - Project Knowledge method
- [Custom Instructions](custom-instructions.txt)
- [Main README](README.md)
- [General Superpowers README](../../README.md)

## Scripts

### create-skill-zips.sh

Generates all skill ZIPs:
```bash
cd superpowers-desktop/pro-setup
./create-skill-zips.sh
```

Features:
- Creates ZIPs for all skills
- Includes supporting files
- Proper structure for Claude Desktop
- Output to `skill-zips/` directory

See [GENERATED-ZIPS-MANIFEST.md](GENERATED-ZIPS-MANIFEST.md) for details.

---

**Total Skills:** 31 skills with platform-specific instructions
**Last Updated:** 2025-11-13
**Platform:** Claude Desktop Pro
**Setup Methods:** ZIP Upload (recommended) | Project Knowledge
