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

## 2026-08-09 13:18 Europe/Paris
- Correction utilisateur : la règle de numérotation était déclarée mais les consignes existantes n étaient pas numérotées.
- Action : ajout automatique d identifiants `[DOM-NNN]` aux consignes en liste dans le prompt canonique, le prompt systématique et testing.md.

## 2026-08-09 13:22 Europe/Paris
- Vérification : aucune puce non numérotée restante dans les fichiers principaux.
- Correction : retrait de deux formulations anciennes imposant une confirmation avant tout push, remplacées par cadence AAAAB.

## 2026-08-09 13:30 Europe/Paris
- Demande utilisateur : créer un `.md` dictionnaire pour résumer les concepts et réduire les tokens.
- Action : création de `DICTIONNAIRE.md`, ajout règle `[DICT-001]`, mise à jour README, prompt canonique et prompt systématique.

## 2026-08-09 13:36 Europe/Paris
- Demande utilisateur : réduire le texte au mot/verbe, ultra concis.
- Action : ajout section `Ultra-concis`, verbes courts, opérateurs et exemples dans `DICTIONNAIRE.md`; ajout règle `[DICT-002]`.

## 2026-08-09 13:42 Europe/Paris
- Correction utilisateur : retirer `ÉTAT` du format de réponse.
- Correction utilisateur : le compteur n était pas incrémenté à chaque prompt DEV.
- Action : `SESSION.md` rattrapé à `prompt_count: 12`; format par défaut = ACTION / RÉSULTAT / NEXT.

## 2026-08-09 13:45 Europe/Paris
- Correction utilisateur : enlever le `je` et les informations inutiles.
- Action : ajout règle `[STYLE-020]` ultra-concis sans `je`, justification ni méta-commentaire.

## 2026-08-09 13:48 Europe/Paris
- Correction utilisateur : remplacer `ACTION` par `ACT`, `RÉSULTAT` par `RES`; exemple `ACT : suppression d “je”`.
- Action : ajout règle `[STYLE-021]`, dictionnaire enrichi avec `ACT`, `RES`, `NEXT`.
