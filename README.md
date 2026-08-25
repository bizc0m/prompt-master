# Prompt Master

Prompt Master est le depot canonique `bizc0m/prompt-master` pour CTxKNL / Context Kernel.

## V0.8

Architecture active :
- `CORE.md` : noyau minimal universel.
- `modules/*.md` : modules specialises charges a la demande.
- `adapters/{chatgpt,claude,codex,perplexity}.md` : adaptations par environnement LLM.
- `launcher.template.md` : squelette du launcher.
- `scripts/build-launcher.sh` : genere les sorties publiques.

Sorties generees :
- `launcher.md`
- `CTxKNL_v0.8.md`
- `prompt.md`
- `latest.md`
- `assistant-dev-prompt.md`
- `prompt-master-systematique.txt`

Ne pas editer directement les sorties generees. Modifier les sources V0.8 puis lancer :

```bash
scripts/build-launcher.sh
```

## Liens

- Depot : <https://github.com/bizc0m/prompt-master>
- Launcher V0.8 : <https://github.com/bizc0m/prompt-master/blob/main/launcher.md>
- CTxKNL V0.8 : <https://github.com/bizc0m/prompt-master/blob/main/CTxKNL_v0.8.md>
- Latest brut : <https://bizc0m.github.io/prompt-master/latest.md>
- Latest Markdown : <https://bizc0m.github.io/prompt-master/prompt.md>
- Page latest : <https://bizc0m.github.io/prompt-master/prompt.html>
- Generateur public : <https://bizc0m.github.io/prompt-master/>
- Versions : <https://github.com/bizc0m/prompt-master/blob/main/VERSIONS.md>
- Migration V0.8 : <https://github.com/bizc0m/prompt-master/blob/main/MIGRATION_V0.8.md>

## Regle source

Source canonique unique :
- `CORE.md`
- `modules/*.md`
- `adapters/*.md`

Tout le reste est archive, interface, compatibilite ou sortie generee.

## Archive

Anciennes versions conservees sans suppression irreversible :
- `archive/2026-08-22-v0.7/`
- `CTxKNL_v0.1.md`
- `CTxKNL_v0.4.md`
- `CTxKNL_v0.7.md`

## Verification

Controle local recommande avant publication :

```bash
scripts/build-launcher.sh
cmp -s launcher.md latest.md
cmp -s launcher.md prompt.md
cmp -s launcher.md assistant-dev-prompt.md
cmp -s launcher.md prompt-master-systematique.txt
```
