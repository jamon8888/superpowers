# ChatGPT Projects Setup Guide

**Complete tutorial for setting up Superpowers in ChatGPT Projects**

**Time:** 10 minutes (one-time setup)

**Result:** Persistent skills available across all conversations in your project

---

## What are ChatGPT Projects?

ChatGPT Projects (Plus, Team, Enterprise) allow you to:
- ✅ Upload files that persist across conversations
- ✅ Set custom instructions for the project
- ✅ Organize related work in one place
- ✅ Access project from any conversation

**Very similar to Claude Desktop Projects!**

---

## Prerequisites

- ✅ ChatGPT Plus, Team, or Enterprise subscription ($20/month)
- ✅ 10 minutes of time
- ✅ Skill files from this repository

---

## Step-by-Step Setup

### Step 1: Create a New Project

1. **Go to ChatGPT:** https://chat.openai.com
2. **Click your name** (bottom left)
3. **Select "My Projects"**
4. **Click "+ New Project"**
5. **Name:** "Superpowers Development" (or your preferred name)
6. **Click "Create Project"**

---

### Step 2: Upload Skill Files

#### Option A: Upload All Skills (Recommended)

**Upload all 20+ skill files to your project:**

Navigate to: `knowledge-files/` directory and upload ALL files:

**Core Skills (4 files):**
- core/test-driven-development.md
- core/systematic-debugging.md
- core/brainstorming.md
- core/using-superpowers.md

**Testing Skills (3 files):**
- testing/testing-anti-patterns.md
- testing/condition-based-waiting.md
- testing/testing-skills-with-subagents.md

**Debugging Skills (3 files):**
- debugging/defense-in-depth.md
- debugging/root-cause-tracing.md
- debugging/verification-before-completion.md

**Collaboration Skills (8 files):**
- collaboration/writing-plans.md
- collaboration/executing-plans.md
- collaboration/requesting-code-review.md
- collaboration/receiving-code-review.md
- collaboration/finishing-a-development-branch.md
- collaboration/using-git-worktrees.md
- collaboration/dispatching-parallel-agents.md
- collaboration/subagent-driven-development.md

**Meta Skills (3 files):**
- meta/writing-skills.md
- meta/sharing-skills.md
- meta/testing-skills-with-subagents.md

**How to upload:**
1. Click **"Add to Project"** → **"Upload files"**
2. Select all 20 files from `knowledge-files/` directory
3. Wait for upload to complete

**Total:** 20 skill files

#### Option B: Start with Core Skills Only

If you want to start small:

1. Upload only the `core/` directory (4 files):
   - test-driven-development.md
   - systematic-debugging.md
   - brainstorming.md
   - using-superpowers.md
2. Add more categories later as needed

---

### Step 3: Set Custom Instructions

Custom instructions help ChatGPT automatically use the skills.

1. **In your project, click the settings icon** (gear)
2. **Find "Instructions" section**
3. **Paste this:**

```markdown
You are an expert AI pair programmer using Superpowers skills.

# Core Mandate
- Test-Driven Development (TDD) is MANDATORY for all code
- Systematic Debugging (no guessing) is MANDATORY for all bugs
- Brainstorming before implementation for new features
- YAGNI ruthlessly - simplicity as primary goal

# Available Skills (in Project Files)
Check project files for detailed workflows. You have 20+ skills:

**Core:** test-driven-development.md, systematic-debugging.md, brainstorming.md, using-superpowers.md
**Testing:** testing-anti-patterns.md, condition-based-waiting.md, testing-skills-with-subagents.md
**Debugging:** defense-in-depth.md, root-cause-tracing.md, verification-before-completion.md
**Collaboration:** writing-plans.md, executing-plans.md, requesting-code-review.md, receiving-code-review.md, finishing-a-development-branch.md, using-git-worktrees.md, dispatching-parallel-agents.md, subagent-driven-development.md
**Meta:** writing-skills.md, sharing-skills.md

# Workflow
1. Identify which skill applies to the request
2. Announce: "I'm using [skill-name] to [action]"
3. Check project files for skill details
4. Follow the skill process exactly
5. Track checklists explicitly
6. Never skip verification steps

# Skill Selection
- Implementing features → brainstorming.md + test-driven-development.md
- Fixing bugs → systematic-debugging.md + test-driven-development.md
- Code review → requesting-code-review.md or receiving-code-review.md
- Complex tasks → writing-plans.md + executing-plans.md

# RED-GREEN-REFACTOR (TDD)
1. RED: Write failing test (one behavior)
2. Verify RED: Watch it fail (MANDATORY)
3. GREEN: Minimal implementation
4. Verify GREEN: Watch it pass (MANDATORY)
5. REFACTOR: Clean up
6. Repeat

# Systematic Debugging
1. Root Cause Investigation (no fixes yet)
2. Pattern Recognition (working vs broken)
3. Hypothesis Formation (specific theory)
4. Fix with Test (write test, implement, verify)

# Red Flags - STOP IMMEDIATELY
- Code before test → DELETE, start over
- Test passes immediately → Not testing anything
- Skipping verification → Go back, run tests
- "Quick fix" → Return to root cause investigation
- Guessing bugs → Gather evidence first

Always announce which skill you're using and track progress explicitly.
```

