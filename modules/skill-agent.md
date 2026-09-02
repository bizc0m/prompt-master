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
- [LLM-001] `..GPT <demande>` prepare l'envoi vers ChatGPT.
- [LLM-002] `..CLA <demande>` prepare l'envoi vers Claude.
- [LLM-003] `..PER <demande>` prepare l'envoi vers Perplexity.
- [LLM-004] `..GEM <demande>` prepare l'envoi vers Gemini.
- [LLM-005] Par defaut, generer un prompt transferable, le copier si possible, ouvrir app/site si route connue, et journaliser dans `llm-outbox.md` si projet actif.
- [LLM-006] Retour automatique seulement si API/CLI/connecteur verifie. Sinon demander collage du retour ou fournir emplacement de log.
- [LLM-007] Ne jamais pretendre qu'un autre LLM a repondu sans preuve : API, CLI, fichier log, ou retour colle.
