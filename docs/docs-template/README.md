# Docs Structure Template (Signature)

A reusable, project-agnostic copy of the documentation structure used by this ERP project. Drop it into any new project to get the same skeleton, the same per-module document set, and the same conventions — **without copying any project content**.

---

## What's Inside

| Item | Purpose |
|---|---|
| `skeleton/` | The folder tree to create in a new project (with honest placeholder READMEs) |
| `module-template/` | The master-document set + version-wise catalogs (`versions/`) + folder README for one product module |
| `adr-template/` | Architecture Decision Record template |
| `init-docs.ps1` | Creates the skeleton in a target project (replaces `{{PROJECT}}` / `{{DATE}}` placeholders) |
| `add-module.ps1` | Adds one module's document set (recursively, including `versions/`) and registers it in the products index |

## The Signature Structure

```
docs/
├── README.md                      ← hub index: doc map, conventions, source of truth
├── 00-products/                   ← product documentation, one folder per module
│   ├── README.md                  ← module index (auto-updated by add-module.ps1)
│   ├── roadmap.md                 ← global R1/R2/R3 feature rollup (IDs only)
│   ├── <Module>/                  ← master docs + version catalogs (see below)
│   │   ├── README.md              ← module entry point: doc map, reading order, dependencies
│   │   ├── <Module>-PRD.md
│   │   ├── <Module>-features.md   ← module feature INDEX (maps + counts, never duplicates)
│   │   ├── <Module>-business-rules.md
│   │   ├── <Module>-user-stories.md
│   │   ├── <Module>-workflows.md
│   │   └── versions/              ← version-wise feature catalogs + scope plans
│   │       ├── <Module>-v1-features.md   ← authoritative V1 feature rows
│   │       ├── <Module>-v2-features.md
│   │       ├── <Module>-v3-features.md
│   │       ├── <Module>-v1-scope.md      ← V1 scope, build order, status tracker
│   │       ├── <Module>-v2-scope.md      ← placeholder until V2 planning
│   │       └── <Module>-v3-scope.md      ← placeholder until V3 planning
│   └── archive-files/             ← frozen, superseded documents (never edited again)
├── 01-architecture/               ← system architecture + adr/
│   └── adr/                       ← numbered, immutable decision records
├── 02-backend/                    ← service-level design
├── 03-database/                   ← schema, ERDs, migrations
├── 04-frontend/                   ← UI architecture, design system
├── 05-quality/                      ← test strategy, QA plans, UAT
├── 06-devops/                       ← CI/CD, environments, releases
├── research/                        ← benchmark studies, source extractions, working evidence
└── agents/                          ← AGENTS.md + prompts/ for AI coding agents
```

## The Module Document Set (the core of the signature)

Every module folder contains the same **master documents** plus a **`versions/` subfolder** holding the version-wise feature catalogs and scope plans. Every file carries a Document Control table, a Revision History table, and an Assumptions section:

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

**Version system:** each feature has exactly **one home** — its version catalog file. The version tiers are the product owner's vocabulary (V1 = core features, V2 = additional/future features, V3 = much-later features) mapped to release rounds R1/R2/R3. The global [`roadmap.md`](skeleton/00-products/roadmap.md) rollup lists feature **IDs only** per tier.

**Separation of concerns:** no document defines what belongs to another. A feature enters scope only through a version catalog file; a story's priority never promotes a feature; workflows never redefine rules; scope files never redefine features.

## Quick Start

```powershell
# 1. Initialize a new project's docs folder
./init-docs.ps1 -Target "D:\MyNewProject\docs" -ProjectName "My New Project"

# 2. Add a module (creates master docs + versions/ catalogs + README, registers it in the index)
./add-module.ps1 -Target "D:\MyNewProject\docs" -Name "Inventory" -ProductName "My New Project"
#   -Prefix is optional; default is the first 3 letters, e.g. "Inventory" -> "INV"

# 3. When an architecture decision is made, copy adr-template/ into 01-architecture/adr/
#    and rename to ADR-<nnnn>-<title>.md
```

## Placeholders Used in Templates

| Placeholder | Replaced with | By |
|---|---|---|
| `{{PROJECT}}` | Project name | `init-docs.ps1` |
| `{{MODULE}}` | Module name (e.g. `Inventory`) | `add-module.ps1` |
| `{{PREFIX}}` | Module ID prefix (e.g. `INV`) | `add-module.ps1` |
| `{{PRODUCT}}` | Product name | `add-module.ps1` |
| `{{DATE}}` | Today's date (YYYY-MM-DD) | both scripts |

## Conventions Baked Into the Signature

1. **Numbered top-level folders** (`00-` … `06-`) so related folders sort in reading order; `agents/` and `research/` are unnumbered.
2. **One folder per product module** under `00-products/`, always the same master set + `versions/` catalogs, always `README.md` as entry point.
3. **Document Control + Revision History + Assumptions** in every document. Version bumps are mandatory; the module README's version table is updated in the same change.
4. **Relative Markdown links only** between documents — run a link check; it must report 0 broken links. External URLs are allowed only in "References" sections.
5. **Source-of-truth hierarchy:** the PRD wins on *why/scope*, the version catalogs win on *priority/release/status*, the module `features.md` is only an index, and `roadmap.md` lists IDs only. Conflicts are raised as review items, never resolved silently.
6. **Status markers:** `[Proposed]` (needs confirmation), `[Verify]` (needs validation against official sources), `[Pending OQ-nn]` (waits on an open question; shows the working default).
7. **MoSCoW priority** (Must/Should/Could/Won't now) and a strict separation of **product releases** (`R1`–`R3`) from **delivery milestones** (`M0`–`M6`).
8. **ID conventions:** features `<PREFIX>-<AREA>-<nnn>`, rules `BR-<AREA>-<nnn>`, workflows `WF-<PREFIX>-<nnn>`, stories `<PREFIX>-US-<nnn>`, open questions `OQ-<nn>`, decisions `D-<nn>`. **IDs are never reused** — a removed item keeps its ID and is marked *Withdrawn*.
9. **Archive rule:** a document enters `00-products/archive-files/` only when a newer document officially supersedes it. Frozen files are never edited and never cited as current truth.
10. **Honest placeholders:** an empty folder's README says `Status: placeholder` — never fake content.
11. **Diagrams are Mermaid**; enumerable facts are tables.
12. **Tech decisions live in `01-architecture/adr/`**, not in product documents — product docs stay stack-agnostic.

## Maintenance Rule for This Kit

This template is the signature. When the ERP project's docs evolve a *structural* improvement (a new document type, a new marker, a new convention), update the template here too — so every future project inherits the improvement.
