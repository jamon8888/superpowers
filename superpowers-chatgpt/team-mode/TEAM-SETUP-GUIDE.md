# Team Superpowers GPT Setup Guide

**Deploy Superpowers across your entire team with one Custom GPT**

---

## Overview

ChatGPT Team/Enterprise plans allow creating **organization-wide Custom GPTs** that all team members can access.

**Benefits:**
- ✅ **One GPT for entire team** - Consistent practices
- ✅ **Centralized management** - Update once, affects everyone
- ✅ **Custom team standards** - Add your coding guidelines
- ✅ **Onboarding** - New team members get instant access
- ✅ **Compliance** - Enforce mandatory workflows

---

## Prerequisites

- ✅ ChatGPT Team or Enterprise plan
- ✅ Admin/Owner permissions
- ✅ 15 minutes for setup
- ✅ Buy-in from team leads

---

## Team Setup Process

### Step 1: Plan Your Customizations

Before creating GPT, decide:

**Team-Specific Rules to Add:**
- Programming languages (TypeScript only? Python?)
- Style guides (Airbnb, Google, etc.)
- Testing frameworks (Jest, Pytest, etc.)
- Code review requirements
- Documentation standards
- Security policies

**Example customizations:**
```markdown
# Team-Specific Rules

**Language & Style:**
- Use TypeScript exclusively
- Follow Airbnb style guide
- ESLint errors must be zero
- Prettier for formatting

**Testing:**
- Jest for unit tests
- Playwright for E2E tests
- Minimum 80% code coverage
- No mocking external APIs in integration tests

**Code Review:**
- Mandatory PR approvals: 2
- Required checks: tests, lint, security scan
- PR descriptions must reference Jira ticket
- Maximum PR size: 400 lines

**Documentation:**
- All public APIs must have JSDoc
- README required for new modules
- Architecture decisions in ADR format
```

---

### Step 2: Create Organization GPT

**As Team Admin:**

1. Go to ChatGPT → Explore GPTs → Create
2. Click **Configure** tab
3. Fill in details (see [Plus Mode Guide](../plus-mode/GPT-SETUP-GUIDE.md) for basics)
4. **Add team customizations to Instructions**
5. **Upload knowledge files** (all 20 skills)
6. **Set visibility:**
   - ❌ Not "Only me"
   - ❌ Not "Anyone with link"
   - ✅ **"Workspace"** or **"Organization"**
7. Click **Create**

---

### Step 3: Customize Instructions for Team

**Base Instructions:**
Start with: `../plus-mode/gpt-configuration/gpt-instructions.txt`

**Add Team Section:**
```markdown
# [TEAM NAME] Specific Rules

## Technology Stack
- Frontend: React + TypeScript
- Backend: Node.js + Express + TypeScript
- Database: PostgreSQL
- Testing: Jest (unit), Playwright (E2E)

## Coding Standards
- Follow Airbnb TypeScript style guide
- Use functional components (React)
- Async/await only (no .then())
- Explicit return types for functions

## Testing Requirements
- test-driven-development.md is MANDATORY
- Write tests using Jest
- Mock only external services
- E2E tests for critical paths
- Minimum 80% coverage

## Code Review Process
1. requesting-code-review.md checklist MUST be complete
2. PRs require 2 approvals
3. All CI checks must pass
4. PR description format:
   - Jira ticket: [PROJ-123]
   - What: Brief description
   - Why: Business justification
   - Testing: How it was tested

## Documentation
- All public functions need JSDoc
- Complex logic needs inline comments
- README for new modules
- Update API docs if endpoints change

## Security
- No secrets in code (use env vars)
- Input validation on all user data
- SQL parameterized queries only
- Regular dependency updates

You are the [TEAM NAME] Development Assistant.
Follow these rules strictly.
```

---

### Step 4: Test with Team Members

**Before announcing:**

1. **Test yourself** - Verify GPT follows team rules
2. **Test with 2-3 team members** - Get feedback
3. **Refine instructions** based on feedback
4. **Document any issues** for team announcement

