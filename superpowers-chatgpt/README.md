# Superpowers for ChatGPT

**Proven workflows for AI coding assistants, adapted for ChatGPT.**

This distribution brings the Superpowers skills library to ChatGPT users, with packages optimized for Free and Plus subscription tiers.

---

## What Is This?

Superpowers is a comprehensive skills library providing:
- **Test-Driven Development** - RED-GREEN-REFACTOR cycle (mandatory)
- **Systematic Debugging** - 4-phase root cause process
- **Brainstorming** - Socratic design refinement
- **20+ Additional Skills** - Testing, collaboration, code review, git workflows

Originally built as a Claude Code plugin, this distribution adapts the skills for ChatGPT using **ChatGPT Projects** (similar to Claude Desktop Projects).

---

## Choose Your Path

### 💡 Free Users ($0)

**Full Superpowers compatibility, zero cost.**

- ✅ **FULL 20+ skills library** (all-skills.md)
- ✅ All workflows (core, testing, debugging, collaboration, meta)
- ✅ Upload per conversation
- ⚠️ Must upload files each conversation
- ❌ No persistent knowledge
- ❌ No custom instructions

**→ [Get Started with Free Mode](free-mode/QUICK-START.md)**

### ⭐ Plus Users ($20/month)

**Use ChatGPT Projects - Same as Claude Desktop!**

- ✅ **Create "Superpowers" Project** (10-minute setup)
- ✅ **Persistent skills** - Upload once, use always
- ✅ **Custom instructions** - Automatic skill reminders
- ✅ All 20+ skills in project files
- ✅ **Same approach as Claude Desktop Projects**
- ✅ No per-conversation setup

**→ [Get Started with Plus Mode](plus-mode/PROJECTS-SETUP-GUIDE.md)**

### 🏢 Team/Enterprise

**Shared team projects for consistent workflows.**

- ✅ Organization-wide Superpowers project
- ✅ All team members access same skills
- ✅ Centralized updates and customization
- ✅ Consistent development practices

**→ [Get Started with Team Mode](team-mode/TEAM-SETUP-GUIDE.md)**

---

## Feature Comparison

| Feature | ChatGPT Free | ChatGPT Plus (Projects) | Claude Desktop Pro (Projects) |
|---------|--------------|------------------------|------------------------------|
| **Persistent skills** | ❌ No | ✅ Project-wide | ✅ Project-wide |
| **Setup time** | 2 min/session | 10 min once | 10-15 min once |
| **Skills available** | 20+ (upload) | 20+ (in project) | 20+ (in project or ZIPs) |
| **Custom instructions** | ❌ | ✅ Per-project | ✅ Per-project |
| **Access method** | Upload file | Use project | Use project |
| **Skill activation** | Manual | Reminder-based | Reminder-based |
| **Monthly cost** | $0 | $20 | $20 |

**ChatGPT Projects = Claude Desktop Projects** (same experience!)

---

## Why ChatGPT Projects?

**Same approach as Claude Desktop Projects:**
- ✅ Upload skill files to a project
- ✅ Set custom instructions
- ✅ Skills persist across conversations
- ✅ Organized, professional workflow

**No Custom GPT needed** - Projects are simpler and work great!

---

## What Works in Each Tier

### Free Mode ✅

**Available:**
- All 20+ skills in single file
- Same workflows as Plus
- Full TDD, debugging, collaboration

**Limitations:**
- Upload each conversation
- No persistence
- Manual skill invocation

### Plus Mode (Projects) ✅

**Everything works:**
- ✅ Create Superpowers project
- ✅ Upload 20 skill files once
- ✅ Custom instructions for reminders
- ✅ Persistent across conversations
- ✅ Same as Claude Desktop experience
- ✅ No per-conversation setup

### Team Mode ✅

**Plus everything from Plus:**
- ✅ Shared across organization
- ✅ Centralized management
- ✅ Consistent team practices

---

## Philosophy

The workflows in this library are built on:

- **Test-Driven Development** - Write tests first, always
- **Systematic over ad-hoc** - Process over guessing
- **Complexity reduction** - Simplicity as primary goal
- **Evidence over claims** - Verify before declaring success
- **Domain over implementation** - Work at problem level

---

## Contents

```
superpowers-chatgpt/
├── README.md (you are here)
├── free-mode/
│   ├── QUICK-START.md
│   ├── README.md
│   ├── all-skills.md (23KB, all 20+ skills)
│   └── core-workflows.md
├── plus-mode/
│   ├── PROJECTS-SETUP-GUIDE.md ⭐ Complete setup tutorial
│   ├── README.md
│   └── knowledge-files/
│       ├── core/ (4 skills)
│       ├── testing/ (3 skills)
│       ├── debugging/ (3 skills)
│       ├── collaboration/ (8 skills)
│       └── meta/ (3 skills)
└── team-mode/
    ├── TEAM-SETUP-GUIDE.md
    └── README.md
```

