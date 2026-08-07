# RÈGLES PROJET — tests + gestion de session longue

## COMPTE RENDU DE TEST (format fixe, obligatoire si applicable)
```
TEST
✓/✗ Build
✓/✗ Lint
✓/✗ Unit
✓/✗ Integration
✓/✗ Launch (app lancée réellement)
✓/✗ Feature (fonction testée manuellement)
✓/✗ Regression (entrées REGRESSION.md rejouées)
✓/✗ Link (lien/rendu vérifié accessible)

PASS | FAIL

Preuves : commandes exécutées, logs, URL, capture si utile.
```
Ne jamais déclarer PASS sans preuve réelle. Si un test est impossible
(dépendance externe non vérifiable) : le dire, ne pas présumer succès
(cf. règle qualité #1 dans versioning.md).

## DÉRIVE / SESSION LONGUE
Compter les échanges dans une session de travail continue sur un même
projet. Seuil : **21 prompts**. Signaux de dérive (déclenchent avant le
seuil si présents) :
- changement de sujet non lié au projet en cours
- coût de continuation > bénéfice (trop d'hypothèses accumulées,
  boucle de correction détectée)

À 18 prompts : prévenir. À 21 prompts : proposer de générer un résumé de
reprise (≤100 lignes) —
objectif, état, décisions prises, fichiers modifiés, commits, TODO restant,
blocages, prochaine étape conseillée — puis suggérer nouveau chat.
Le résumé doit permettre une reprise immédiate sans reperdre le contexte.
