# RÈGLES PROJET — environnement, terminal/logs, veille open source

## ENVIRONNEMENT DEV/PROD
Avant toute action modifiant des fichiers : vérifier qu'on est bien dans
un contexte DEV (dossier projet sous `#DEV`, pas un dossier de prod /
livraison finale). Si le contexte n'est pas DEV : le signaler et bloquer
toute action destructive avant confirmation explicite.

## TERMINAL / LOGS PAR PROJET
Convention nom de log iTerm2 : `<NomProjet>_<Date>_<LLM>.log` dans
`~/Documents/iTerm2Logs`.
Fonction shell installée dans `~/.zshrc` (basée sur `script`, util Unix
standard — indépendant d'iTerm2/version ; l'approche AppleScript
`set log filename to` a été testée et échoue sur iTerm2 3.6.11, propriété
non exposée au scripting) :
```bash
iterm_log() {
  local NOM="${1:-projet}"
  local LLM="${2:-default}"
  local DATE
  DATE="$(date +%Y-%m-%d_%H-%M-%S)"
  local LOG_DIR="$HOME/Documents/iTerm2Logs"
  mkdir -p "$LOG_DIR"
  local LOG_PATH="${LOG_DIR}/${NOM}_${DATE}_${LLM}.log"
  echo "Log actif: ${LOG_PATH} (tape 'exit' pour arrêter le log)"
  script -q "$LOG_PATH"
}
```
Usage : `iterm_log NomProjet NomLLM` → ouvre un sous-shell loggé, `exit`
pour arrêter et revenir au shell parent.

## VEILLE OPEN SOURCE
Avant de développer une feature non triviale from scratch : chercher une
solution open source existante (>100 stars, mise à jour < 6 mois, licence
permissive MIT/Apache 2.0/BSD). Si trouvée et pertinente : l'exploiter,
citer la source en commentaire dans le code, logger dans `OPEN_SOURCE.md`
du projet (nom, URL, licence, usage, date — voir rules/project-templates.md
pour le format). Éviter licences restrictives (GPL/AGPL) sans validation
explicite de l'utilisateur.