4. **Click "Save"**

---

### Step 4: Verify Installation

Start a new conversation **in your project** and test:

#### Test 1: Skill Discovery

```
You: "I need to implement a new login feature"

Expected: ChatGPT mentions brainstorming and TDD

ChatGPT: "I'm using brainstorming.md to design this feature first.
          Let me ask some clarifying questions..."
```

#### Test 2: TDD Enforcement

```
You: "Write code for email validation"

Expected: ChatGPT writes test first

ChatGPT: "I'm using test-driven-development.md.

          RED Phase: Writing failing test first...

          test('validates email format', () => {
            expect(validateEmail('invalid')).toBe(false);
          });

          Let me run this to verify it fails..."
```

#### Test 3: Debugging Protocol

```
You: "My tests are failing with TypeError"

Expected: ChatGPT investigates root cause

ChatGPT: "I'm using systematic-debugging.md.

          Phase 1: Root Cause Investigation
          Let me read the error carefully..."
```

---

## Using Your Project

### Starting Conversations

**Always start conversations in your project:**

1. Click **"Superpowers Development"** in left sidebar
2. Start new conversation in that project
3. ChatGPT automatically has access to all skills

### Invoking Skills

**Explicit invocation (always works):**
```
"Use test-driven-development.md to implement this"
"Follow systematic-debugging.md for this bug"
"Reference brainstorming.md to design this feature"
```

**Relying on custom instructions (sometimes works):**
- Custom instructions remind ChatGPT to check skills
- Not as reliable as explicit invocation
- Works best for obvious task matches

**Best practice:** Explicitly reference the skill when starting a task.

---

## Comparison to Claude Desktop

### Similarities ✅
- Projects feature works the same way
- Upload individual skill files
- Set custom instructions
- Skills persist across conversations
- Same setup time (~10-15 minutes)

### Differences

| Feature | Claude Desktop | ChatGPT |
|---------|---------------|---------|
| **File upload** | Supports folders | Individual files only |
| **ZIP upload** | Yes (via Settings → Capabilities) | No (Projects use individual files) |
| **Custom instructions** | Per-project | Per-project |
| **Access** | Projects in sidebar | Projects in menu |

**Same approach, slightly different UI!**

---

## Tips for Success

### 1. Start Every Task Right

Before coding or debugging:
- Ask yourself: "Is there a skill for this?"
- Check project files
- Reference the skill explicitly

### 2. Organize by Project Type

Create multiple projects:
- **"Superpowers - Web Development"** (if you mostly do web)
- **"Superpowers - Backend"** (if you mostly do backend)
- **"Superpowers - General"** (for everything else)

### 3. Core Skills Are Mandatory

Use these for almost everything:
- `test-driven-development.md` - **Any feature/bugfix**
- `systematic-debugging.md` - **Any bug/failure**
- `brainstorming.md` - **Before new features**
- `using-superpowers.md` - **Understanding the system**

### 4. Announce Skill Usage

Always say:
```
"I'm using [skill-name] to [action]"
```

This helps verify ChatGPT is following the skill.

### 5. Track Explicitly

No automatic TodoWrite. Track manually:
- Use checkboxes in responses
- Update status explicitly
- Don't skip checklist items

---

## Common Issues

### "ChatGPT Isn't Using Skills"

**Problem:** ChatGPT responds without referencing skills.

**Solution:**
- Explicitly invoke: "Use test-driven-development.md for this"
- Check custom instructions are set
- Remind: "Check project files for relevant skills"
- Make sure you're in the project (not a regular conversation)

