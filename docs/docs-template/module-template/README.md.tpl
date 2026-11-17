# {{MODULE}} Module — Documentation Index

*The entry point for the {{MODULE}} module documentation: what each document covers, the reading order per role, the conventions, the module's dependencies, and the sources the requirements were researched from. Start here, then follow the reading order.*

**Source of truth:** [`{{MODULE}}-PRD.md`]({{MODULE}}-PRD.md) for *why* and *what is in scope*; the **version catalogs under [`versions/`](versions/)** for the *authoritative* priority, release, and approval status of every feature (mapped by the index [`{{MODULE}}-features.md`]({{MODULE}}-features.md)). If any document disagrees with those, they win — fixes go into the disagreeing document, and genuine product decisions go into the PRD's Decision Log.

---

## 1. Document Map

| # | Document | Version | Status | Last Updated | What it covers |
|---|----------|---------|--------|--------------|----------------|
| 1 | [`{{MODULE}}-PRD.md`]({{MODULE}}-PRD.md) | [TODO] | Draft for Review | {{DATE}} | Vision, personas, scope, requirements, core concepts, delivery plan, risks, open questions, decision log, glossary, assumptions. |
| 2 | [`{{MODULE}}-features.md`]({{MODULE}}-features.md) | 1.0 | Draft for Review | {{DATE}} | Module feature INDEX — maps and counts the version catalogs; never duplicates feature rows. |
| 3 | [`{{MODULE}}-business-rules.md`]({{MODULE}}-business-rules.md) | [TODO] | Draft for Review | {{DATE}} | The enforceable rules (`BR-*`). |
| 4 | [`{{MODULE}}-workflows.md`]({{MODULE}}-workflows.md) | [TODO] | Draft for Review | {{DATE}} | Step-by-step processes, object lifecycles, status transitions. |
| 5 | [`{{MODULE}}-user-stories.md`]({{MODULE}}-user-stories.md) | [TODO] | Draft for Review | {{DATE}} | Realistic scenarios with traceability to features and rules. |
| 6 | [`{{MODULE}}-v1-scope.md`](versions/{{MODULE}}-v1-scope.md) | 1.0 | Draft for Review | {{DATE}} | V1 scope statement, build order, status tracker. |
| 7 | [`{{MODULE}}-v1-features.md`](versions/{{MODULE}}-v1-features.md) | 1.0 | Draft for Review | {{DATE}} | V1 Core (MVP) feature catalog — the authoritative V1 list. |
| 8 | [`{{MODULE}}-v2-features.md`](versions/{{MODULE}}-v2-features.md) | 1.0 | Draft for Review | {{DATE}} | V2 Additional feature catalog. |
| 9 | [`{{MODULE}}-v2-scope.md`](versions/{{MODULE}}-v2-scope.md) | 0.1 | Placeholder | {{DATE}} | V2 scope — created, awaiting planning. |
| 10 | [`{{MODULE}}-v3-features.md`](versions/{{MODULE}}-v3-features.md) | 1.0 | Draft for Review | {{DATE}} | V3 Later feature catalog. |
| 11 | [`{{MODULE}}-v3-scope.md`](versions/{{MODULE}}-v3-scope.md) | 0.1 | Placeholder | {{DATE}} | V3 scope — created, awaiting planning. |

**Rule:** all documents cross-reference each other with relative Markdown links; each carries its own Document Control block, Revision History, and Assumptions section.

---

## 2. Version Overview

| Version | Tier | Release | Features | Status |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | [TODO] | catalogued — build pending |
| V2 | Additional | R2 | [TODO] | catalogued — planning not started |
| V3 | Later | R3 | [TODO] | catalogued — planning not started |

---

## 3. Reading Orders

### New contributor

1. [`{{MODULE}}-PRD.md`]({{MODULE}}-PRD.md) (§1–§3) — vision, personas, scope.
2. [`{{MODULE}}-features.md`]({{MODULE}}-features.md) — the index, then pick your version catalog.
3. [`{{MODULE}}-business-rules.md`]({{MODULE}}-business-rules.md).
4. [`{{MODULE}}-workflows.md`]({{MODULE}}-workflows.md).
5. [`{{MODULE}}-user-stories.md`]({{MODULE}}-user-stories.md).
6. [`{{MODULE}}-v1-scope.md`](versions/{{MODULE}}-v1-scope.md) — build order and status.

### By role

| Role | Read first | Then |
|------|------------|------|
| Product Owner | PRD §10–§12 (open questions, decisions, releases), v1-scope | Version catalogs |
| Tech Lead / Architect | PRD core concepts + technical blueprint | Business rules |
| Backend Developer | v1-scope, v1-features | Business rules, workflows |
| QA Engineer | User stories (acceptance criteria + traceability) | Version catalog acceptance criteria |
| Domain reviewer | PRD domain/compliance sections | Business rules |

---

## 4. Module Dependencies

### 4.1 Upstream — {{MODULE}} depends on

| Dependency | Nature of dependency | Status |
|------------|---------------------|--------|
| [TODO] | [TODO] | [TODO] |

### 4.2 Downstream — other modules depend on {{MODULE}}

| Consumer | What it consumes |
|----------|------------------|
| [TODO] | [TODO] |

---

## 5. References

External sources consulted when researching the requirements in this folder.

| Source | What it informed |
|--------|------------------|
| [TODO] | [TODO] |

---

## 6. Maintenance Rules

1. **Change one master, propagate.** A feature change updates the version catalog first, then stories, workflows, and rules — then the matching scope file if scope placement changes.
2. **Every document bumps its own version** and adds a Revision History row; update §1 (Document Map) here in the same change.
3. **New features enter scope only through a version catalog file.**
4. **Open questions are resolved in the PRD**, and the dependent documents follow.
5. **Archived documents are frozen.** A document enters [`../archive-files/`](../archive-files/README.md) only when a newer document officially supersedes it; it is never edited and never cited as current truth.

---

## Assumptions

- [TODO]
