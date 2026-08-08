#!/bin/bash
# iterm_log — log terminal nommé <Projet>_<Date>_<LLM>.log
# Basé sur `script` (util Unix standard), indépendant d'iTerm2/version.
# L'approche AppleScript `set log filename to` a été testée et échoue sur
# iTerm2 3.6.11 (propriété non exposée au scripting) — voir tooling.md.
#
# Installation : source ce fichier dans ~/.zshrc (ou ~/.bashrc) :
#   source ~/#DEV/rules/scripts/iterm_log.sh
#
# Usage : iterm_log NomProjet NomLLM
#   → ouvre un sous-shell loggé, `exit` pour arrêter et revenir au parent.

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
