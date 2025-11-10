# Pre-Generated Skill ZIPs

This directory contains pre-generated ZIP files for all 20+ Superpowers skills, ready for immediate upload to Claude Desktop Pro.

**No script needed!** Just download and upload directly.

---

## Quick Upload

1. **Open Claude Desktop**
2. **Go to Settings → Capabilities**
3. **Click "Upload skill"** for each ZIP you want
4. **Done!** Skills are now available

---

## Recommended Upload Order

### Start with Core (4 skills)

Essential for all development work:

1. `test-driven-development.zip` (8.9KB) - RED-GREEN-REFACTOR cycle
2. `systematic-debugging.zip` (9.4KB) - 4-phase debugging process
3. `brainstorming.zip` (3.2KB) - Socratic design refinement
4. `using-superpowers.zip` (4.8KB) - Skills system guide

**Upload these first**, then add others as needed.

### Add Testing Skills (3 skills)

For quality and testing:

5. `testing-anti-patterns.zip` (7.2KB) - What NOT to do
6. `condition-based-waiting.zip` (4.1KB) - Async operation patterns
7. `testing-skills-with-subagents.zip` (11KB) - Skill validation

### Add Debugging Skills (3 skills)

For advanced debugging:

8. `defense-in-depth.zip` (6.1KB) - Multiple validation layers
9. `root-cause-tracing.zip` (7.4KB) - Deep issue investigation
10. `verification-before-completion.zip` (7.0KB) - Pre-completion checks

### Add Collaboration Skills (8 skills)

For team workflows:

11. `writing-plans.zip` (4.0KB) - Structured planning
12. `executing-plans.zip` (3.0KB) - Plan implementation
13. `requesting-code-review.zip` (3.5KB) - Pre-review preparation
14. `receiving-code-review.zip` (6.0KB) - Responding to feedback
15. `finishing-a-development-branch.zip` (4.5KB) - Branch completion
16. `using-git-worktrees.zip` (5.3KB) - Parallel development
17. `dispatching-parallel-agents.zip` (5.7KB) - Task distribution
18. `subagent-driven-development.zip` (5.1KB) - Delegated implementation

### Add Meta Skills (3 skills)

For managing and creating skills:

19. `writing-skills.zip` (17KB) - Creating new skills
20. `sharing-skills.zip` (4.6KB) - Contributing skills
21. `testing-skills-with-subagents.zip` (11KB) - Validating skills

---

## All Files

```
skill-zips/
├── brainstorming.zip (3.2KB)
├── condition-based-waiting.zip (4.1KB)
├── defense-in-depth.zip (6.1KB)
├── dispatching-parallel-agents.zip (5.7KB)
├── executing-plans.zip (3.0KB)
├── finishing-a-development-branch.zip (4.5KB)
├── receiving-code-review.zip (6.0KB)
├── requesting-code-review.zip (3.5KB)
├── root-cause-tracing.zip (7.4KB)
├── sharing-skills.zip (4.6KB)
├── subagent-driven-development.zip (5.1KB)
├── systematic-debugging.zip (9.4KB)
├── test-driven-development.zip (8.9KB)
├── testing-anti-patterns.zip (7.2KB)
├── testing-skills-with-subagents.zip (11KB)
├── using-git-worktrees.zip (5.3KB)
├── using-superpowers.zip (4.8KB)
├── verification-before-completion.zip (7.0KB)
├── writing-plans.zip (4.0KB)
└── writing-skills.zip (17KB)
```

**Total:** 20 skills, 135KB

---

## ZIP File Contents

Each ZIP contains:
- `SKILL.md` - Main skill definition (at root, required by Claude)
- `scripts/` - Helper scripts (debugging skills include find-polluter.sh)
- `resources/` - Additional resources (if applicable)

All ZIPs are properly structured for Claude Desktop upload.

---

## Verification

To verify a ZIP before upload:

```bash
unzip -l test-driven-development.zip
# Should show SKILL.md at root
```

---

## Updating

These ZIPs are generated from the source skills in `../skills/`.

If skills are updated:
1. Run `../create-skill-zips.sh` to regenerate
2. Commit updated ZIPs
3. Users download fresh copies

---

## Download Methods

### Method 1: Clone Repository
```bash
git clone https://github.com/obra/superpowers
cd superpowers/superpowers-desktop/pro-setup/skill-zips
# All ZIPs ready to upload
```

### Method 2: Individual Downloads
- Click on individual ZIP files in GitHub
- Download using "Raw" button
- Upload to Claude Desktop

### Method 3: Download Release
- Check GitHub Releases for packaged downloads
- Extract and upload

---

## Documentation

- **Complete Guide:** [SKILLS-ZIP-UPLOAD-GUIDE.md](../SKILLS-ZIP-UPLOAD-GUIDE.md)
- **Manifest:** [GENERATED-ZIPS-MANIFEST.md](../GENERATED-ZIPS-MANIFEST.md)
- **Pro Setup:** [SETUP.md](../SETUP.md)

---

## FAQ

### Do I need to run a script?

**No!** ZIPs are pre-generated and ready to use. Just download and upload.

### Can I upload all 20 at once?

You must upload one at a time via Settings → Capabilities. Start with the 4 core skills.

### Do ZIPs work on free tier?

No, ZIP upload requires Claude Desktop Pro. Free users should use [all-skills.md](../../free-mode/all-skills.md) instead.

### Can I regenerate ZIPs?

Yes, run `../create-skill-zips.sh` if you modify source skills.

---

**Ready?** Download the core 4 ZIPs and upload to Claude Desktop!
