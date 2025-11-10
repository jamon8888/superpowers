# Superpowers Complete Skills Library (Free Mode)

> **For Claude Desktop Free Users**: This file contains all 20+ Superpowers skills in condensed format. Upload this file at the start of each conversation for full workflow access.
>
> **Pro Users**: Use the full skills library via Projects or ZIP upload instead. See [Pro Setup Guide](../pro-setup/SETUP.md).

---

## Quick Index

**Core Skills (Essential)**
- [Test-Driven Development](#test-driven-development) - Write tests first, always
- [Systematic Debugging](#systematic-debugging) - 4-phase root cause investigation
- [Brainstorming](#brainstorming) - Socratic design refinement
- [Using Superpowers](#using-superpowers) - How to use this skills system

**Testing Skills**
- [Testing Skills with Subagents](#testing-skills-with-subagents) - Validate skill effectiveness
- [Testing Anti-Patterns](#testing-anti-patterns) - What NOT to do
- [Condition-Based Waiting](#condition-based-waiting) - Async operation patterns

**Debugging Skills**
- [Defense in Depth](#defense-in-depth) - Multiple validation layers
- [Root Cause Tracing](#root-cause-tracing) - Deep issue investigation
- [Verification Before Completion](#verification-before-completion) - Pre-completion checks

**Collaboration Skills**
- [Writing Plans](#writing-plans) - Structured planning
- [Executing Plans](#executing-plans) - Plan implementation
- [Requesting Code Review](#requesting-code-review) - Pre-review preparation
- [Receiving Code Review](#receiving-code-review) - Responding to feedback
- [Finishing a Development Branch](#finishing-a-development-branch) - Branch completion
- [Using Git Worktrees](#using-git-worktrees) - Parallel development
- [Dispatching Parallel Agents](#dispatching-parallel-agents) - Task distribution
- [Subagent-Driven Development](#subagent-driven-development) - Delegated implementation

**Meta Skills**
- [Writing Skills](#writing-skills) - Creating new skills
- [Sharing Skills](#sharing-skills) - Contributing skills
- [Testing Skills with Subagents](#testing-skills-with-subagents) - Validating skills

---

# CORE SKILLS

## Test-Driven Development

**Use when:** Implementing any feature or bugfix

### The Iron Law
**NO PRODUCTION CODE WITHOUT A FAILING TEST FIRST**

### RED-GREEN-REFACTOR Cycle

1. **RED** - Write one minimal test
   - Test ONE behavior only
   - Clear name describing expected behavior
   - Use real code, not mocks when possible

2. **Verify RED** - Watch it fail
   - Run test, confirm failure
   - Failure from missing feature, not typos
   - **MANDATORY - Never skip**

3. **GREEN** - Write minimal code
   - Simplest code to pass test
   - No extra features
   - No "while I'm here" improvements

4. **Verify GREEN** - Watch it pass
   - Run test, confirm pass
   - All other tests still pass
   - **MANDATORY - Never skip**

5. **REFACTOR** - Clean up
   - Remove duplication
   - Improve names
   - Keep tests green

6. **Repeat** - Next test for next behavior

### Red Flags (DELETE AND START OVER)
- Wrote code before test
- Test passed immediately
- Skipped verification step
- Test mocks everything
- Test too broad (tests multiple behaviors)

### Checklist
- [ ] Write failing test for ONE behavior
- [ ] Run test - verify RED (fails correctly)
- [ ] Write minimal implementation
- [ ] Run test - verify GREEN (passes)
- [ ] Run all tests - verify no regression
- [ ] Refactor if needed (keeping green)
- [ ] Repeat for next behavior

---

## Systematic Debugging

**Use when:** Investigating any bug or test failure

### The Iron Law
**NO FIXES WITHOUT ROOT CAUSE UNDERSTANDING FIRST**

### 4-Phase Process

**Phase 1: Root Cause Investigation**
1. Read error messages carefully (all of them)
2. Reproduce the issue reliably
3. Gather evidence (logs, stack traces, state)
4. Resist urge to fix immediately

**Phase 2: Pattern Recognition**
5. Find working examples (what works?)
6. Compare working vs broken (what's different?)
7. Identify the pattern

**Phase 3: Hypothesis Formation**
8. Form specific hypothesis (not "it's broken")
9. Test hypothesis minimally
10. Refine until confident

**Phase 4: Fix with Test**
11. Write failing test reproducing bug
12. Implement fix
13. Verify test passes
14. Verify no regression

### Red Flags (RETURN TO PHASE 1)
- "Quick fix for now"
- "Let's try this"
- "It might be..."
- Guessing without evidence
- Fixing symptoms not cause

### Checklist
- [ ] Read all error messages
- [ ] Reproduce issue reliably
- [ ] Find working examples
- [ ] Form specific hypothesis
- [ ] Write test reproducing bug
- [ ] Implement fix
- [ ] Verify fix works
- [ ] No regressions

---

## Brainstorming

**Use when:** Designing features before implementation

### Purpose
Design first, implement second. Avoid premature implementation.

### Socratic Process

**Phase 1: Understand**
- Ask clarifying questions ONE at a time
- Wait for answers before next question
- Understand problem deeply before solutions

**Phase 2: Explore**
- Propose 2-3 different approaches
- Explain tradeoffs of each
- No favorite - present objectively

**Phase 3: Present**
- Write 200-300 word proposal
- Include: approach, rationale, tradeoffs
- Validate incrementally (not all at once)

**Phase 4: Document**
- Write to design doc or comment
- Make it reference for implementation
- Include decision rationale

### Principles
- **YAGNI ruthlessly** - You Aren't Gonna Need It
- **Simplest thing first** - Complexity only when proven necessary
- **Defer decisions** - Decide as late as possible
- **Constraints are friends** - Work within limitations

### Red Flags
- Jumping to implementation
- Answering own questions
- Only one approach considered
- "While we're at it..." scope creep

### Checklist
- [ ] Understand problem (ask questions)
- [ ] Explore 2-3 approaches
- [ ] Present proposal with tradeoffs
- [ ] Get feedback incrementally
- [ ] Document decision
- [ ] Defer to TDD for implementation

---

## Using Superpowers

**Use when:** Understanding how to use this skills system

### How Skills Work

**In this free mode:**
- Upload this file at start of each conversation
- Explicitly reference skills: "Use Test-Driven Development"
- Track checklists manually
- No automatic activation

**Manual invocation:**
```
"Use Test-Driven Development to implement X"
"Follow Systematic Debugging for this error"
"Apply Brainstorming before we code"
```

### Skill Selection

**For implementing features:**
1. Brainstorming (if design unclear)
2. Test-Driven Development (for implementation)
3. Verification Before Completion (before PR)

**For fixing bugs:**
1. Systematic Debugging (find root cause)
2. Test-Driven Development (write test, fix, verify)
3. Verification Before Completion (ensure complete)

**For code review:**
1. Requesting Code Review (before review)
2. Receiving Code Review (during review)
3. Finishing a Development Branch (after approval)

### Principles

**Test-Driven Development is mandatory:**
- Not optional for "simple" features
- Not skippable for "quick" fixes
- Applies to ALL production code

**Systematic Debugging is mandatory:**
- No guessing
- No "try this" debugging
- Understand root cause first

**Complexity is the enemy:**
- Simplicity as primary goal
- Defer decisions
- YAGNI ruthlessly

---

# TESTING SKILLS

## Testing Skills with Subagents

**Use when:** Validating a new skill works effectively

### Purpose
Test whether a skill actually causes desired behavior changes.

### Process

1. **Define Success Criteria**
   - What behavior should the skill produce?
   - What would indicate skill is working?
   - What would indicate skill failed?

2. **Baseline Test** (Control)
   - Task WITHOUT the skill
   - Observe natural behavior
   - Document issues/mistakes

3. **Pressure Test** (Treatment)
   - Task WITH the skill
   - Observe changed behavior
   - Document improvements

4. **Analysis**
   - Compare baseline vs pressure
   - Quantify improvement
   - Identify remaining gaps

### Red Flags
- Testing own compliance (biased)
- No baseline comparison
- Vague success criteria
- Confirmation bias

---

## Testing Anti-Patterns

**Use when:** Writing tests or reviewing test code

### Anti-Patterns to Avoid

**1. Testing Implementation, Not Behavior**
- ❌ Test internal methods
- ✅ Test public interface/behavior

**2. Over-Mocking**
- ❌ Mock everything
- ✅ Use real objects when possible

**3. Test Interdependence**
- ❌ Tests depend on other tests
- ✅ Each test fully independent

**4. Broad Tests**
- ❌ One test for multiple behaviors
- ✅ One test per behavior

**5. No Assertions**
- ❌ Test runs without verifying
- ✅ Clear assertions on behavior

**6. Flaky Tests**
- ❌ Tests pass/fail randomly
- ✅ Deterministic, reliable tests

**7. Slow Tests**
- ❌ Tests take minutes
- ✅ Tests run in seconds

**8. Testing the Framework**
- ❌ Test that libraries work
- ✅ Test YOUR code works

### Good Test Characteristics
- **Fast** - Runs in milliseconds
- **Independent** - No shared state
- **Repeatable** - Same result every time
- **Self-validating** - Clear pass/fail
- **Timely** - Written before code (TDD)

---

## Condition-Based Waiting

**Use when:** Dealing with async operations or timing

### Problem
Code that depends on timing is flaky and unreliable.

### Solution: Condition-Based Waiting

**Instead of:**
```javascript
await sleep(1000); // Hope 1s is enough
```

**Do:**
```javascript
await waitFor(() => element.isVisible());
```

### Patterns

**1. Wait for Condition**
```javascript
async function waitFor(condition, timeout = 5000) {
  const start = Date.now();
  while (Date.now() - start < timeout) {
    if (await condition()) return;
    await sleep(100);
  }
  throw new Error('Timeout waiting for condition');
}
```

**2. Retry with Backoff**
```javascript
async function retryWithBackoff(fn, maxRetries = 3) {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn();
    } catch (err) {
      if (i === maxRetries - 1) throw err;
      await sleep(Math.pow(2, i) * 1000);
    }
  }
}
```

### Red Flags
- Arbitrary sleeps (sleep(1000))
- "Flaky test, just retry"
- No timeout limits
- Polling too frequently

---

# DEBUGGING SKILLS

## Defense in Depth

**Use when:** Ensuring code quality through multiple validation layers

### Concept
Multiple independent checks, not single point of failure.

### Layers

**Layer 1: Type System**
- Static types catch errors at compile time
- Interfaces define contracts

**Layer 2: Tests**
- Unit tests for components
- Integration tests for workflows
- E2E tests for critical paths

**Layer 3: Runtime Validation**
- Input validation
- Preconditions/postconditions
- Assertions in code

**Layer 4: Monitoring**
- Error logging
- Metrics/alerting
- Health checks

**Layer 5: Code Review**
- Human verification
- Knowledge sharing
- Pattern enforcement

### Principle
Each layer catches different error types. Redundancy is good.

---

## Root Cause Tracing

**Use when:** Bug is complex or affects multiple components

### Deep Investigation Process

**1. Trace the Call Stack**
- Start from error
- Work backwards through calls
- Identify transition point (working → broken)

**2. Examine State Changes**
- What state changed before error?
- Who changed it?
- Why was it changed?

**3. Find the Introduction Point**
- When was this code added?
- What was the original intent?
- Have requirements changed?

**4. Identify the Assumption**
- What assumption was made?
- When does assumption break?
- How to handle broken assumption?

### Questions to Ask
- When did this start failing?
- What changed recently?
- Does it fail consistently?
- What's the minimal reproduction?
- What works (comparison)?

---

## Verification Before Completion

**Use when:** Before marking any task as complete

### Pre-Completion Checklist

**For Features:**
- [ ] Tests written first (TDD)
- [ ] All tests pass (including existing)
- [ ] Feature works as specified
- [ ] Edge cases handled
- [ ] Error cases handled
- [ ] Code reviewed (self or peer)
- [ ] Documentation updated
- [ ] No console.log or debug code
- [ ] No commented-out code

**For Bugfixes:**
- [ ] Root cause identified (not guessed)
- [ ] Test reproducing bug written
- [ ] Fix implemented
- [ ] Test passes
- [ ] No regressions (all tests pass)
- [ ] Root cause documented
- [ ] Similar bugs searched for

**For Refactoring:**
- [ ] Tests pass before refactoring
- [ ] Refactoring completed
- [ ] Tests still pass
- [ ] Behavior unchanged
- [ ] Code simpler/clearer

### Red Flags (NOT COMPLETE)
- "Tests mostly pass"
- "Works on my machine"
- "Just need to clean up"
- "TODO: handle edge cases"
- Any failing tests

---

# COLLABORATION SKILLS

## Writing Plans

**Use when:** Task is complex or has multiple steps

### Plan Structure

**1. Goal**
- What are we trying to achieve?
- Why is this important?
- What does success look like?

**2. Current State**
- What's the situation now?
- What works already?
- What's broken?

**3. Approach**
- High-level strategy
- Major steps/phases
- Key decisions

**4. Tasks**
- Specific actionable items
- Order of execution
- Dependencies

**5. Risks**
- What could go wrong?
- How to mitigate?
- Backup plans?

### Good Plan Characteristics
- **Specific** - Clear tasks, not vague goals
- **Ordered** - Logical sequence
- **Scoped** - Reasonable size
- **Testable** - Can verify completion

---

## Executing Plans

**Use when:** Implementing a written plan

### Execution Principles

**1. Follow the Plan**
- Don't improvise mid-execution
- If plan is wrong, stop and revise plan
- Document deviations

**2. One Task at a Time**
- Complete current task fully
- Don't start next until current done
- Mark tasks complete explicitly

**3. Verify as You Go**
- Test after each task
- Don't accumulate untested changes
- Fix issues immediately

**4. Update the Plan**
- New information discovered?
- Plan doesn't match reality?
- Stop, revise plan, continue

### Red Flags
- Skipping ahead
- Multiple incomplete tasks
- Accumulating untested changes
- "Plan doesn't matter anymore"

---

## Requesting Code Review

**Use when:** Preparing branch for code review

### Pre-Review Checklist

**Code Quality:**
- [ ] All tests pass (local)
- [ ] CI/CD pipeline green
- [ ] No debug code (console.log, etc.)
- [ ] No commented-out code
- [ ] Code follows project style
- [ ] No TODO comments

**Testing:**
- [ ] New code has tests
- [ ] Tests cover edge cases
- [ ] Tests are clear and focused
- [ ] No flaky tests

**Documentation:**
- [ ] Code comments for complex logic
- [ ] README updated if needed
- [ ] API docs updated if needed
- [ ] CHANGELOG updated

**Git Hygiene:**
- [ ] Commits are logical units
- [ ] Commit messages clear
- [ ] No merge commits (rebase if needed)
- [ ] Branch up to date with main

**Review Request:**
- [ ] PR description explains what & why
- [ ] Screenshots if UI changes
- [ ] Testing instructions included
- [ ] Reviewers assigned

### Red Flags (DON'T REQUEST REVIEW)
- Tests failing
- "Will fix in follow-up"
- Unrelated changes included
- Massive PR (>500 lines)

---

## Receiving Code Review

**Use when:** Responding to code review feedback

### Receiving Feedback Well

**1. Assume Good Intent**
- Reviewers trying to help
- Questions are opportunities to clarify
- Pushback means engagement

**2. Respond to Every Comment**
- Address the concern OR
- Explain why it's not a concern OR
- Acknowledge and plan to fix

**3. Don't Get Defensive**
- Code != self-worth
- "You're right, I'll fix that"
- Ask questions if unclear

**4. Make Changes in Commits**
- Don't force-push
- Reviewer can see changes
- Clear what was updated

### Response Templates

**Agreeing:**
- "Good catch! Fixed in abc123"
- "You're right - I'll refactor this"

**Clarifying:**
- "The reason I did X is Y. Does that make sense?"
- "I considered Z but chose X because..."

**Disagreeing:**
- "I understand your concern. Here's my thinking..."
- "Could we discuss this? I see tradeoffs..."

### Red Flags
- Ignoring comments
- "It works though"
- Force-pushing over feedback
- Defensive responses

---

## Finishing a Development Branch

**Use when:** Branch approved and ready to merge

### Branch Completion Checklist

**Before Merge:**
- [ ] All review comments addressed
- [ ] All reviewers approved
- [ ] CI/CD pipeline green
- [ ] Branch rebased on latest main
- [ ] Conflicts resolved
- [ ] Tests pass after rebase
- [ ] No new commits on branch (review complete)

**Merge:**
- [ ] Use appropriate merge strategy
  - Squash for feature branches
  - Merge commit for releases
  - Rebase for simple fixes
- [ ] Verify merge commit has tests passing
- [ ] Delete branch after merge

**After Merge:**
- [ ] Verify main branch green
- [ ] Deploy if applicable
- [ ] Close related issues
- [ ] Notify stakeholders
- [ ] Update project status

### Red Flags (DON'T MERGE)
- Unresolved comments
- No approval
- CI failing
- Conflicts with main
- "I'll fix it after merge"

---

## Using Git Worktrees

**Use when:** Need to work on multiple branches simultaneously

### What are Worktrees?

Separate working directories for same repository.

### Use Cases

**1. Review PR While Working**
```bash
# Main work in ~/project
git worktree add ~/project-review feature/pr-123
cd ~/project-review
# Review code while main work untouched
```

**2. Hotfix While Feature Development**
```bash
# Feature work in ~/project
git worktree add ~/project-hotfix main
cd ~/project-hotfix
git checkout -b hotfix/urgent-bug
# Fix bug without stashing feature work
```

**3. Compare Branches**
```bash
git worktree add ~/project-before main
git worktree add ~/project-after feature/changes
# Side-by-side comparison
```

### Commands

```bash
# Create worktree
git worktree add <path> <branch>

# List worktrees
git worktree list

# Remove worktree
git worktree remove <path>

# Prune deleted worktrees
git worktree prune
```

### Benefits
- No stashing
- No context switching
- Parallel work
- Easy comparison

---

## Dispatching Parallel Agents

**Use when:** Task can be broken into independent pieces

### When to Parallelize

**Good for:**
- Independent features
- Separate modules
- Different test suites
- Unrelated bugfixes

**Bad for:**
- Dependent tasks (must be sequential)
- Shared state modifications
- Single logical unit

### Process

**1. Identify Independence**
- Can tasks run without each other?
- Do they modify same code?
- Are there dependencies?

**2. Break Down Clearly**
- Specific scope for each
- Clear boundaries
- Defined interfaces

**3. Coordinate Integration**
- How will pieces combine?
- What's integration order?
- Who integrates?

### Red Flags
- Tasks actually dependent
- Shared state conflicts
- Coordination overhead > time savings

---

## Subagent-Driven Development

**Use when:** Delegating implementation to separate processes

### Concept
Break down into tasks, implement separately, integrate.

### Process

**1. Design Interface First**
- What's the contract?
- What are inputs/outputs?
- How will pieces fit?

**2. Create Task List**
- Each task implements one piece
- Tasks are independent
- Clear acceptance criteria

**3. Implement Separately**
- Each task in isolation
- Follow TDD for each
- Tests define interface

**4. Integrate**
- Combine pieces
- Integration tests
- Verify whole system

### Benefits
- Clear separation
- Parallel work possible
- Easier testing
- Simpler reasoning

---

# META SKILLS

## Writing Skills

**Use when:** Creating a new skill for Superpowers

### Skill Structure

```markdown
---
name: skill-name
description: Use when [condition] - [what it does]
---

# Skill Name

## Overview
[What is this skill for?]

## When to Use
[Triggering conditions]

## Process
[Step-by-step workflow]

## Red Flags
[When NOT to use or when to stop]

## Checklist
[Verification items]
```

### Good Skill Characteristics

**1. Clear Triggering Conditions**
- When should this skill be used?
- What problems does it solve?

**2. Step-by-Step Process**
- Concrete actions, not philosophy
- Ordered sequence
- Verifiable steps

**3. Red Flags**
- What indicates misuse?
- When to stop?
- Common mistakes?

**4. Checklists**
- Verification items
- Completion criteria
- Nothing left to chance

### Testing Skills

Before sharing:
1. Test with pressure scenarios
2. Compare against baseline (without skill)
3. Verify behavior improvement
4. Iterate based on results

---

## Sharing Skills

**Use when:** Contributing a skill back to the community

### Before Sharing

**Checklist:**
- [ ] Skill tested with pressure scenarios
- [ ] Compared against baseline
- [ ] Behavior improvement verified
- [ ] Documentation complete
- [ ] Examples included
- [ ] No project-specific content

### Contribution Process

1. **Test Thoroughly**
   - Use testing-skills-with-subagents
   - Multiple scenarios
   - Quantified improvement

2. **Write Clear Docs**
   - Follow writing-skills format
   - Include examples
   - Clear when-to-use

3. **Submit PR**
   - One skill per PR
   - Explain what problem it solves
   - Show testing evidence

### What to Share

**Share:**
- Broadly applicable patterns
- Well-tested workflows
- Clear improvement over baseline

**Don't Share:**
- Project-specific workflows
- Untested ideas
- Vague philosophy

---

# USAGE GUIDE

## How to Use This File

**At Start of Conversation:**
1. Upload this file
2. Say: "I've uploaded the Superpowers skills library"
3. Reference specific skills as needed

**During Conversation:**
```
"Use Test-Driven Development to implement this"
"Follow Systematic Debugging for this error"
"Apply Brainstorming before we code"
"Check the Verification Before Completion checklist"
```

## Skill Combinations

**Implementing a Feature:**
1. Brainstorming (design)
2. Test-Driven Development (implement)
3. Verification Before Completion (verify)
4. Requesting Code Review (prepare PR)

**Fixing a Bug:**
1. Systematic Debugging (find cause)
2. Test-Driven Development (test, fix, verify)
3. Verification Before Completion (ensure complete)
4. Root Cause Tracing (if complex)

**Code Review:**
1. Requesting Code Review (before review)
2. Receiving Code Review (during)
3. Finishing a Development Branch (after approval)

## Upgrading to Pro

If uploading this file every conversation becomes tedious:

**Claude Desktop Pro** ($20/month)
- Upload skills as ZIP files (Settings → Capabilities)
- Account-wide availability
- No per-conversation uploads
- See: [Pro Setup Guide](../pro-setup/SKILLS-ZIP-UPLOAD-GUIDE.md)

**Claude Code** (Recommended for full experience)
- Full plugin with automatic activation
- TodoWrite tracking
- Subagent spawning
- Git-based updates
- See: [Main Repository](https://github.com/obra/superpowers)

---

**Version:** Free Mode - Complete Skills Library
**Last Updated:** November 2025
**Skills Included:** 20+
**File Size:** ~25KB

For questions: [GitHub Issues](https://github.com/obra/superpowers/issues)
