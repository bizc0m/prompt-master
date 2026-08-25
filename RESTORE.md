# RESTORE

project: prompt-master
channel: Dev
branch: main
status: migration V0.8 locale, non poussee

## Reprise

1. Verifier l'etat Git : `git status --short --branch`.
2. Lire `README.md`, `VERSIONS.md`, `MIGRATION_V0.8.md`, `CORE.md`.
3. Si modification Prompt Master : editer uniquement `CORE.md`, `modules/*.md`, `adapters/*.md` ou `launcher.template.md`.
4. Regenerer : `scripts/build-launcher.sh`.
5. Verifier les alias :
   - `cmp -s launcher.md latest.md`
   - `cmp -s launcher.md prompt.md`
   - `cmp -s launcher.md assistant-dev-prompt.md`
   - `cmp -s launcher.md prompt-master-systematique.txt`

## Derniere action

- Restructuration V0.8 ajoutee.
- Ancienne V0.7 conservee dans `archive/2026-08-22-v0.7/`.
- Alias latest generes depuis `launcher.md`.
- README, VERSIONS, loader et liens HTML alignes sur V0.8.

## Verification faite

- `bash -n scripts/build-launcher.sh` : OK.
- Alias generes identiques : OK.
- Recherche liens actifs V0.7 dans entrees publiques : OK.
- Serveur local `http://127.0.0.1:8976/` : fichiers principaux en HTTP 200.

## Prochaine action

- Relire le diff.
- Commit local dedie si validation.
- Push GitHub uniquement apres demande explicite ou cadence validee.
