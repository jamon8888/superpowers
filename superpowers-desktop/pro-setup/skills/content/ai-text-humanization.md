---
name: ai-text-humanization
description: Transform AI-generated text into natural, human-like writing using a systematic 10-phase assembly line process. Eliminates AI detection markers while preserving meaning and voice through sequential improvements targeting vocabulary, patterns, statistical signatures, dialogue, and strategic imperfections. Use when editing AI-generated content that sounds robotic or formulaic, removing purple prose and clichés, improving dialogue authenticity, optimizing text to pass AI detectors, or refining hybrid human-AI content. Based on research-backed detection countermeasures including nominalization conversion, n-gram filtering, punctuation variation, and statistical optimization.
---

# AI Text Humanization

Transform AI-generated text into natural, human-like writing through systematic 10-phase sequential processing.

## When to Use This Skill

Use when:
- Editing AI-generated content that sounds robotic or formulaic
- Removing AI vocabulary, clichés, and purple prose
- Improving dialogue authenticity
- Optimizing text to reduce AI detection probability
- Refining hybrid human-AI content
- Processing creative writing, fiction, or narrative content

## Core Principles

### Assembly Line Approach

1. **Sequential processing** - Each phase builds on previous improvements
2. **Domain isolation** - No phase interferes with others' work
3. **Pattern-based filtering** - Intelligent rules for AI patterns
4. **Quality control** - Final sweep catches reintroduced markers

## The 10-Phase Process

### Phase 1: Grammar Foundation
Fix errors, typos, and basic structure issues. Technical correctness only.

### Phase 2: AI Word Cleaning
Remove AI-specific terms: "delve", "leverage", "utilize", "implement", "realm". Eliminate patterns like "it is important to note that...", "plays a crucial role in..."

### Phase 3: Purple Prose + Nominalization
Convert abstract constructions to direct forms:
- ❌ "The implementation of..." → ✅ "They implemented..."
- Remove: "symphony of...", "tapestry of...", "weight of silence"

### Phase 4: Sensory Enhancement
Add concrete sensory details to flat passages. Keep grounded and specific.

### Phase 5: Subtlety Creation
Show don't tell. Replace explicit statements with implication.

### Phase 6: Dialogue Enhancement
**Temperature 1.0**. Add contractions, fragments, character-specific quirks. Remove formal/stilted dialogue.

### Phase 7: Weak Language Cleanup + Voice Distribution
Remove weak modifiers ("very", "really", "just"). Target 85-90% active voice, 10-15% passive.

### Phase 8: Strategic Imperfections
Vary punctuation (inconsistent Oxford comma). Inject logical leaps and tangential thoughts. Create sentence length variation.

### Phase 9: AI Pattern Detection
Eliminate 150+ AI n-grams: "at the end of the day", "touch base", "deep dive". Disrupt predictable collocations.

### Phase 9.5: Statistical Hub (OPTIONAL)
Skip if text already balanced. Optimizes:
- **Burstiness**: Sentence variation (CV 0.4-0.7)
- **POS ratios**: 18-23% nouns, 16-20% verbs, 6-9% adjectives
- **Lexical diversity**: TTR 0.40-0.60

### Phase 10: Final Word Sweep
Quality control. Catches AI terms reintroduced by phases 3-9.

## Special Considerations

### ⚠️ NNES Bias Warning
Non-native English speaker writing naturally resembles AI patterns. For NNES content:
- Use phases selectively (skip 2, 3)
- Focus on dialogue/voice (6, 7)
- Test with small samples first

### ⚠️ Hybrid Text Guidance
For human + AI mixed content:
- Separate human sections from AI sections
- Process ONLY AI sections
- Do NOT mix in same paragraph

## Workflow

**Sequential processing:**
```
Phase 1 → 2 → 3 → 4 → 5 → 6 (temp 1.0) → 7 → 8 → 9 → [9.5 optional] → 10
```

**Each phase:**
1. Takes output from previous phase
2. Applies only its domain transformation
3. Passes result to next phase

**Quality Checks:**
- [ ] All 10 phases completed sequentially
- [ ] Phase 6 used temperature 1.0
- [ ] Meaning preserved throughout
- [ ] Dialogue sounds natural
- [ ] No AI clichés remain
- [ ] Sentence rhythm varies naturally

## Common AI Patterns

**Vocabulary:** "delve", "leverage", "utilize", "plethora", "myriad", "tapestry", "symphony"

**Structures:** Perfect punctuation consistency, over-explanation, excessively formal dialogue, abstract nominalizations

**Statistical:** Uniform sentence lengths, noun-heavy distribution, zero passive voice, predictable n-grams

## Quick Reference

| Phase | Focus | Temperature |
|-------|-------|-------------|
| 1 | Grammar | Standard |
| 2 | AI vocabulary | Standard |
| 3 | Purple prose + nominalization | Standard |
| 4 | Sensory details | Standard |
| 5 | Subtlety | Standard |
| 6 | Dialogue | **1.0** |
| 7 | Weak language + voice | Standard |
| 8 | Imperfections + rhythm | Standard |
| 9 | AI patterns | Standard |
| 9.5 | Statistics (optional) | Standard |
| 10 | Final sweep | Standard |

**Special cases:**
- NNES: Use phases selectively
- Hybrid text: Separate human/AI sections
- Business writing: Skip phases 4-5
- Short-form: Skip phase 9.5

Credit: Based on ClaudeHumanizer by pshort05 (https://github.com/pshort05/ClaudeHumanizer)