### "Too Many Files in Context"

**Problem:** Large project files compete for context.

**Solution:**
- Start with core skills only (4 files)
- Add categories as needed
- Create multiple projects for different work types

### "Skills Seem Out of Date"

**Problem:** Original skills were updated.

**Solution:**
- Check for updates to superpowers-chatgpt
- Download new skill files
- Re-upload to your project (replace old files)

---

## Workflow Examples

### Example 1: Implementing a Feature

```
[In Superpowers Development project]

You: "I need to add email validation to the signup form"

ChatGPT: "I'm using brainstorming.md to design this feature.

          Let me ask some clarifying questions:
          1. What email format requirements do you have?
          2. Should we validate in real-time or on submit?
          3. What should happen with invalid emails?

          [After design]

          I'm using test-driven-development.md to implement.

          RED Phase: Writing failing test...

          test('rejects invalid email', () => {
            expect(validateEmail('invalid')).toBe(false);
          });

          Let me run this to verify it fails..."
```

### Example 2: Debugging an Issue

```
[In Superpowers Development project]

You: "The login endpoint returns 500 errors"

ChatGPT: "I'm using systematic-debugging.md for this.

          Phase 1: Root Cause Investigation

          Let me gather information:
          1. What's the exact error message?
          2. Stack trace?
          3. When did this start happening?
          4. Does it happen consistently?

          [Investigation continues through 4 phases]"
```

---

## Customization

### Adding Your Own Skills

You can add custom skills to your project:

1. Create a new `.md` file following the skill format:
```markdown
---
name: your-skill-name
description: Use when [triggering conditions] - [what it does]
---

# Your Skill Name

## Overview
...
```

2. Upload to your project
3. Update custom instructions to mention new skill

### Adapting Custom Instructions

Modify project instructions to add:
- Team-specific practices
- Project requirements
- Coding standards
- Language preferences

**Example additions:**
```markdown
# Team-Specific Rules
- Use TypeScript for all code
- Follow Airbnb style guide
- Maximum function length: 20 lines
- All async functions must use condition-based-waiting patterns
```

---

## Maintenance

### Updating Skills

When new versions are released:

1. Download updated `knowledge-files/` directory
2. In your project, delete old skill files
3. Upload new skill files
4. Update custom instructions if needed

### Backing Up Your Project

Projects are stored by ChatGPT. To backup:
- Export conversations regularly
- Keep a copy of your skill files locally
- Document any custom skills you've added

---

## Team Setup (Team/Enterprise Plans)

### Shared Team Project

For teams with ChatGPT Team/Enterprise:

1. **Create team-wide project** (admins only)
2. **Upload all skills** to team project
3. **Set team custom instructions** (add team standards)
4. **Share with team** - All members get access
5. **Everyone uses same project** for consistent practices

**Benefits:**
- Centralized skill management
- Consistent development practices
- Easy onboarding for new team members
- Update once, affects everyone

See [TEAM-SETUP-GUIDE.md](../team-mode/TEAM-SETUP-GUIDE.md) for details.

---

## Next Steps

**You're ready to use Superpowers!**

1. **Start with a small task** - Try TDD on a simple function
2. **Use explicit invocation** - "Use test-driven-development.md"
3. **Be explicit** - Always invoke skills by name
4. **Track progress** - Maintain checklists in responses
5. **Iterate** - The more you use skills, the more natural they become

---

## Getting Help

- **Skill usage questions:** Check the skill file in your project
- **Installation issues:** Re-check steps above
- **Bug reports:** [GitHub Issues](https://github.com/obra/superpowers/issues)
- **General questions:** [Discussions](https://github.com/obra/superpowers/discussions)

---

## Comparison to Custom GPTs

**Why Projects instead of Custom GPTs?**

| Feature | Projects | Custom GPT |
|---------|----------|------------|
| **Setup** | Upload files | Configure GPT + upload files |
| **Complexity** | Simple | More complex |
| **Updates** | Replace files | Edit GPT configuration |
| **Sharing** | Team projects | Public/link sharing |
| **Best for** | Personal/team work | Public distribution |

**Projects are simpler and more aligned with Claude Desktop's approach.**

For public distribution or extensive sharing, Custom GPTs are still an option, but Projects are recommended for personal/team use.

---

**Happy coding with Superpowers! 🚀**
