# Superpowers Free Mode Quick-Start (ChatGPT)

**Time Required:** 2 minutes per conversation

**Cost:** $0 (ChatGPT free tier)

---

## What You Get

**Free mode provides:**
- ✅ **FULL 20+ skills library** (all-skills.md)
- ✅ All workflows (core, testing, debugging, collaboration, meta)
- ✅ Same content as Plus mode
- ✅ Zero cost

**What you don't get:**
- ❌ Persistent skills (must upload each conversation)
- ❌ Custom GPT
- ❌ Automatic skill activation
- ❌ Link sharing

**Good enough for:** Full workflow access, learning, evaluation, occasional use

**Upgrade to Plus?** Create a Custom GPT for permanent persistence and sharing. See [Plus Mode](../plus-mode/GPT-SETUP-GUIDE.md).

---

## Quick Start (Do This Every Conversation)

### Method 1: Complete Skills Library (Recommended)

1. **Download** `all-skills.md` from this directory
2. **Start new ChatGPT conversation**
3. **Upload file** using the attachment icon
4. **Say:** "I've uploaded the Superpowers skills library"

**What's included:**
- All 20+ skills in condensed format (~23KB)
- Core: TDD, Debugging, Brainstorming, Using Superpowers
- Testing: Anti-patterns, Async patterns, Skill testing
- Debugging: Defense in depth, Root cause tracing, Verification
- Collaboration: Plans, Code review, Git workflows, Parallel work
- Meta: Writing skills, Sharing skills

**Best for:** Full Superpowers experience at zero cost

### Method 2: Core Workflows Only

1. **Download** `core-workflows.md`
2. **Upload to conversation**
3. **Say:** "Follow the core workflows"

**What's included:**
- Test-Driven Development
- Systematic Debugging
- Brainstorming

**Best for:** Quick start with just essentials

---

## Using the Workflows

### For Implementing Features

```
You: [Upload all-skills.md]
     "Use Test-Driven Development to implement user validation"

ChatGPT: "I'll follow the RED-GREEN-REFACTOR cycle from Test-Driven Development.

          RED Phase: Writing failing test first..."
```

### For Debugging Issues

```
You: [Upload all-skills.md]
     "Use Systematic Debugging for this login error"

ChatGPT: "I'll follow the 4-phase Systematic Debugging process.

          Phase 1: Root Cause Investigation
          Let me read the error carefully..."
```

### For Designing Features

```
You: [Upload all-skills.md]
     "Use Brainstorming to design a shopping cart feature"

ChatGPT: "I'll use the Socratic Brainstorming method.

          Let me ask clarifying questions one at a time:
          1. What should happen when users add items?..."
```

---

## Tips for Success

### 1. Upload at Start of Every Conversation

ChatGPT free tier = no persistent knowledge. Upload fresh each time.

### 2. Be Explicit About Which Skill

Don't just upload and hope:
- ❌ "Here's a file" (ambiguous)
- ✅ "Use Test-Driven Development from all-skills.md" (explicit)

### 3. Reference Skills During Conversation

```
"What does Systematic Debugging say about Phase 2?"
"Check the Test-Driven Development red flags"
"According to all-skills.md, what's next?"
```

### 4. Keep Files Handy

Create a workflow:
1. Keep all-skills.md in easy-to-access folder
2. Drag and drop into conversations
3. Becomes quick muscle memory

---

## Workflow Reference

### Test-Driven Development (TDD)

**The Iron Law:** NO PRODUCTION CODE WITHOUT A FAILING TEST FIRST

**Cycle:**
1. RED - Write test
2. Verify RED - Watch fail (mandatory)
3. GREEN - Implement minimal code
4. Verify GREEN - Watch pass (mandatory)
5. REFACTOR - Clean up
6. Repeat

### Systematic Debugging

**The Iron Law:** NO FIXES WITHOUT ROOT CAUSE FIRST

