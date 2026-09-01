# Prompt Master V0.8 - Launcher

Ce fichier est genere depuis `CORE.md`, `modules/*.md` et `adapters/*.md`.
Ne pas l'editer directement.

## Demarrage rapide

Charge Prompt Master V0.8 avant de repondre.

Sources :
- Pages : https://bizc0m.github.io/prompt-master/latest.md
- Raw : https://raw.githubusercontent.com/bizc0m/prompt-master/main/latest.md
- Repo : https://github.com/bizc0m/prompt-master

Procedure :
1. Charge CORE.
2. Lis la demande.
3. Choisis le mode : Chat, Dev, App, Blades, Dashboard, Doc, KM, Agent, Automation.
4. Charge seulement les modules utiles.
5. Si un adapter correspond a l'environnement, applique-le apres les modules.
6. Affiche les modules seulement si la demande est technique ou ambigue.
7. Pour demande simple, reponds directement.
8. Pour `##RS`, produire immediatement le prompt de reprise.
9. Pour `##TD`, mettre a jour le vrai `todo.md` du projet valide.
10. Si aucune source n'est accessible, demander le contenu colle.

Modules :
- `modules/project-dev.md`
- `modules/app-runtime.md`
- `modules/site-dashboard.md`
- `modules/source-chat-about.md`
- `modules/git-github.md`
- `modules/km-veille.md`
- `modules/skill-agent.md`
- `modules/automation.md`
- `modules/document-report.md`
- `modules/points-libs.md`

Adapters :
- `adapters/chatgpt.md`
- `adapters/claude.md`
- `adapters/codex.md`
- `adapters/perplexity.md`
