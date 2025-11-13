#!/bin/bash

# Script to generate instruction files for all skills in both ChatGPT Pro and Claude Desktop Pro

# Color codes
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Generating instruction files for ChatGPT Pro and Claude Desktop Pro...${NC}"

# Define base directories
CHATGPT_BASE="/home/user/superpowers/superpowers-chatgpt/plus-mode/knowledge-files"
CLAUDE_BASE="/home/user/superpowers/superpowers-desktop/pro-setup/skills"

# Categories
CATEGORIES=("core" "testing" "debugging" "collaboration" "meta" "content")

# Function to create ChatGPT Pro instructions for a skill
create_chatgpt_instructions() {
    local skill_file=$1
    local skill_dir=$(dirname "$skill_file")
    local skill_name=$(basename "$skill_file" .md)
    local category=$(basename "$skill_dir")

    # Skip if already an instructions file or other special files
    if [[ "$skill_name" == "INSTRUCTIONS" || "$skill_name" == "index" || "$skill_name" == "README" || "$skill_name" == *"GUIDE"* ]]; then
        return
    fi

    local instructions_file="${skill_dir}/INSTRUCTIONS-${skill_name}.md"

    cat > "$instructions_file" << 'INSTEOF'
# ChatGPT Pro Instructions: SKILL_NAME

## Platform: ChatGPT Plus (Projects Mode)

### Quick Start

1. **Setup Required:**
   - You must be using ChatGPT Plus ($20/month)
   - Create a "Superpowers Development" project
   - Upload this skill file to the project
   - Add custom instructions (see below)

2. **Activation:**
   ```
   "Use SKILL_NAME skill to help me with..."
   ```

3. **Project Setup:**
   - Go to https://chat.openai.com
   - Click "My Projects" → "New Project"
   - Name: "Superpowers Development" (or your choice)
   - Upload ALL skill files from `knowledge-files/` directory
   - Set custom instructions in project settings

### Custom Instructions Template

Add this to your project's custom instructions:

```
You have access to Superpowers skills in your knowledge base.

When users request development work:
1. Check which skills apply
2. Explicitly invoke relevant skills by name
3. Follow the skill's methodology completely
4. Track your progress through explicit steps

Available skills include:
- SKILL_NAME (CATEGORY)
- [Other skills listed in your project]

Always announce when you're using a skill and follow its guidelines.
```

### Platform-Specific Features

**Advantages on ChatGPT:**
- Persistent across all conversations in the project
- No file size limits for knowledge files
- Can access web browsing and DALL-E if needed
- Works on mobile apps
- Familiar ChatGPT interface

**Limitations:**
- No TodoWrite tool (track manually in responses)
- No automatic skill activation
- Must explicitly invoke skills
- No background task execution
- Limited to text-based tracking

### How to Use This Skill

1. **Explicit Invocation:**
   Always explicitly tell ChatGPT to use the skill:
   ```
   "Use the SKILL_NAME skill for this task"
   ```

2. **Manual Tracking:**
   Since TodoWrite isn't available, ask ChatGPT to:
   ```
   "Track the checklist from SKILL_NAME in your response"
   ```

3. **Verification:**
   After each phase:
   ```
   "Verify that we've completed all SKILL_NAME requirements"
   ```

### Example Usage

```
User: "Help me implement user authentication"

You: "I'm going to use the SKILL_NAME skill to approach this systematically.

[ChatGPT follows skill methodology]

Let me track progress:
✓ Step 1: [Description]
⧖ Step 2: [Current]
○ Step 3: [Pending]
..."
```

### Integration with Other Skills

This skill works well with:
- **test-driven-development**: For implementation
- **systematic-debugging**: For troubleshooting
- **brainstorming**: For initial design
- **verification-before-completion**: For final checks

Invoke multiple skills as needed:
```
"Use brainstorming skill to design this, then SKILL_NAME to implement"
```

### Tips for ChatGPT Projects

1. **Start conversations with skill invocation:**
   ```
   "Let's use SKILL_NAME for this task"
   ```

2. **Ask for explicit tracking:**
   ```
   "Show me the checklist as we go"
   ```

3. **Verify completion:**
   ```
   "Did we follow all SKILL_NAME requirements?"
   ```

4. **Reference project knowledge:**
   ```
   "Check SKILL_NAME.md for the exact steps"
   ```

### Troubleshooting

**Skill not being used?**
- Explicitly invoke by name
- Check skill file is uploaded to project
- Try: "Check your knowledge files for SKILL_NAME"

**Tracking not working?**
- Ask for manual checklist in response
- Use markdown checkboxes for visual tracking
- Copy checklist to separate note

**Multiple skills needed?**
- Invoke all needed skills upfront
- Ask ChatGPT to coordinate between them
- Example: "Use brainstorming, then test-driven-development"

### File Location

- **Source:** `superpowers-chatgpt/plus-mode/knowledge-files/CATEGORY/SKILL_NAME.md`
- **Project:** Upload to "Superpowers Development" project
- **Documentation:** See `PROJECTS-SETUP-GUIDE.md`

### Related Documentation

- [ChatGPT Projects Setup Guide](../PROJECTS-SETUP-GUIDE.md)
- [Main README](../README.md)
- [All Skills Overview](../../README.md)

### Support

- **Setup Help:** Check `PROJECTS-SETUP-GUIDE.md`
- **Issues:** https://github.com/obra/superpowers/issues
- **Discussions:** https://github.com/obra/superpowers/discussions
INSTEOF

    # Replace placeholders
    sed -i "s/SKILL_NAME/${skill_name}/g" "$instructions_file"
    sed -i "s/CATEGORY/${category}/g" "$instructions_file"

    echo -e "${GREEN}Created: $instructions_file${NC}"
}

