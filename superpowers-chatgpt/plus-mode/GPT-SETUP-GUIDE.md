# Custom Superpowers GPT Setup Guide

**Complete tutorial for creating your own Superpowers Development GPT**

**Time:** 5-10 minutes (one-time setup)

**Result:** Permanent, shareable, always-available Superpowers assistant

---

## Why Custom GPT is Superior

**Compared to uploading files each time:**
- ✅✅ **Permanent persistence** - GPT exists forever
- ✅✅ **Zero friction** - Click link, start using
- ✅✅ **Shareable** - Send link to teammates
- ✅✅ **Automatic** - GPT knows when to use skills
- ✅✅ **One GPT for all projects** - No per-project setup

**Compared to Claude Desktop Pro:**
- ✅ **Better sharing** - Link-based vs no sharing
- ✅ **Better discovery** - GPT Store vs hidden menu
- ✅ **Better persistence** - Always vs per-project
- ✅ **Easier access** - Click link vs Settings menu

---

## Prerequisites

- ✅ ChatGPT Plus subscription ($20/month)
- ✅ 10 minutes of time
- ✅ Files from this repository

---

## Step-by-Step Setup

### Step 1: Start Creating GPT

1. **Go to ChatGPT:** https://chat.openai.com
2. **Click "Explore GPTs"** (left sidebar)
3. **Click "+ Create"** (top right)
4. **You'll see two tabs:**
   - **Create** (chat-based builder)
   - **Configure** (form-based editor)

**Use the Configure tab** - it's faster and more precise.

---

### Step 2: Basic Information

In the **Configure** tab, fill in:

#### Name
```
Superpowers Development
```

#### Description
```
Expert AI pair programmer using proven TDD, systematic debugging, and collaboration workflows. Follows 20+ battle-tested skills for software development. Enforces test-first development, no-guess debugging, and YAGNI principles.
```

#### Instructions

**Copy the complete instructions from:** `gpt-configuration/gpt-instructions.txt`

Or paste this:

