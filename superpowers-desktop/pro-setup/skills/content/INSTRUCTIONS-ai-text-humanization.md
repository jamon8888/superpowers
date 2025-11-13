# Claude Desktop Pro Instructions: ai-text-humanization

## Platform: Claude Desktop Pro

### Quick Start

1. **Setup Required:**
   - Claude Desktop Pro subscription
   - Install Claude Desktop app
   - Upload skill via ZIP or Project Knowledge

2. **Activation:**
   ```
   "Use ai-text-humanization skill to help me with..."
   ```

3. **Two Upload Methods:**

   **Method A: ZIP Upload (Recommended)**
   - Pre-built ZIP available in `skill-zips/ai-text-humanization.zip`
   - Go to Claude Desktop → Settings → Capabilities
   - Click "Upload skill" and select ZIP
   - Skill available account-wide

   **Method B: Project Knowledge**
   - Create new project in Claude Desktop
   - Upload `ai-text-humanization.md` to project knowledge
   - Skill available in that project only

### Custom Instructions

Add to your Claude Desktop project/account custom instructions:

```
You have access to Superpowers skills.

When working on development tasks:
1. Identify applicable skills
2. Explicitly invoke skills by name
3. Follow methodology completely
4. Use TodoWrite to track progress when available

Key skills installed:
- ai-text-humanization (content)
- [Other installed skills]

Always announce skill usage and follow its process.
```

### Platform-Specific Features

**Advantages on Claude Desktop:**
- Native TodoWrite tool support (if using Claude Code plugin)
- Better task tracking and automation
- Integrated with local development environment
- Access to system files and commands
- Better code editing experience
- Automatic skill suggestions in some contexts

**Limitations:**
- Requires desktop app
- Pro subscription needed ($20/month)
- Skills are account or project-specific
- Need to manage skill updates manually

### How to Use This Skill

1. **Explicit Invocation:**
   Tell Claude to use the skill:
   ```
   "Use the ai-text-humanization skill for this task"
   ```

2. **Automatic Tracking (if TodoWrite available):**
   Claude will automatically track progress:
   ```
   ✓ Completed: Step 1
   ⧖ In Progress: Step 2
   ○ Pending: Step 3
   ```

3. **Manual Tracking (without TodoWrite):**
   Ask Claude to track explicitly:
   ```
   "Track the ai-text-humanization checklist as we go"
   ```

4. **Verification:**
   ```
   "Verify all ai-text-humanization requirements are met"
   ```

### Example Usage

```
User: "Help me implement user authentication"

Claude: "I'm using the ai-text-humanization skill to approach this systematically.

TodoWrite tracking:
✓ Phase 1: [Completed]
⧖ Phase 2: [Current phase]
○ Phase 3: [Pending]

[Claude follows skill methodology]
```

### Integration with Other Skills

This skill combines well with:
- **test-driven-development**: For implementation
- **systematic-debugging**: For troubleshooting
- **brainstorming**: For initial design
- **verification-before-completion**: For final checks

Invoke multiple skills:
```
"Use brainstorming to design, then ai-text-humanization to implement"
```

### ZIP Upload Details

**Location:** `superpowers-desktop/pro-setup/skill-zips/ai-text-humanization.zip`

**Contents:**
- Main skill file: `ai-text-humanization.md`
- Supporting files (if any)
- Metadata for Claude Desktop

**Installation:**
1. Download ZIP from repository
2. Claude Desktop → Settings → Capabilities
3. "Upload skill" → Select ZIP
4. Skill appears in capabilities list
5. Available in all conversations

**Updating:**
- Download updated ZIP
- Re-upload to Claude Desktop
- Replaces previous version

### Project Knowledge Method

**When to use:**
- Want project-specific configuration
- Need to customize skill for project
- Testing skill modifications
- Don't need account-wide access

**Setup:**
1. Claude Desktop → New Project
2. Project Settings → Knowledge
3. Upload `ai-text-humanization.md`
4. Add custom instructions to project
5. Use skill in project conversations

### Tips for Claude Desktop

1. **Use TodoWrite for tracking:**
   ```
   "Create a TodoWrite checklist for ai-text-humanization steps"
   ```

2. **Leverage automation:**
   Claude Desktop can automate some verification steps

3. **File integration:**
   Claude can read/write project files directly

4. **Command execution:**
   Can run tests, build commands, etc.

### Troubleshooting

**Skill not activating?**
- Check it's uploaded (Settings → Capabilities)
- Explicitly invoke by name
- Verify ZIP upload succeeded
- Try: "Check your capabilities for ai-text-humanization"

**TodoWrite not working?**
- Available in Claude Code plugin, not basic Desktop
- Fall back to manual tracking in responses
- Use markdown checklists

**Skill not found in project?**
- Verify file uploaded to project knowledge
- Check project settings
- Try re-uploading skill file

**Multiple skills needed?**
- Install all relevant skills via ZIP
- Invoke by name as needed
- Claude can coordinate between skills

### File Locations

- **Source:** `superpowers-desktop/pro-setup/skills/content/ai-text-humanization.md`
- **ZIP:** `superpowers-desktop/pro-setup/skill-zips/ai-text-humanization.zip`
- **Documentation:** See `SKILLS-ZIP-UPLOAD-GUIDE.md`

### Related Documentation

- [Skills ZIP Upload Guide](../../SKILLS-ZIP-UPLOAD-GUIDE.md)
- [Setup Guide](../../SETUP.md)
- [Main README](../../README.md)
- [Custom Instructions](../../custom-instructions.txt)

### Automation Scripts

Generate ZIPs for all skills:
```bash
cd superpowers-desktop/pro-setup
./create-skill-zips.sh
```

Output: All skill ZIPs in `skill-zips/` directory

### Support

- **Setup Help:** Check `SKILLS-ZIP-UPLOAD-GUIDE.md`
- **Script Issues:** See `create-skill-zips.sh`
- **General Issues:** https://github.com/obra/superpowers/issues
- **Discussions:** https://github.com/obra/superpowers/discussions
