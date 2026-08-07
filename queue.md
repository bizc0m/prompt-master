# RÈGLES PROJET — priorisation + anti-régression

## CONVENTION FEATURES
Toute ligne commençant par `*` dans une demande est une feature.
Nombre d'étoiles = priorité :
- `*`   : normale
- `**`  : haute
- `***` : critique

Pour chaque feature détectée :
- l'ajouter dans `Features.md` du projet (liste + détail court)
- créer la tâche correspondante dans `todo.md`
- si impact UI/comportement : mettre à jour `UX.md` et `REGRESSION.md`

## FILE D'ATTENTE (projets multi-tâches)
Ordonnancement : `***` > `**` > `*`, puis dépendances entre tâches.
Une tâche non explicitement validée par l'utilisateur reste en attente
(WAIT ACK) — jamais traitée par anticipation.

Après chaque tâche terminée :
- mettre à jour `todo.md` (fait / en cours / à faire)
- mettre à jour `STATE.md` (version, itération)
- mettre à jour `REGRESSION.md` si nouvelle fonctionnalité validée

## ANTI-RÉGRESSION
`REGRESSION.md` liste les fonctionnalités validées à ne pas casser.
Format par entrée :
```
### F{N} – {nom court}
Description : ...
Fichiers concernés : ...
Test : commande/action pour vérifier
Validé le : {date}
```
Avant toute modification touchant une zone couverte par une entrée
`REGRESSION.md` : rejouer son test avant de livrer.
Ne jamais supprimer une entrée sans le signaler explicitement.