# Function to create Claude Desktop Pro instructions for a skill
create_claude_instructions() {
    local skill_file=$1
    local skill_dir=$(dirname "$skill_file")
    local skill_name=$(basename "$skill_file" .md)
    local category=$(basename "$skill_dir")

    # Skip if already an instructions file or other special files
    if [[ "$skill_name" == "INSTRUCTIONS" || "$skill_name" == "index" || "$skill_name" == "README" || "$skill_name" == *"GUIDE"* ]]; then
        return
    fi

    local instructions_file="${skill_dir}/INSTRUCTIONS-${skill_name}.md"

    cat > "$instructions_file" << 'INSTEOF'
# Claude Desktop Pro Instructions: SKILL_NAME

## Platform: Claude Desktop Pro

### Quick Start

1. **Setup Required:**
   - Claude Desktop Pro subscription
   - Install Claude Desktop app
   - Upload skill via ZIP or Project Knowledge

2. **Activation:**
   ```
   "Use SKILL_NAME skill to help me with..."
   ```

3. **Two Upload Methods:**

   **Method A: ZIP Upload (Recommended)**
   - Pre-built ZIP available in `skill-zips/SKILL_NAME.zip`
   - Go to Claude Desktop → Settings → Capabilities
   - Click "Upload skill" and select ZIP
   - Skill available account-wide

   **Method B: Project Knowledge**
   - Create new project in Claude Desktop
   - Upload `SKILL_NAME.md` to project knowledge
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
- SKILL_NAME (CATEGORY)
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
   "Use the SKILL_NAME skill for this task"
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
   "Track the SKILL_NAME checklist as we go"
   ```

4. **Verification:**
   ```
   "Verify all SKILL_NAME requirements are met"
   ```

### Example Usage

```
User: "Help me implement user authentication"

Claude: "I'm using the SKILL_NAME skill to approach this systematically.

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
"Use brainstorming to design, then SKILL_NAME to implement"
```

### ZIP Upload Details

**Location:** `superpowers-desktop/pro-setup/skill-zips/SKILL_NAME.zip`

**Contents:**
- Main skill file: `SKILL_NAME.md`
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
3. Upload `SKILL_NAME.md`
4. Add custom instructions to project
5. Use skill in project conversations

### Tips for Claude Desktop

1. **Use TodoWrite for tracking:**
   ```
   "Create a TodoWrite checklist for SKILL_NAME steps"
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
- Try: "Check your capabilities for SKILL_NAME"

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

- **Source:** `superpowers-desktop/pro-setup/skills/CATEGORY/SKILL_NAME.md`
- **ZIP:** `superpowers-desktop/pro-setup/skill-zips/SKILL_NAME.zip`
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
INSTEOF

    # Replace placeholders
    sed -i "s/SKILL_NAME/${skill_name}/g" "$instructions_file"
    sed -i "s/CATEGORY/${category}/g" "$instructions_file"

    echo -e "${GREEN}Created: $instructions_file${NC}"
}

# Generate instructions for ChatGPT Pro
echo -e "\n${BLUE}Generating ChatGPT Pro instructions...${NC}"
for category in "${CATEGORIES[@]}"; do
    if [ -d "$CHATGPT_BASE/$category" ]; then
        echo -e "${BLUE}Processing category: $category${NC}"
        find "$CHATGPT_BASE/$category" -maxdepth 1 -name "*.md" -type f | while read skill_file; do
            create_chatgpt_instructions "$skill_file"
        done
    fi
done

# Generate instructions for Claude Desktop Pro
echo -e "\n${BLUE}Generating Claude Desktop Pro instructions...${NC}"
for category in "${CATEGORIES[@]}"; do
    if [ -d "$CLAUDE_BASE/$category" ]; then
        echo -e "${BLUE}Processing category: $category${NC}"
        find "$CLAUDE_BASE/$category" -maxdepth 1 -name "*.md" -type f | while read skill_file; do
            create_claude_instructions "$skill_file"
        done
    fi
done

echo -e "\n${GREEN}✓ All instruction files generated!${NC}"
echo -e "${BLUE}Generated files can be found next to each skill file with prefix 'INSTRUCTIONS-'${NC}"
