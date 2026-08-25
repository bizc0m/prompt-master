# Migration Prompt Master V0.7 -> V0.8

Date : 2026-08-22.
Statut : migration non destructive.

## Decision

Une seule source active V0.8 :
- `CORE.md`
- `modules/*.md`
- `adapters/*.md`

Sorties generees :
- `launcher.md`
- `CTxKNL_v0.8.md`
- `prompt.md`
- `latest.md`
- `assistant-dev-prompt.md`
- `prompt-master-systematique.txt`

Archives conservees :
- `archive/2026-08-22-v0.7/`
- `CTxKNL_v0.1.md`
- `CTxKNL_v0.4.md`
- `CTxKNL_v0.7.md`

## Table GARDER / FUSIONNER / SUPPRIMER / DEPLACER

| Regles V0.7 | Action | Destination V0.8 | Note |
| --- | --- | --- | --- |
| `[CORE-000]` a `[CORE-010]` | GARDER | `CORE.md` | Identite, verite, style minimal. |
| `[CORE-001]` a `[CORE-005]` | GARDER | `CORE.md` | Contexte utilisateur prioritaire. |
| `[DICT-001]`, `[DICT-011]`, `[CORE-011]` a `[CORE-025]` | FUSIONNER | Archive + usage optionnel | Trop lourd pour CORE actif ; conserve dans V0.7 archive. |
| `[STYLE-LANG]`, `[STYLE-001]` a `[STYLE-024]` | GARDER | `CORE.md` | Style universel. |
| `[CORE-026]` a `[CORE-028]` | FUSIONNER | `CORE.md` implicite | Profil condense dans le style et les preferences. |
| `[CORE-029]` a `[CORE-046]` | GARDER | `CORE.md` | Verification, scope, sources, actions externes. |
| `[CORE-047]` a `[CORE-050]` | DEPLACER | `modules/git-github.md` | Versioning de fichier lie aux taches projet. |
| `[CORE-051]` a `[CORE-053]` | GARDER | `CORE.md` | Mode normal. |
| `[CORE-054]` a `[CORE-063]` | DEPLACER | `CORE.md` + modules | Routage condense dans CORE ; details DEV dans `project-dev`. |
| `[CORE-064]` a `[CORE-096]` | DEPLACER | `modules/project-dev.md` | Mode DEV, suivi, TD, execution. |
| `[QUEUE-001]` a `[QUEUE-005]` | DEPLACER | `modules/skill-agent.md` | Queue et multi-agent. |
| `[CORE-097]` a `[CORE-104]` | DEPLACER | `modules/app-runtime.md` | Sessions longues et runtime. |
| `[CORE-105]` a `[CORE-113]` | DEPLACER | `modules/skill-agent.md` | Handoff multi-LLM. |
| `[CORE-114]` a `[CORE-132]`, `[TD-001]` a `[TD-010]` | DEPLACER | `modules/project-dev.md` | Suivi projet et todo. |
| `[CORE-133]` a `[CORE-140]` | DEPLACER | `modules/app-runtime.md` + `modules/site-dashboard.md` | UI/app/runtime. |
| `[CORE-141]` a `[CORE-161]` | DEPLACER | `modules/km-veille.md` | KM, sources, veille. |
| `[CORE-162]` a `[CORE-180]` | FUSIONNER | `MIGRATION_V0.8.md` + archives | Regles de numerotation gardees comme politique, pas chargees par defaut. |
| `[CORE-181]` a `[CORE-218]`, `[GIT-001]` a `[GIT-007]` | DEPLACER | `modules/git-github.md` | Git, canaux, Prompt Master. |
| `[CORE-219]` a `[CORE-234]`, `[TEST-001]` a `[TEST-002]` | DEPLACER | `modules/project-dev.md` | Execution et tests. |
| `[DELIV-001]` a `[DELIV-003]`, `[CORE-235]` a `[CORE-246]` | DEPLACER | `modules/document-report.md` | Livrables, liens, formats copiables. |
| `[COUNT-001]`, `[CORE-247]` a `[CORE-254]`, `[COUNT-012]` a `[COUNT-017]`, `[RS-001]` a `[RS-005]` | DEPLACER | `modules/project-dev.md` | Compteur et reprise. |
| `[CORE-255]` a `[CORE-268]` | FUSIONNER | `modules/project-dev.md` | Rapport final condense ; options longues non chargees par defaut. |
| `[CORE-269]` a `[CORE-278]` | FUSIONNER | `adapters/codex.md` + `adapters/claude.md` | Assistant DEV generique transforme en adapters. |
| `[CORE-279]` a `[CORE-293]`, `[COUNT-009]` a `[COUNT-011]` | DEPLACER | `modules/project-dev.md` + adapters | Mode strict disponible mais non charge par defaut. |
| `[PTLIB-001]` / bloc Points-Libs | DEPLACER | `modules/points-libs.md` | Module dedie. |
| Doublons `prompt.md`, `latest.md`, `assistant-dev-prompt.md`, `prompt-master-systematique.txt` comme sources officielles | SUPPRIMER | Sorties generees | Pas de suppression fichier ; statut change en sortie generee. |
| References actives a `CTxKNL_v0.7.md` | DEPLACER | `launcher.md` / `CTxKNL_v0.8.md` | V0.7 conservee en archive. |
| References README a `ai-station-m5`, `V2/`, assets absents | SUPPRIMER | README V0.8 | Retire du README actif ; historique conserve en Git/archive. |

## Controle suppressions

Aucun fichier historique n'est supprime.
`SUPPRIMER` signifie retirer du chemin actif V0.8, pas effacer du depot.