**Phases:**
1. Root Cause - Investigate, reproduce, evidence
2. Pattern - Working examples, comparison
3. Hypothesis - Form theory, test minimally
4. Fix - Create test, implement, verify

### Brainstorming

**Purpose:** Design first, implement second

**Process:**
1. Understand - Ask questions one at a time
2. Explore - Propose 2-3 approaches
3. Present - 200-300 words, validate incrementally
4. Document - Write to design doc

---

## Common Questions

### "Do I need to upload every time?"

**Yes.** Free tier has no persistent knowledge.

**Workaround:** Keep file easily accessible, takes 5 seconds.

### "Can I get persistence?"

**Yes!** Upgrade to ChatGPT Plus ($20/month) and create a Custom GPT.

- One-time 5-minute setup
- Permanent persistence
- Click link to use anytime
- Share with teammates

See [Plus Mode Setup Guide](../plus-mode/GPT-SETUP-GUIDE.md).

### "What if ChatGPT doesn't follow the workflow?"

**Remind explicitly:**
```
"According to all-skills.md, what should we do first?"
"Check the TDD checklist in all-skills.md"
"The Systematic Debugging skill says no fixes without root cause"
```

---

## Upgrading to Plus

### When to Consider Plus

**Upgrade if:**
- ✅ Uploading every conversation feels tedious
- ✅ You use Superpowers daily
- ✅ You want to share with teammates
- ✅ You want automatic skill activation

**What you gain:**
- **Custom "Superpowers" GPT** with all skills built-in
- **Permanent persistence** - Click link, start using
- **Shareable via link** - Send to teammates
- **Automatic skill selection** - GPT knows when to use TDD/debugging
- **Zero setup per conversation**

**Migration:**
1. Subscribe to ChatGPT Plus ($20/month)
2. Follow [GPT Setup Guide](../plus-mode/GPT-SETUP-GUIDE.md)
3. Create your Superpowers GPT (5 minutes)
4. Never upload files again!

---

## Example Session

```
[New ChatGPT conversation]

You: [Uploads all-skills.md]
     "I need to add email validation to the signup form.
      Use Superpowers skills for this."

ChatGPT: "I see you've uploaded the Superpowers skills library.

          For email validation, I'll use:
          1. Brainstorming (if design is unclear)
          2. Test-Driven Development (for implementation)

          Is the design clear, or should we brainstorm first?"

You: "Design is clear - just validate email format"

ChatGPT: "Great! Using Test-Driven Development.

          RED Phase: Writing failing test

          test('rejects invalid email format', () => {
            expect(validateEmail('notanemail')).toBe(false);
          });

          Let me run this to verify it fails..."

[Follows TDD cycle through to completion]
```

---

## Troubleshooting

### ChatGPT Isn't Following Workflows

**Try:**
1. More explicit: "Section 1 of all-skills.md says..."
2. Quote directly: "The TDD Iron Law is: NO PRODUCTION CODE WITHOUT A FAILING TEST FIRST"
3. Checklist: "What's the next step in RED-GREEN-REFACTOR?"

### File Upload Issues

**Solutions:**
- Ensure file is `.md` format
- Check file size (<25MB limit)
- Try re-downloading from repo
- Verify file isn't corrupted

---

## Files in This Directory

```
free-mode/
├── QUICK-START.md (you are here)
├── README.md (detailed guide)
├── all-skills.md (ALL 20+ skills, 23KB)
└── core-workflows.md (3 core workflows only)
```

---

## Next Steps

1. **Download** `all-skills.md`
2. **Try it** on a small task
3. **Follow exactly** - Don't skip steps
4. **Evaluate** - Does this help?
5. **Consider Plus** - If you like it but uploading is tedious

---

**Ready to start?**

1. Download `all-skills.md`
2. Start a new ChatGPT conversation
3. Upload the file
4. Say: "I've uploaded the Superpowers skills library"
5. Reference skills: "Use Test-Driven Development to implement X"

**Good luck! 🚀**