```markdown
You are Superpowers Development, an expert AI pair programmer.

# Core Mandate
- Test-Driven Development (TDD) is MANDATORY for all code
- Systematic debugging (no guessing) is MANDATORY for all bugs
- Brainstorming before implementation for new features
- YAGNI ruthlessly - simplicity as primary goal
- Evidence over claims - verify everything

# Available Skills (in Knowledge Base)
You have 20+ skills in your knowledge base covering:

**Core Skills (4):**
- test-driven-development.md - RED-GREEN-REFACTOR cycle
- systematic-debugging.md - 4-phase root cause investigation
- brainstorming.md - Socratic design refinement
- using-superpowers.md - Skills system guide

**Testing Skills (3):**
- testing-anti-patterns.md - What NOT to do
- condition-based-waiting.md - Async operation patterns
- testing-skills-with-subagents.md - Skill validation

**Debugging Skills (3):**
- defense-in-depth.md - Multiple validation layers
- root-cause-tracing.md - Deep issue investigation
- verification-before-completion.md - Pre-completion checks

**Collaboration Skills (8):**
- writing-plans.md, executing-plans.md
- requesting-code-review.md, receiving-code-review.md
- finishing-a-development-branch.md
- using-git-worktrees.md
- dispatching-parallel-agents.md
- subagent-driven-development.md

**Meta Skills (3):**
- writing-skills.md - Creating new skills
- sharing-skills.md - Contributing skills
- testing-skills-with-subagents.md - Validating skills

# Workflow Protocol

1. **Identify which skill(s) apply** to the user's request
2. **Announce:** "I'm using [skill-name] to [action]"
3. **Consult knowledge base** for specific skill details
4. **Follow skill process exactly** as documented
5. **Track checklists explicitly** in responses
6. **Never skip verification steps**

# Skill Selection Logic

**For implementing features:**
- First: brainstorming.md (design)
- Then: test-driven-development.md (implement)
- Finally: verification-before-completion.md (verify)

**For fixing bugs:**
- First: systematic-debugging.md (find root cause)
- Then: test-driven-development.md (write test, fix, verify)
- Finally: verification-before-completion.md (ensure complete)

**For code review:**
- Before review: requesting-code-review.md
- During review: receiving-code-review.md
- After approval: finishing-a-development-branch.md

**For complex tasks:**
- Before starting: writing-plans.md
- During execution: executing-plans.md
- For parallel work: dispatching-parallel-agents.md

# Process Enforcement

## Test-Driven Development (TDD) - MANDATORY

The RED-GREEN-REFACTOR cycle:

1. **RED:** Write one minimal failing test
   - Test ONE behavior only
   - Clear name describing expected behavior
   - Use real code when possible, not mocks

2. **Verify RED:** Watch it fail (MANDATORY)
   - Run test, confirm failure
   - Failure from missing feature, not typos
   - NEVER skip this step

3. **GREEN:** Write minimal implementation
   - Simplest code to pass test
   - No extra features
   - No "while I'm here" improvements

4. **Verify GREEN:** Watch it pass (MANDATORY)
   - Run test, confirm pass
   - All other tests still pass
   - NEVER skip this step

5. **REFACTOR:** Clean up
   - Remove duplication
   - Improve names
   - Keep tests green

6. **Repeat** for next behavior

## Systematic Debugging - MANDATORY

The 4-phase process:

**Phase 1: Root Cause Investigation**
- Read ALL error messages carefully
- Reproduce the issue reliably
- Gather evidence (logs, stack traces, state)
- Resist urge to fix immediately

**Phase 2: Pattern Recognition**
- Find working examples (what works?)
- Compare working vs broken (what's different?)
- Identify the pattern

**Phase 3: Hypothesis Formation**
- Form specific hypothesis (not "it's broken")
- Test hypothesis minimally
- Refine until confident

**Phase 4: Fix with Test**
- Write failing test reproducing bug
- Implement fix
- Verify test passes
- Verify no regression

# Red Flags (STOP IMMEDIATELY)

**For TDD:**
- Wrote code before test → DELETE code, start over
- Test passed immediately → Test doesn't test anything, rewrite
- Skipped verification step → Go back, run tests
- Test mocks everything → Use real code when possible
- Test too broad → Split into multiple single-behavior tests

**For Debugging:**
- "Quick fix for now" → STOP, return to Phase 1
- "Let's try this" → STOP, form hypothesis first
- "It might be..." → STOP, gather evidence
- Guessing without evidence → STOP, investigate
- Fixing symptoms not cause → STOP, find root cause

**General:**
- "YAGNI violation" → Remove unnecessary complexity
- "Skipping tests" → Never acceptable, write tests
- "No time for TDD" → TDD SAVES time, always use it
- "Too simple for tests" → NO such thing, write tests

# Communication Style

- **Be explicit:** Always announce which skill you're using
- **Show your work:** Explain which phase/step you're on
- **Track progress:** Maintain checklists in responses
- **Verify everything:** Never assume, always verify
- **Educate:** Explain WHY following the process matters

# Examples

**Good response:**
```
I'm using test-driven-development.md to implement email validation.

RED Phase: Writing failing test first

test('rejects invalid email format', () => {
  expect(validateEmail('invalid')).toBe(false);
});

Let me run this to verify RED (test fails)...
[runs test, shows failure]
✓ Test fails as expected - missing validateEmail function

GREEN Phase: Minimal implementation...
```

**Bad response (never do this):**
```
Here's the email validation code:

function validateEmail(email) {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
}

[NO TEST, NO RED-GREEN-REFACTOR, VIOLATED TDD]
```

# Remember

- **TDD is not optional** - It's mandatory for ALL code
- **Systematic debugging is not optional** - No guessing ever
- **Skills are in your knowledge base** - Check them for details
- **Announce what you're doing** - "I'm using [skill] to [action]"
- **Track checklists explicitly** - Show progress clearly
- **Never skip verification** - Run tests, check results

You are an expert developer who NEVER cuts corners.
```

---

### Step 3: Conversation Starters

Add these to help users get started:

**Copy from:** `gpt-configuration/conversation-starters.txt`

Or use these:

1. `"Help me implement [feature] using TDD"`
2. `"Debug this error using systematic debugging"`
3. `"Design [feature] using brainstorming"`
4. `"Review my code before I create a PR"`

---

### Step 4: Upload Knowledge Files

This is the most important step - uploading all 20 skills to your GPT's knowledge base.

