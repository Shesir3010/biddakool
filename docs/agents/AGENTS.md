# AGENTS.md — Project Rules for AI Agents

Rules every AI coding agent must follow when working in this repository.

## Project Rules

- Documentation conventions live in [../README.md](../README.md).
- Source of truth per module: `<Module>-PRD.md` (the *why*); the **authoritative feature rows** live in the version catalogs `00-products/<Module>/versions/<Module>-v<n>-features.md` (the *what, priority, release*); [`../00-products/roadmap.md`](../00-products/roadmap.md) is the ID-only global rollup. If documents disagree, version catalogs beat indexes/roadmap; genuine product decisions go into the PRD Decision Log.
- `<Module>-features.md` is an **index**: it maps and counts version catalogs and must never duplicate feature rows.
- New features enter scope only through a version catalog file; then update the index counts and roadmap.md in the same change. A feature changing version moves between version files the same way.
- `<Module>-v1-scope.md` holds the V1 build order and the per-feature status tracker (Planned → In Progress → Done / Blocked (OQ-nn)). `v2-scope.md` / `v3-scope.md` are placeholders — never build from them until their scope statement is authored.
- Withdrawn features keep their IDs and are marked *Withdrawn*; IDs are never reused.
- Do not edit frozen documents in `00-products/archive-files/`.
- Do not silently resolve conflicts between documents — raise them as review items.
- Markdown links use the quoted style: `["name.md"](relative/path/name.md)`.
- Open questions are tracked as `[Pending OQ-nn]` in the module PRD and resolved there; dependent documents follow.

## Commands Cheat-Sheet

[TODO — populate when implementation starts]

| Command | Purpose |
|---|---|
| — | — |

## Build Order

[TODO — milestone list (M0 … Mn)]

