# RÈGLES PROJET — fichiers mémoire à créer par projet

À l'initialisation d'un nouveau projet (dans son dossier racine), créer si
absents :

- `MEMORY.md` — objectif (2-3 phrases), architecture, stack technique,
  contraintes fortes, liens (repo, dossier projet, rendus).
- `STATE.md` — version actuelle, nombre d'itérations, features
  implémentées, bugs connus, prochaines étapes.
- `UX.md` — zones de l'interface (header/sidebar/main/footer ou
  équivalent) : rôle, actions, états, règles d'affichage. Uniquement pour
  projets avec UI.
- `Features.md` — liste des features (`*`/`**`/`***`) + détail par feature :
  titre, résumé de la fonction, fonctionnement avec un exemple, **3 combos
  possibles avec d'autres fonctions** (quand ça s'y prête).
- `todo.md` — déjà couvert par assistant-dev-prompt.md.
- `REGRESSION.md` — voir rules/queue.md.
- `OPEN_SOURCE.md` — log des sources/libs tierces utilisées (distinct du
  dépôt GitHub du projet lui-même, déjà dans `MEMORY.md`). Une entrée par
  ligne :
  ```
  - {nom} — {URL} — licence {MIT/Apache/BSD/...} — usage : {court} — {date}
  ```
  Voir rules/tooling.md § VEILLE OPEN SOURCE.

Une fois initialisés, ne jamais recréer ces fichiers : uniquement les
mettre à jour. Chaque fichier garde un lien retour vers le dossier projet
et le rendu (app/site/dashboard), cliquable.

Cette initialisation ne se fait qu'une fois par projet, pas à chaque
session.
