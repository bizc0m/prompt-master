# RÈGLES PROJET — versioning + qualité

## VERSIONING
Format fichier : nomfichier_v{N}.ext, à plat (jamais de dossier /versions/,
/backup/, /archive/).

Numérotation :
- +0.2 par échange/modification mineure (ex: v1.0 → v1.2 → v1.4)
- +1.0 pour refonte majeure / changement d'architecture (ex: v1.0 → v2.0)

Le fichier existant n'est jamais modifié sur place ni écrasé. Chaque
modification crée un nouveau fichier avec le numéro incrémenté.

Header obligatoire en tête de chaque fichier (syntaxe de commentaire adaptée
au langage) :

v{N} {date} {STATUT}
DEMANDE: {résumé 1 ligne, verbatim complet si < 30 mots}
SORTIE: {résumé de ce qui a été modifié}
PREUVE: {test réel effectué — requis si STATUT commence par STABLE}
Fichier précédent: {nomfichier_v{N-0.2}.ext}

STATUT possibles :
- STABLE-INTERNE : ne dépend d'aucune ressource externe, testable de façon
  déterministe
- STABLE-DÉPENDANT : fonctionne mais dépend d'un service tiers/réseau/session
  — préciser lequel et le risque
- CASSÉ : testé et non fonctionnel
- EXPÉRIMENTAL : non testé ou testé partiellement (statut par défaut si
  aucune preuve fournie)

"Reviens à vN" → réouvrir ce fichier tel quel ; toute modification dessus
devient vN+0.2 (peut créer une nouvelle branche depuis un point ancien).

"Montre l'historique" → lister tous les fichiers nomfichier_v*.ext présents
avec leur résumé.

## QUALITÉ

1. Jamais annoncer une fonctionnalité comme opérationnelle sans l'avoir
   testée dans le tour de conversation où elle est livrée (cas nominal + cas
   limite + intégration avec l'existant). Si le test est impossible
   (dépendance externe non vérifiable), le dire explicitement plutôt que
   présumer le succès.

2. Tester avant de répondre, pas après — utiliser les outils disponibles
   (exécution, browser headless, build) systématiquement, sans attendre que
   ce soit demandé.

3. Périmètre strict : ne toucher que ce qui est explicitement demandé.
   Lister l'impact avant modification. Si une dépendance technique réelle
   oblige à toucher autre chose, le signaler avant de le faire. Aucun
   refactor, renommage, ou "amélioration" non sollicitée.

4. Optimiser uniquement dans le périmètre touché (code mort, dépendances
   inutiles, complexité évitable) — jamais au-delà de ce périmètre. Le code
   produit est optimisé à chaque itération (étape "Optimise" du pipeline),
   pas seulement relu une fois au livrable final.

5. Une seule boucle de correction avant livraison. Ne jamais livrer une
   version cassée en comptant sur le prochain message pour la corriger.

6. Tout changement de FONCTION (logique/comportement) ou de DESIGN
   (structure visuelle, layout) — par opposition à un simple fix — doit être
   proposé avec une description courte, puis attendre confirmation explicite
   avant application. Exception : si la demande est déjà explicite et non
   ambiguë ("change X pour Y"), pas besoin d'attendre confirmation. Ne jamais
   anticiper une intention non formulée.

7. Tout prompt destiné à être réutilisé ailleurs est fourni dans un bloc de
   code copiable, jamais en texte brut mélangé au reste.

8. Toute URL (site, page HTML, serveur local type http://localhost:8080) est
   fournie sous forme de lien cliquable, jamais en texte brut seul.

9. Documentation : commenter toute logique non-triviale dans le code.
   `MEMORY.md` du projet fait office de doc de référence, tenu à jour à
   chaque changement d'architecture. Pour tout projet site/dashboard :
   `index.html` toujours à jour avec le code livré, et documenté
   (commentaires + section usage en tête de fichier ou dans `UX.md`).
