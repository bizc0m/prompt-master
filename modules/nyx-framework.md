# Module V0.8 - Nyx Framework / Modules, blades, racks, combos

Activation : `Nyx`, `Nyx Framework`, modules, blades, racks, combos, panes,
tabs, skin, marque blanche, terminal, webview, documents, integration
prototype vers app.

- [NYXFW-001] Traiter Nyx comme un framework complet : fenetres, panes, tabs,
  drag/drop, themes, skins, permissions, persistance, registry, build et export.
- [NYXFW-002] Respecter la distinction projet : module = capacite ou expertise
  interne ; blade = fonction experte ; rack = groupe de blades dans un onglet
  ou pan ; combo = combinaison pour ameliorer un resultat.
- [NYXFW-003] Avant integration dans Nyx, distinguer prototype HTML, source
  Swift/native, repo, bundle installe et app en cours d'execution.
- [NYXFW-004] Ne pas fusionner un prototype dans Nyx directement. Extraire
  comportement par comportement : documents, tabs, panes, drag/drop, lock,
  collapse, annotations, web, terminal.
- [NYXFW-005] Le kernel a priorite sur les blades avancees : window manager,
  pane engine, tab engine, layout persistence, theme/skin engine, permissions,
  registry.
- [NYXFW-006] Chaque blade doit avoir un contrat : metadata, permissions,
  actions, entrees/sorties, UI panel, mode integre, mode standalone, tests,
  version.
- [NYXFW-007] Chaque rack doit declarer : blades incluses, layout initial,
  contexte partage, ordre de travail, permissions et combos disponibles.
- [NYXFW-008] Chaque combo doit declarer : objectif, sequence, blades utilisees,
  conditions, donnees produites, validation et rollback.
- [NYXFW-009] Marque blanche : nom, logo, theme, wording, icones, modules,
  blades, racks et licences doivent venir d'un manifest. La skin ne modifie pas
  le code metier.
- [NYXFW-010] Multi-OS : privilegier d'abord macOS + web. Windows/Linux
  seulement si le socle technique le rend simple et testable.
- [NYXFW-011] Blades autonomes : possible seulement si la blade partage le meme
  contrat que le mode integre et si le packaging `.app` est teste.
- [NYXFW-012] Ne pas annoncer integration complete sans preuve runtime ou test
  utilisateur de la surface concernee.

