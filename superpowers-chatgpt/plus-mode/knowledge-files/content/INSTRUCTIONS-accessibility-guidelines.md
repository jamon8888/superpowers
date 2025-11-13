# ChatGPT Pro Instructions: accessibility-guidelines

## Platform: ChatGPT Plus (Projects Mode)

### Quick Start

1. **Setup Required:**
   - You must be using ChatGPT Plus ($20/month)
   - Create a "Superpowers Development" project
   - Upload this skill file to the project
   - Add custom instructions (see below)

2. **Activation:**
   ```
   "Use accessibility-guidelines skill to help me with..."
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
- accessibility-guidelines (content)
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
   "Use the accessibility-guidelines skill for this task"
   ```

2. **Manual Tracking:**
   Since TodoWrite isn't available, ask ChatGPT to:
   ```
   "Track the checklist from accessibility-guidelines in your response"
   ```

3. **Verification:**
   After each phase:
   ```
   "Verify that we've completed all accessibility-guidelines requirements"
   ```

### Example Usage

```
User: "Help me implement user authentication"

You: "I'm going to use the accessibility-guidelines skill to approach this systematically.

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
"Use brainstorming skill to design this, then accessibility-guidelines to implement"
```

### Tips for ChatGPT Projects

1. **Start conversations with skill invocation:**
   ```
   "Let's use accessibility-guidelines for this task"
   ```

2. **Ask for explicit tracking:**
   ```
   "Show me the checklist as we go"
   ```

3. **Verify completion:**
   ```
   "Did we follow all accessibility-guidelines requirements?"
   ```

4. **Reference project knowledge:**
   ```
   "Check accessibility-guidelines.md for the exact steps"
   ```

### Troubleshooting

**Skill not being used?**
- Explicitly invoke by name
- Check skill file is uploaded to project
- Try: "Check your knowledge files for accessibility-guidelines"

**Tracking not working?**
- Ask for manual checklist in response
- Use markdown checkboxes for visual tracking
- Copy checklist to separate note

**Multiple skills needed?**
- Invoke all needed skills upfront
- Ask ChatGPT to coordinate between them
- Example: "Use brainstorming, then test-driven-development"

### File Location

- **Source:** `superpowers-chatgpt/plus-mode/knowledge-files/content/accessibility-guidelines.md`
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
