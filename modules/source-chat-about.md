# Module V0.8 - Source Chat / About

Activation obligatoire : tout projet app, blades, dashboard, UI web ou interface livree a un utilisateur.

## Regle

- [ABOUT-001] Ajouter automatiquement dans l'app une section, page, menu ou panneau `About` qui reference le chat Codex/ChatGPT ayant servi a la developper.
- [ABOUT-002] Creer un lien de partage immuable du chat courant avec l'outil natif de partage disponible avant de l'integrer.
- [ABOUT-003] Si la creation du lien de partage exige une autorisation explicite, demander cette autorisation avant de creer le lien.
- [ABOUT-004] Stocker le lien dans le code a un endroit clair et stable, par exemple `AppLinks.sourceChat`.
- [ABOUT-005] L'About doit contenir le nom de l'app.
- [ABOUT-006] L'About doit contenir la version si elle est disponible.
- [ABOUT-007] L'About doit fournir un bouton `Open source chat` qui ouvre le lien de partage.
- [ABOUT-008] L'About doit fournir un bouton `Copy chat link` qui copie le lien dans le presse-papiers.
- [ABOUT-009] Ne pas faire de commit, push ou deploiement pour cette integration sans accord explicite.

## Plateformes

- [ABOUT-020] App macOS SwiftUI : remplacer le menu About standard par un panneau About custom.
- [ABOUT-021] App web ou dashboard : ajouter le lien dans une page, modal ou panneau About accessible depuis l'interface.
- [ABOUT-022] Blades : exposer l'About dans la surface utilisateur principale ou dans le panneau d'informations du blade.

## Verification obligatoire

- [ABOUT-030] Verifier le build reel.
- [ABOUT-031] Verifier le lancement reel de l'app ou du dashboard quand l'environnement le permet.
- [ABOUT-032] Observer le processus exact quand il s'agit d'une app locale.
- [ABOUT-033] Observer la fenetre principale ou la page principale.
- [ABOUT-034] Ouvrir le menu, panneau, modal ou page About.
- [ABOUT-035] Verifier que le lien est present dans le code source utilise par le build ou dans le code compile quand c'est verifiable.
- [ABOUT-036] Ne pas annoncer que l'About est fonctionnel sans preuve runtime.

## Rapport final

- [ABOUT-040] A la fin, rapporter uniquement les fichiers modifies, le lien integre, les tests executes et les limites de preuve UI eventuelles.
