# SESSION

project: prompt-master
channel: Dev
started_at: 2026-08-09 12:52 Europe/Paris
prompt_count: 4
last_action: integration references projet base 26 code 3 lettres
status: en cours

## Seuils
- 15: audit leger
- 18: prevenir seuil
- 21: resume reprise
- 25: prevenir
- 30: STOP + Session Memory

## Notes
- Compteur initialise apres correction utilisateur.
- Les prompts precedents de cette conversation ne sont pas recomptes retroactivement faute de compteur persistant fiable.

git_push_cadence: push automatique au 5e commit valide

git_cadence_pattern: AAAAB (A=commit local, B=push)

reference_scheme: PREFIX-CODE3 base26 AAA-ZZZ
