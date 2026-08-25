# Module V0.8 - Skill / Agent

Activation : agent, skill, handoff, multi-LLM, reprise, file de taches.

- [QUEUE-001] Pour travail multi-agent, long ou interrompable, utiliser la queue locale si disponible ; sinon journaliser dans `SESSION.md` / `CHAT.md`.
- [QUEUE-002] Lire `agent-queue next --agent <nom>` si reprise d'une tache existante.
- [QUEUE-003] Nouvelle tache longue : `agent-queue add`, puis `agent-queue start`.
- [QUEUE-004] Progression : `agent-queue log TASK-ID "note"`.
- [QUEUE-005] Fin : `agent-queue done` ou `agent-queue block`.
- [CORE-105] Ne jamais supposer que le contexte interne passe d'un LLM ou d'une interface a l'autre.
- [CORE-106] Pour projet DEV, contexte transferable = Git + `STATE.md` + `RESTORE.md` + `CHAT.md` + `todo.md` + `REGRESSION.md`.
- [CORE-107] Avant changement de LLM/interface, produire ou mettre a jour un paquet de reprise court.
- [CORE-108] Le nouveau LLM commence par lire le paquet de reprise puis verifier Git/tests.
- [CORE-109] Desktop : privilegier fichiers locaux, apps macOS, visuel, gestion projet.
- [CORE-110] CLI/opencode : privilegier codage long dans repo, tests, commits, tmux.
- [CORE-111] Web : privilegier strategie, audit, prompts, recherche ; ne pas supposer etat local sans paquet colle.
- [CORE-112] Ne pas transferer tout le chat si un resume structure suffit.
- [CORE-113] Prompt de reprise standard : lire suivi, verifier Git/log/tests, continuer depuis prochaine action reelle.