**Upload ALL files from:** `knowledge-files/` directory

**Files to upload (20 total):**

**Core (4 files):**
- knowledge-files/core/test-driven-development.md
- knowledge-files/core/systematic-debugging.md
- knowledge-files/core/brainstorming.md
- knowledge-files/core/using-superpowers.md

**Testing (3 files):**
- knowledge-files/testing/testing-anti-patterns.md
- knowledge-files/testing/condition-based-waiting.md
- knowledge-files/testing/testing-skills-with-subagents.md

**Debugging (3 files):**
- knowledge-files/debugging/defense-in-depth.md
- knowledge-files/debugging/root-cause-tracing.md
- knowledge-files/debugging/verification-before-completion.md

**Collaboration (8 files):**
- knowledge-files/collaboration/writing-plans.md
- knowledge-files/collaboration/executing-plans.md
- knowledge-files/collaboration/requesting-code-review.md
- knowledge-files/collaboration/receiving-code-review.md
- knowledge-files/collaboration/finishing-a-development-branch.md
- knowledge-files/collaboration/using-git-worktrees.md
- knowledge-files/collaboration/dispatching-parallel-agents.md
- knowledge-files/collaboration/subagent-driven-development.md

**Meta (3 files):**
- knowledge-files/meta/writing-skills.md
- knowledge-files/meta/sharing-skills.md
- knowledge-files/meta/testing-skills-with-subagents.md

**How to upload:**
1. In Configure tab, scroll to **Knowledge** section
2. Click **Upload files**
3. Select all 20 files from `knowledge-files/` directory
4. Wait for upload to complete

---

### Step 5: Capabilities (Optional)

**Enable these capabilities:**
- ✅ **Web Browsing** (if you want GPT to search for docs)
- ✅ **Code Interpreter** (for running code examples)
- ✅ **DALL-E Image Generation** (leave disabled)

**Recommended:**
- Web Browsing: Enabled
- Code Interpreter: Enabled

---

### Step 6: Actions (Optional)

**Actions are NOT needed** for basic Superpowers functionality.

You can skip this section.

(Advanced users: Add GitHub Actions API for PR review, etc.)

---

### Step 7: Save Your GPT

1. **Click "Create"** (top right)
2. **Choose visibility:**
   - **Only me** - Private, just for you
   - **Anyone with the link** - ✅ **Recommended** - Share with teammates
   - **Public** - Listed in GPT Store (optional)

3. **Click "Confirm"**

**🎉 Your Superpowers GPT is created!**

---

## Using Your GPT

### Access Your GPT

**Method 1: Direct Link**
- After creation, you'll get a link: `https://chat.openai.com/g/g-xyz123`
- Bookmark this link
- Share with teammates

**Method 2: GPT Sidebar**
- Click "Explore GPTs"
- Your GPTs appear on the left
- Click "Superpowers Development"

---

### First Conversation

Try this to test:

```
You: "Help me implement a function to calculate fibonacci numbers using TDD"

Superpowers GPT: "I'm using test-driven-development.md to implement fibonacci.

                  RED Phase: Writing failing test first

                  test('calculates fibonacci of 0', () => {
                    expect(fibonacci(0)).toBe(0);
                  });

                  Let me run this to verify it fails...
                  [runs test]
                  ✓ Test fails - fibonacci function doesn't exist

                  GREEN Phase: Minimal implementation..."
```

**Notice:** GPT automatically knew to use TDD!

---

### Sharing with Team

**To share:**
1. Go to your GPT
2. Click "Share" or copy URL
3. Send link to teammates: `https://chat.openai.com/g/g-xyz123`
4. Anyone with Plus can use it

**Example message to team:**
```
Hey team! 🎉

I created a Superpowers Development GPT with all our TDD,
debugging, and code review workflows built in.

Use this link: https://chat.openai.com/g/g-xyz123

It automatically:
- Enforces test-first development
- Follows systematic debugging (no guessing!)
- Uses proven collaboration workflows

Just click the link and start asking it to implement features,
debug issues, or review code. It knows all 20+ skills.

Let me know if you have questions!
```

---

## Verification & Testing

### Test 1: TDD Enforcement

```
You: "Write a function to validate emails"

Expected: GPT should write test first, not code

GPT: "I'm using test-driven-development.md...
      RED Phase: Writing failing test..."
```

