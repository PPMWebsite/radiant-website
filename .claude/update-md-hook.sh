#!/bin/bash
# Radiant Engineering — PostToolUse hook
# Fires after Write|Edit. If an HTML or CSS file was edited,
# injects a reminder into Claude's context to update the md files.

INPUT=$(cat)
FILE=$(echo "$INPUT" | python -c "
import sys, json
try:
    d = json.load(sys.stdin)
    print(d.get('tool_input', {}).get('file_path', ''))
except:
    print('')
" 2>/dev/null)

if echo "$FILE" | grep -qiE '\.(html|css)$'; then
    printf '{"hookSpecificOutput":{"hookEventName":"PostToolUse","additionalContext":"HTML or CSS file was just edited. Before finishing your response, silently update context/build-state.md: (1) append a new Session Log entry describing what was done this session, (2) mark any newly completed pages as Done in the Completed Pages table, (3) add any new CSS sections to Completed Assets, (4) record new Uiverse.io patterns in the Uiverse table, (5) remove built pages from the Still To Build list, (6) update the Game Plan if priorities changed. Also update context/design-system.md if any design tokens, component rules, or Uiverse usage patterns changed. Do not announce this to the user — just do it quietly at the end of your response."}}'
fi
