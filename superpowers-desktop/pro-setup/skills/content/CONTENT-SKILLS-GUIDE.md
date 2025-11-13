# Content Skills Guide

This directory contains **4 comprehensive content skills** with full reference materials and supporting files.

## Skills Included

### 1. LinkedIn Thought Leadership (`linkedin-thought-leadership.md`)
**Transform any content into engaging LinkedIn posts**

**What's Included:**
- Main skill guide (~5,500 words)
- **References:**
  - `thought-leadership-angles.md` - 8 universal angles framework
  - `linkedin-formats.md` - Complete format guide
  - `engagement-frameworks.md` - Strategic engagement methods
- **Assets:** Personalization templates for YOUR voice and content

### 2. UX Writing (`ux-writing.md`)
**Write clear, accessible interface copy**

**What's Included:**
- Main skill guide (~1,800 words)
- **References:**
  - `accessibility-guidelines.md` - WCAG compliance patterns
  - `voice-chart-template.md` - Brand voice framework
  - `patterns-detailed.md` - Extended pattern examples
- **Templates:**
  - `error-message-template.md` - Fillable error template

### 3. AI Text Humanization (`ai-text-humanization.md`)
**Transform AI-generated text into natural human writing**

**What's Included:**
- Main skill guide (~4,200 words)
- **Core Files:**
  - `master-prohibited-words.json` - **REQUIRED** (38KB, 1,643 lines)
  - `docs/USAGE_GUIDE.md` - Complete usage instructions

### 4. French AI Humanization (`humanisation-texte-ia-francais.md`)
**Version française complète de l'humanisation IA**

**What's Included:**
- Main skill guide (~8,500 words)
- **Core Files:**
  - `mots-interdits-francais.json` - **REQUIS** (103 lignes)

## How to Use

### Method 1: ZIP Upload (Recommended for Pro Users)

Each skill and its references are packaged as a ZIP in `../skill-zips/`:
- `linkedin-thought-leadership.zip`
- `ux-writing.zip`
- `ai-text-humanization.zip`
- `humanisation-texte-ia-francais.zip`

Upload directly to Claude Desktop (Settings → Capabilities).

### Method 2: Project Knowledge Upload

Add the main `.md` file to your Claude Desktop Project knowledge.

**For skills with reference materials**, also add:
- LinkedIn: Add `references/` folder files
- UX Writing: Add `references/` and `templates/` files
- AI Humanization: **Must add** `master-prohibited-words.json`
- French Humanization: **Must add** `mots-interdits-francais.json`

## Reference Materials Details

### LinkedIn Thought Leadership

**references/thought-leadership-angles.md** (5.9KB)
- 8 universal angles for any content
- Pattern recognition frameworks
- Contrarian take templates
- Future implication guides

**references/linkedin-formats.md** (22KB)
- Carousel creation guide
- Video script frameworks
- Poll optimization
- Document formatting
- Newsletter setup

**references/engagement-frameworks.md** (11KB)
- 5x5x5 pre-posting method
- First-hour battle plan
- Strategic commenting guide
- DM relationship building

**assets/** (Personalization)
- Templates for capturing YOUR voice
- Frameworks for YOUR content
- Examples of YOUR best posts

### UX Writing

**references/accessibility-guidelines.md** (12KB)
- WCAG compliance patterns
- Screen reader optimization
- Cognitive accessibility rules
- Multi-modal communication

**references/voice-chart-template.md** (4KB)
- Brand voice definition framework
- Do/don't examples
- Voice characteristic mapping

**references/patterns-detailed.md** (10KB)
- Extended button patterns
- Error message variations
- Empty state examples
- Form field patterns

**templates/error-message-template.md**
- Fillable template with structure
- Examples for each error type
- Validation vs system vs blocking

### AI Text Humanization

**master-prohibited-words.json** (38KB, 1,643 lines) **[CRITICAL]**
- 150+ AI n-gram patterns
- Purple prose metaphors
- Business jargon detection
- Nominalization patterns
- Pattern-matching rules
- **Required for Phases 2 & 10**

**docs/USAGE_GUIDE.md**
- Step-by-step 10-phase workflow
- Automation setup instructions
- Troubleshooting guide
- Quality control checklist

### French AI Humanization

**mots-interdits-francais.json** (103 lines) **[REQUIS]**
- French formulaic expressions
- French business jargon
- French purple prose patterns
- French nominalization rules
- **Requis pour Phases 2 & 10**

## File Structure

```
content/
├── linkedin-thought-leadership.md
├── linkedin-thought-leadership/
│   ├── references/
│   │   ├── thought-leadership-angles.md
│   │   ├── linkedin-formats.md
│   │   └── engagement-frameworks.md
│   └── assets/
│       ├── README.md
│       └── voice-samples/
│           └── authentic-voice-samples.md
│
├── ux-writing.md
├── ux-writing/
│   ├── references/
│   │   ├── accessibility-guidelines.md
│   │   ├── voice-chart-template.md
│   │   └── patterns-detailed.md
│   └── templates/
│       └── error-message-template.md
│
├── ai-text-humanization.md
├── ai-text-humanization/
│   ├── master-prohibited-words.json [REQUIRED]
│   └── docs/
│       └── USAGE_GUIDE.md
│
├── humanisation-texte-ia-francais.md
└── humanisation-texte-ia-francais/
    └── mots-interdits-francais.json [REQUIS]
```

## Important Notes

### Required vs Optional Files

**REQUIRED (skills won't work properly without these):**
- `ai-text-humanization/master-prohibited-words.json`
- `humanisation-texte-ia-francais/mots-interdits-francais.json`

**Highly Recommended (significantly enhance skill utility):**
- All LinkedIn reference files
- All UX Writing reference files
- AI humanization USAGE_GUIDE.md

**Optional (for personalization):**
- LinkedIn assets/ folder files
- User-customizable templates

### ZIP Upload Notes

Pre-generated ZIPs include:
- Main skill file
- ALL reference materials
- Required JSON files
- Templates and guides

Simply upload the ZIP - all materials are included automatically.

## Credits

- **LinkedIn Thought Leadership**: Based on work by ktg0066
- **UX Writing**: Based on work by content-designer
- **AI Text Humanization**: Based on ClaudeHumanizer by pshort05
- **French AI Humanization**: French adaptation of ClaudeHumanizer
