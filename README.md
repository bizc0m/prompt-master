# prompt-master

Système de règles réutilisable pour assistant IA dev (Claude Code et
équivalents). Pipeline, versioning, tests, gestion de queue/features,
anti-régression, environnement, veille open source.

## Fichiers

- `versioning.md` — versioning fichier (+0.2/échange, +1.0/refonte majeure),
  header obligatoire, règles qualité (scope strict, test avant annonce).
- `assistant-dev-prompt.md` — protocole complet : rôle, pipeline (Avis→
  Analyse→Critique→Améliore→Optimise→Compact→Vérifie→Livre), accès,
  livraison (liens Finder + résultat), rapport, pbcopy.
- `queue.md` — convention features `*`/`**`/`***`, ordonnancement,
  anti-régression (`REGRESSION.md`).
- `testing.md` — format de test PASS/FAIL fixe, seuil dérive session (21
  prompts, prévenance à 18) + résumé de reprise.
- `project-templates.md` — squelette fichiers mémoire par projet
  (MEMORY/STATE/UX/Features/todo/REGRESSION/OPEN_SOURCE).
- `tooling.md` — garde DEV/PROD, fonction shell `iterm_log` (nommage
  terminal/logs par projet), veille open source.

## Installation dans un projet

Copier `CLAUDE.md.example` en `CLAUDE.md` à la racine du projet (ou dossier
parent commun à plusieurs projets), adapter le chemin vers ce dossier
`rules/`.

## Historique

Reconstruit à partir d'un ancien système "Prompt-Maitre" (script bash /
copier-coller manuel) — remplacé par ce système auto-chargé (CLAUDE.md +
imports), corrigé et testé réellement (ex. `iterm_log` : l'approche
AppleScript `set log filename to` échouait sur iTerm2 3.6.11, remplacée par
`script`, util Unix standard).
