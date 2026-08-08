# RÈGLES PROJET — environnement, terminal/logs, veille open source

## ENVIRONNEMENT DEV/PROD
Répertoire de travail racine : `~/#DEV` (chemin réel défini localement
dans le `CLAUDE.md` du poste, jamais en dur dans ce repo public). Dès
qu'un projet démarre ou que ce système de règles est chargé : vérifier que
le dossier de travail courant est un sous-répertoire de cette racine. Si
ce n'est pas le cas : le signaler et demander confirmation avant de
déplacer le travail dans la racine (jamais déplacer sans confirmation
explicite).

Avant toute action modifiant des fichiers : vérifier aussi qu'on est bien
dans un contexte DEV (pas un dossier de prod / livraison finale). Si le
contexte n'est pas DEV : le signaler et bloquer toute action destructive
avant confirmation explicite.

## TERMINAL / LOGS PAR PROJET
Titre de la fenêtre/onglet = nom du projet (distinct du nom de fichier
log). Commande (standard xterm, fonctionne iTerm2/Terminal.app) :
```bash
echo -ne "\033]0;${NOM_PROJET}\007"
```
À lancer au démarrage du travail sur un projet.

Convention nom de log iTerm2 : `<NomProjet>_<Date>_<LLM>.log` dans
`~/Documents/iTerm2Logs`. Fonction `iterm_log` : voir `scripts/iterm_log.sh`
(basée sur `script`, util Unix standard — indépendant d'iTerm2/version ;
l'approche AppleScript `set log filename to` a été testée et échoue sur
iTerm2 3.6.11, propriété non exposée au scripting).
Installation : `source ~/#DEV/rules/scripts/iterm_log.sh` dans `~/.zshrc`.
Usage : `iterm_log NomProjet NomLLM` → ouvre un sous-shell loggé, `exit`
pour arrêter et revenir au shell parent.

## VEILLE OPEN SOURCE
Avant de développer une feature non triviale from scratch : si une base KM
(knowledge management) existe pour l'utilisateur, la consulter en premier.
Chercher aussi une solution open source existante (>100 stars, mise à jour
< 6 mois, licence permissive MIT/Apache 2.0/BSD). Si trouvée et pertinente :
l'exploiter, citer la source en commentaire dans le code, logger dans
`OPEN_SOURCE.md` du projet (nom, URL, licence, usage, date — voir
rules/project-templates.md pour le format). Éviter licences restrictives
(GPL/AGPL) sans validation explicite de l'utilisateur.

## OUTILS & SETUP (portée globale `#DEV`, pas par projet)
- `~/#DEV/TOOLS.md` — liste des outils/stack utilisés. Veille
  continue : si un concurrent ou une alternative meilleure sort, le
  signaler à l'utilisateur (pas de changement automatique).
- `~/#DEV/setup.md` — liste du setup (outils, config), maintenue
  identique sur les 2 devices de l'utilisateur. Toute divergence détectée
  entre devices : signaler avant de synchroniser.