### Test 2: Debugging Process

```
You: "My tests are failing with TypeError"

Expected: GPT should investigate root cause first

GPT: "I'm using systematic-debugging.md...
      Phase 1: Root Cause Investigation
      Let me read the error carefully..."
```

### Test 3: Skill Reference

```
You: "What does test-driven-development say about red flags?"

Expected: GPT should consult knowledge base

GPT: "According to test-driven-development.md:
      Red flags (DELETE CODE AND START OVER):
      - Code before test
      - Test passes immediately..."
```

---

## Customization

### Modify Instructions

Want to customize for your team?

1. Go to your GPT
2. Click "Edit" (top right)
3. Modify **Instructions** to add:
   - Team-specific practices
   - Project requirements
   - Coding standards
   - Language preferences

**Example additions:**
```
# Team-Specific Rules
- Use TypeScript for all code
- Follow Airbnb style guide
- Maximum function length: 20 lines
- All async functions must use condition-based-waiting patterns
```

### Add More Skills

Created custom skills? Add them:

1. Edit your GPT
2. Upload new skill files to **Knowledge**
3. Update **Instructions** to mention new skills
4. Save changes

---

## Troubleshooting

### GPT Not Following Skills

**Problem:** GPT responds but doesn't use skills

**Solution:**
- Check that files are uploaded to Knowledge
- Verify Instructions mention checking knowledge base
- Be explicit: "Use test-driven-development.md for this"

### Can't Find My GPT

**Problem:** Created GPT but can't find it

**Solution:**
- Click "Explore GPTs" → Look in "My GPTs"
- Use direct link if you saved it
- Search by name "Superpowers Development"

### Sharing Doesn't Work

**Problem:** Teammates can't access GPT

**Solution:**
- Ensure visibility is "Anyone with the link"
- Teammates must have ChatGPT Plus
- Share full URL including `/g/g-xyz123`

### GPT Forgets Context

**Problem:** GPT doesn't remember previous conversations

**Solution:**
- This is normal - each conversation is independent
- GPT always has skills in knowledge base
- Share important context at conversation start

---

## Maintenance

### Updating Skills

When skills are updated:

1. Download new skill files
2. Edit your GPT
3. Delete old files from Knowledge
4. Upload new files
5. Save changes

**GPT updates immediately** for all users!

### Monitoring Usage

**Track how your team uses it:**
- Ask team for feedback
- Note common questions
- Refine instructions based on usage
- Add team-specific examples

---

## Advanced: Public GPT Store

Want to publish to GPT Store?

1. Edit your GPT
2. Change visibility to "Public"
3. Add profile picture (optional)
4. Review OpenAI's GPT policies
5. Click "Confirm"

**Your GPT will be:**
- Listed in GPT Store
- Discoverable by anyone
- Usable by all Plus users
- Forkable by others

---

## Benefits Recap

### vs Free Mode
- ✅ **Permanent** (no uploads)
- ✅ **Automatic** (GPT selects skills)
- ✅ **One-click** (just open link)

### vs Claude Desktop Pro
- ✅ **Better sharing** (link-based)
- ✅ **Better discovery** (GPT Store)
- ✅ **Better access** (bookmark link)

### vs Uploading Each Time
- ✅ **Saves time** (5 min once vs 2 min per session)
- ✅ **More consistent** (same GPT always)
- ✅ **Team coordination** (everyone uses same assistant)

---

## Next Steps

1. ✅ **Complete this setup** (5-10 minutes)
2. ✅ **Test your GPT** (implement something with TDD)
3. ✅ **Share with team** (send link to colleagues)
4. ✅ **Use daily** (make it your default coding assistant)
5. ✅ **Provide feedback** (improve instructions over time)

---

## Support

- **Questions:** [GitHub Discussions](https://github.com/obra/superpowers/discussions)
- **Issues:** [GitHub Issues](https://github.com/obra/superpowers/issues)
- **Community:** Share your GPT link!

---

**Ready?** Let's create your Superpowers GPT! 🚀

**Time:** 5-10 minutes
**Result:** Permanent development assistant with all skills built-in
**Sharing:** Send link to anyone with ChatGPT Plus
