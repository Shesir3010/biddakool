# Products

Product documentation, one folder per module. Every module folder contains the same master-document set plus a `versions/` subfolder holding the version-wise feature catalogs and scopes:

| Document | Answers the question |
|---|---|
| `<Module>-PRD.md` | Why does the module exist and what is in scope? (**source of truth**) |
| `<Module>-features.md` | Index — maps and counts the version catalogs; never duplicates feature rows |
| `<Module>-business-rules.md` | What rules must the system enforce? (`BR-*`) |
| `<Module>-user-stories.md` | What realistic scenarios exercise it? |
| `<Module>-workflows.md` | How do processes execute, step by step? (`WF-*`) |
| `versions/<Module>-v1-features.md` | **Authoritative V1 (Core/MVP) feature catalog** — every V1 feature row |
| `versions/<Module>-v2-features.md` | Authoritative V2 (Additional) feature catalog |
| `versions/<Module>-v3-features.md` | Authoritative V3 (Later) feature catalog |
| `versions/<Module>-v1-scope.md` | What ships in V1, in what order, and what is done? (status tracker) |
| `versions/<Module>-v2-scope.md` | V2 scope — placeholder until V2 enters planning |
| `versions/<Module>-v3-scope.md` | V3 scope — placeholder until V3 enters planning |

Each module folder also has its own `README.md` — the entry point with the document map, reading order, dependencies, and references.

Global cross-module view: [`roadmap.md`](roadmap.md) — the tiered feature rollup (R1 Core / R2 Additional / R3 Later / Parked), referencing feature IDs only.

## Modules

| Module | Status |
|---|---|
<!-- MODULES -->

## Superseded Documents

Frozen, superseded documents live in [archive-files/](archive-files/README.md) — kept for history, never edited, never cited as current truth.

Status: no modules documented yet — run `add-module.ps1` or create a module folder to start.
