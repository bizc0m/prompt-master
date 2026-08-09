# prompt-master

**v2.0-dev** — dernière mise à jour : 2026-08-09 11:58 CEST

Source officielle du Prompt Master réutilisable pour LLM Desktop, CLI et Web.

## Version canonique

Le prompt complet à copier dans un LLM est :

- [`prompt-master-systematique.txt`](prompt-master-systematique.txt)

La version HTML locale/autonome est :

- [`Prompt-Master.html`](Prompt-Master.html)

La version compacte basée sur dictionnaire est :

- [`prompt-master-compact-dictionnaire_v0.1.txt`](prompt-master-compact-dictionnaire_v0.1.txt)

## Quick start

Copier le contenu complet de `prompt-master-systematique.txt`.

Pour un contexte court, utiliser `prompt-master-compact-dictionnaire_v0.1.txt`, puis charger les sections détaillées seulement quand elles deviennent utiles.

**Non inclus, exclu volontairement** (spécifique macOS/Claude Code ou non
opérationnel hors cet environnement — voir `tooling.md` /
`assistant-dev-prompt.md` pour le détail complet) : `pbcopy`, `iterm_log`/
titre terminal, audit croisé multi-LLM, `TOOLS.md`/`setup.md` sync
devices, "continuer sans réponse après 5 min" (suppose un agent autonome,
non applicable en chat classique).

**Compressé, détail dans les fichiers sources** : commandes "reviens à
vN" / "montre l'historique" (`versioning.md`), format exact d'une entrée
`REGRESSION.md` (`queue.md`), "consigner validation accès dans CLAUDE.md
du projet" (`assistant-dev-prompt.md`).

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
- `scripts/iterm_log.sh` — script sourceable, log terminal nommé par projet.
- `hooks/pre-commit` — bloque tout commit contenant un chemin personnel.

## Installation dans un projet

Copier `CLAUDE.md.example` en `CLAUDE.md` à la racine du projet (ou dossier
parent commun à plusieurs projets), adapter le chemin vers ce dossier
`rules/`.

Puis activer le hook anti-leak (bloque tout commit contenant un chemin
personnel du type `/Users/<nom>`, ce repo étant public) :
```bash
cd rules && git config core.hooksPath hooks
```

Optionnel, terminal nommé par projet :
```bash
echo 'source ~/#DEV/rules/scripts/iterm_log.sh' >> ~/.zshrc
```

## Procédure de mise à jour de ce repo

Toute modification validée de `rules/` (par moi ou un LLM appliquant ces
règles) : commit → push → mettre à jour la ligne "dernière mise à jour"
en tête de ce README (date + heure réelles, pas approximatives).

## Historique

Reconstruit à partir d'un ancien système "Prompt-Maitre" (script bash /
copier-coller manuel) — remplacé par ce système auto-chargé (CLAUDE.md +
imports), corrigé et testé réellement (ex. `iterm_log` : l'approche
AppleScript `set log filename to` échouait sur iTerm2 3.6.11, remplacée par
`script`, util Unix standard).
