#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

OUT="launcher.md"
{
  cat launcher.template.md
  printf '\n---\n\n'
  cat CORE.md
  for file in modules/*.md; do
    printf '\n---\n\n'
    cat "$file"
  done
  for file in adapters/*.md; do
    printf '\n---\n\n'
    cat "$file"
  done
} > "$OUT"
perl -0pi -e 's/\n+\z/\n/' "$OUT"

cp "$OUT" CTxKNL_v0.8.md
cp "$OUT" prompt.md
cp "$OUT" latest.md
cp "$OUT" assistant-dev-prompt.md
cp "$OUT" prompt-master-systematique.txt

printf 'Generated %s, CTxKNL_v0.8.md, prompt.md, latest.md, assistant-dev-prompt.md, prompt-master-systematique.txt\n' "$OUT"
