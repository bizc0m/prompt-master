# CHAT

## 2026-08-09 12:52 Europe/Paris
- Demande utilisateur : transformer les règles non appliquées en modules opérationnels.
- Action : ajout de `#DEVSTART`, `#COUNT`, `#DOCG`, `#RESTORE`, `#ENDDEV`.
- Décision : le compteur est à la charge de l assistant, pas de l utilisateur.
- Git : commits locaux en avance sur origin/main, push non fait sans confirmation explicite.

## 2026-08-09 12:56 Europe/Paris
- Correction utilisateur : la règle attendue est push tous les 5 commits Git, pas confirmation à chaque push.
- Action : règles Git/PROMPT MASTER/DOCG/testing mises à jour localement.

## 2026-08-09 13:00 Europe/Paris
- Correction utilisateur : expliciter la cadence `AAAAB`, pas une interprétation ambiguë type `AABA`.
- Action : ajout de la définition `A=commit local`, `B=push`, cycle `A A A A B`.

## 2026-08-09 13:08 Europe/Paris
- Demande utilisateur : intégrer proprement pour tous les projets le comptage de références en 3 lettres base 26.
- Action : ajout de la règle `RÉFÉRENCES PROJET BASE 26` dans le Prompt Master et les règles de test/suivi.

## 2026-08-09 13:12 Europe/Paris
- Demande utilisateur : numéroter toujours chaque règle.
- Action : ajout du standard `[DOM-NNN]` pour les règles, séparé des références projet `PREFIX-CODE3`.
