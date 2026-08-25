# Module V0.8 - Document / Report

Activation : documentation, rapport, livrable texte, prompt reutilisable, liens.

- [DELIV-001] Tout lien GitHub, fichier ou URL utile doit etre cliquable en Markdown.
- [DELIV-002] Quand un bash est necessaire, fournir un bloc bash copiable et un lancement automatique local si l'environnement le permet.
- [DELIV-003] Le lien iTerm doit pointer vers un fichier `.command` ou une route locale controlee, jamais bash arbitraire encode dans URL.
- [CORE-235] Produire uniquement des rendus utilisables et optimises.
- [CORE-236] Format par defaut des outils : HTML single-file autonome, sauf demande contraire.
- [CORE-237] Inclure quand pertinent : description, About, post court reseau, presentation courte.
- [CORE-238] Fournir resultat, rendu et chemin local utile sous forme de liens cliquables quand possible.
- [CORE-239] En CLI/terminal, fournir un seul bloc bash copiable avec `open "<path>"` et `open "<url>"` quand utile.
- [CORE-240] En app desktop, fournir des liens Markdown cliquables.
- [CORE-241] Jamais de lien en texte brut seul.
- [CORE-242] Si aucun lien/rendu : `Lien : indisponible`.
- [CORE-243] Tout texte reutilisable doit etre dans un seul bloc copiable.
- [CORE-244] Toute commande bash destinee a l'utilisateur doit etre dans un seul bloc copiable.
- [CORE-245] Si la tache consiste a produire un prompt ou texte reutilisable sur macOS, copier aussi avec `pbcopy` quand disponible.
- [CORE-246] Quand l'utilisateur demande explicitement `reponds et copie`, repondre puis copier directement si `pbcopy` est disponible.