---

## Migration Paths

### From Free → Plus

**When to upgrade:**
- ✅ Tired of uploading files every conversation
- ✅ Want persistent project with all skills
- ✅ Want custom instructions for reminders

**What you gain:**
- Project with all skills built-in
- Custom instructions
- No more per-conversation uploads
- Better organization

### From Claude Desktop → ChatGPT

**Why use both?**
- Same workflow on both platforms
- Use whichever AI you prefer for the task
- Skills work identically

**How to migrate:**
- Same skill files work on both
- Same project-based approach
- Same custom instructions concept

---

## Quick Start by Tier

### Free Users

```markdown
1. Download all-skills.md (23KB)
2. Start new ChatGPT conversation
3. Upload the file
4. Say: "I've uploaded the Superpowers skills library"
5. Use skills: "Use Test-Driven Development to implement X"
```

### Plus Users (Recommended)

```markdown
1. Go to ChatGPT → My Projects → New Project
2. Name: "Superpowers Development"
3. Upload all 20 files from plus-mode/knowledge-files/
4. Set custom instructions (from guide)
5. Use project for all development conversations
```

### Team Users

```markdown
1. Create organization-wide project (admin)
2. Upload all skills
3. Configure team custom instructions
4. Share with entire team
5. Everyone uses same consistent skills
```

---

## Examples

### Using Free Mode

```
[New ChatGPT conversation]
You: [Upload all-skills.md]
     "I need to add email validation.
      Use Test-Driven Development."

ChatGPT: "Using Test-Driven Development to implement email validation.

          RED Phase: Writing failing test first...

          test('validates email format', () => {
            expect(validateEmail('invalid')).toBe(false);
          });

          Let me run this to verify it fails..."
```

### Using Plus Mode (Projects)

```
[In Superpowers Development project]
You: "I need to add email validation"

ChatGPT: "I'm using test-driven-development.md for this feature.

          RED Phase: Writing failing test first...

          test('validates email format', () => {
            expect(validateEmail('invalid')).toBe(false);
          });

          Let me run this to verify it fails..."
```

**Notice:** Plus mode with projects is cleaner - no file upload needed!

---

## Comparison to Claude Desktop

| Aspect | ChatGPT Projects | Claude Desktop Projects |
|--------|------------------|------------------------|
| **Setup approach** | Upload files to project | Upload files OR ZIPs to project |
| **Custom instructions** | Per-project | Per-project |
| **Persistence** | Project-wide | Project-wide |
| **Skill files** | 20 individual .md files | 20 individual .md files OR 20 ZIPs |
| **Experience** | ✅ Same | ✅ Same |
| **File management** | Replace files | Replace files or ZIPs |

**Both platforms use Projects the same way!**

The main difference is Claude also offers ZIP upload via Settings → Capabilities, but Projects work identically on both platforms.

---

## Support

- **Issues:** [GitHub Issues](https://github.com/obra/superpowers/issues)
- **Original Plugin:** [Superpowers for Claude Code](https://github.com/obra/superpowers)
- **Community:** [Discussions](https://github.com/obra/superpowers/discussions)

---

## License

MIT License - see [LICENSE](../LICENSE) file for details.

---

## Acknowledgments

- **Original Superpowers Plugin:** Jesse Vincent ([@obra](https://github.com/obra))
- **ChatGPT Adaptation:** This distribution
- **Community:** All contributors to the skills library

---

## Decision Guide

**Still not sure which path?**

**Use Free Mode if:**
- ✅ You can't afford Plus
- ✅ You only need occasional access
- ✅ 2-minute setup per session is fine

**Use Plus Mode (Projects) if:**
- ✅ You have ChatGPT Plus ($20/month)
- ✅ You want persistent skills
- ✅ You use AI coding daily
- ✅ You want custom instructions
- ✅ Same experience as Claude Desktop

**Use Team Mode if:**
- ✅ You have Team/Enterprise plan
- ✅ You want org-wide deployment
- ✅ You want centralized management

**Still unsure?** Start with Free mode. If you find it useful but tedious, upgrade to Plus and create your project.

---

**Ready to get started?**

- **[Free Mode Quick-Start →](free-mode/QUICK-START.md)**
- **[Plus Mode Projects Setup →](plus-mode/PROJECTS-SETUP-GUIDE.md)** ⭐ Recommended
- **[Team Mode Setup →](team-mode/TEAM-SETUP-GUIDE.md)**