**Test scenarios:**
- Implement feature (should enforce team's stack)
- Debug issue (should follow systematic-debugging)
- Request code review (should use team's PR format)
- Ask about standards (should cite team rules)

---

### Step 5: Team Rollout

**Announcement Template:**

```markdown
Hi Team! 🎉

We've created a team-wide Superpowers Development GPT!

**What is it?**
An AI pair programmer that knows:
- Our tech stack (React, TypeScript, Node, PostgreSQL)
- Our coding standards (Airbnb guide, Jest testing)
- Our workflows (TDD, systematic debugging, code review)
- Our PR requirements (2 approvals, Jira tickets)

**How to access:**
1. Go to ChatGPT (use your work account)
2. Click "Explore GPTs"
3. Look for "Superpowers Development - [Team Name]"
4. Or use this link: [workspace GPT link]

**How to use:**
- "Help me implement [feature] using our stack"
- "Review my code before I create a PR"
- "Debug this error systematically"
- "What are our testing requirements?"

**Key features:**
✅ Enforces test-first development (TDD)
✅ Follows systematic debugging (no guessing)
✅ Uses our tech stack automatically
✅ Applies our code review standards
✅ Always available when coding

**Try it today!**
Implement a small feature and see how it guides you through:
1. Brainstorming design
2. Writing tests first
3. Implementing with our stack
4. Preparing for PR

Questions? Ask in #dev-tools

Happy coding! 🚀
```

---

### Step 6: Onboarding New Members

**For new team members:**

1. **During onboarding:**
   - Show them the GPT
   - Walk through one feature implementation
   - Demonstrate TDD enforcement
   - Show code review preparation

2. **Provide quick start guide:**
   ```
   New Developer Quick Start with Superpowers GPT

   1. Access: [GPT link]
   2. First task: "Help me set up my dev environment"
   3. Practice: "Implement a simple TODO API endpoint"
   4. Watch: GPT enforces TDD, uses our stack, follows standards

   The GPT knows:
   - Our entire tech stack
   - Our coding standards
   - Our testing requirements
   - Our PR process

   Use it for every feature, bug fix, and code review!
   ```

---

## Maintenance

### Regular Updates

**Monthly:**
- Review team feedback
- Update instructions with new standards
- Add new team-specific examples
- Document common issues

**When needed:**
- Add new tech stack items
- Update style guide references
- Refine testing requirements
- Add security policies

### Tracking Effectiveness

**Metrics to monitor:**
- Code review feedback (is quality improving?)
- Test coverage (trending up?)
- Bug rates (decreasing?)
- Developer satisfaction (survey quarterly)

**Success indicators:**
- PRs pass review faster
- Fewer "forgot tests" comments
- More consistent code style
- New devs productive faster

---

## Team Customization Examples

### Example 1: Security-Focused Team

```markdown
# Security Requirements (MANDATORY)

Before ANY code is written:
1. Identify all user inputs
2. Plan input validation
3. Check OWASP Top 10 relevance
4. Design with least privilege

For all code:
- Input validation: MANDATORY
- SQL: Parameterized queries only
- Authentication: JWT with refresh tokens
- Secrets: Environment variables only
- Dependencies: Regular security audits

Use defense-in-depth.md for all features.
```

### Example 2: Fast-Moving Startup

```markdown
# Startup Speed + Quality Balance

**Non-negotiable:**
- test-driven-development.md for ALL code
- systematic-debugging.md for ALL bugs
- verification-before-completion.md before shipping

**Speed optimizations:**
- E2E tests for critical path only
- PRs reviewed within 2 hours
- Deploy to staging automatically
- Ship small, ship often

**Technical debt:**
- Document all tech debt decisions
- Monthly tech debt sprint
- Balance speed with maintainability
```

### Example 3: Enterprise Compliance

```markdown
# Enterprise Compliance Requirements

**Regulatory compliance:**
- SOC 2 Type II requirements
- GDPR data handling rules
- Audit logging mandatory
- Data retention policies

**Code requirements:**
- 2 peer reviews minimum
- Security review for sensitive code
- Architecture review for new services
- Performance benchmarks for APIs

**Documentation:**
- Change requests in Jira
- Architecture Decision Records (ADRs)
- Runbook for all services
- Incident post-mortems
```

---

## Advanced: Multiple Team GPTs

**Large organizations might create:**

### Backend Team GPT
- Focus on API development, databases, performance
- Backend-specific skills emphasized
- Service architecture patterns

### Frontend Team GPT
- Focus on UI/UX, accessibility, performance
- Frontend frameworks and testing
- Design system integration

### Platform Team GPT
- Focus on infrastructure, CI/CD, observability
- Deployment workflows
- Incident response

### QA Team GPT
- Focus on test strategies, automation
- Bug investigation workflows
- Test plan reviews

---

## Troubleshooting

### GPT Not Enforcing Team Rules

**Problem:** GPT ignores team-specific standards

**Solution:**
- Move team rules to TOP of instructions
- Use **MANDATORY** and **MUST** keywords
- Add examples of team standards
- Test with specific scenarios

### Team Members Not Using GPT

**Problem:** Low adoption rate

**Solution:**
- Lead by example (managers use it visibly)
- Share success stories in team chat
- Make it part of code review checklist
- Track usage and celebrate wins

### Conflicts with Personal Preferences

**Problem:** Devs want different styles

**Solution:**
- Team standards override personal preference
- Document why standards exist
- Allow local customization (linting rules)
- Regular retrospectives for feedback

---

## Benefits Summary

### For Team Leads
- ✅ Consistent code quality across team
- ✅ Faster onboarding of new members
- ✅ Automated enforcement of standards
- ✅ Easier code reviews

### For Developers
- ✅ Always-available pair programmer
- ✅ Instant answers on team standards
- ✅ Better code quality
- ✅ Faster development

### For Organization
- ✅ Reduced technical debt
- ✅ Better maintainability
- ✅ Faster time to market
- ✅ Higher developer satisfaction

---

## Next Steps

1. **Get buy-in** from team leads and developers
2. **Plan customizations** for your team
3. **Create team GPT** following this guide
4. **Test with subset** of team first
5. **Roll out** to entire team
6. **Iterate** based on feedback

---

## Support

- **Setup questions:** Refer to [Plus Mode Guide](../plus-mode/GPT-SETUP-GUIDE.md)
- **Customization help:** [GitHub Discussions](https://github.com/obra/superpowers/discussions)
- **Issues:** [GitHub Issues](https://github.com/obra/superpowers/issues)

---

**Ready to transform your team's development practices?** 🚀

Create your team GPT today and watch code quality improve overnight.
