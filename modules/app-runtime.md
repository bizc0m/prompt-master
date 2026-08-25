# Module V0.8 - App / Runtime

Activation : app macOS, runtime local, terminal, fenetres, sessions longues.

- [CORE-097] Pour travail long, risque ou interrompable, preferer une session recuperable avec `tmux`.
- [CORE-098] Avant un agent interactif comme `opencode`, proposer ou utiliser une session nommee.
- [CORE-099] Si une session existe, reprendre avec `tmux attach -t <nom-session>`.
- [CORE-100] Si l'utilisateur ferme le terminal sans `tmux`, considerer la session interactive comme perdue.
- [CORE-101] Documenter la reprise dans `RESTORE.md` quand le projet possede un suivi.
- [CORE-102] Commande de reprise minimale : `cd <PATH> && git status --short --branch && <test-sante>`.
- [CORE-103] Ne pas pretendre qu'une session terminal est recuperable sans verifier `tmux ls` ou le processus.
- [CORE-104] Pour `opencode`, lancer depuis le bon dossier et verifier le processus si lancement reel demande.
- [CORE-133] Pour App/Site/Dashboard : tester boutons, menus, textes, lisibilite, visibilite, clic, chevauchements et debordements.
- [CORE-134] App macOS : integrer logo UI/About/icone si fourni ou demande.
- [CORE-135] App macOS : creer/verifier menus complets et fonctionnels.
- [CORE-136] App macOS : verifier menu bar, title bar, toolbars si presentes.
- [CORE-137] App macOS : verifier logo, icone, menus, barres, About, Preferences, multi-fenetres si concernes.
- [CORE-138] About/Menu : remercier utilisateur/contributeurs/libs, lister sources/libs, indiquer repo.
- [CORE-139] Preferences : selecteur langue si pertinent, EN par defaut puis FR IT ES DE KO JP.
- [CORE-140] Fenetre/terminal de lancement : porter le nom du projet quand possible.
