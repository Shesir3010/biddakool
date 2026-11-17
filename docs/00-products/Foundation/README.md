# Foundation Module - Documentation Index

*The entry point for the Foundation module documentation: what each document covers, the reading order per role, the conventions, the module's dependencies, and the sources the requirements were researched from. Start here, then follow the reading order.*

**Source of truth:** ["Foundation-PRD.md"](Foundation-PRD.md) for *why* and *what is in scope*; the **version catalogs under [versions/](versions/)** for the *authoritative* priority, release, and approval status of every feature (mapped by the index ["Foundation-features.md"](Foundation-features.md)). If any document disagrees with those, they win - fixes go into the disagreeing document, and genuine product decisions go into the PRD's Decision Log.

---

## 1. Document Map

| # | Document | Version | Status | Last Updated | What it covers |
|---|----------|---------|--------|--------------|----------------|
| 1 | ["Foundation-PRD.md"](Foundation-PRD.md) | 1.0 | Draft for Review | 2026-11-18 | Vision, personas, scope, requirements, core concepts, delivery plan, risks, open questions, decision log, glossary, assumptions. |
| 2 | ["Foundation-features.md"](Foundation-features.md) | 1.1 | Draft for Review | 2026-11-18 | Module feature INDEX - maps and counts the version catalogs; never duplicates feature rows. |
| 3 | ["Foundation-business-rules.md"](Foundation-business-rules.md) | [TODO] | Draft for Review | 2026-11-18 | The enforceable rules (BR-*). |
| 4 | ["Foundation-workflows.md"](Foundation-workflows.md) | [TODO] | Draft for Review | 2026-11-18 | Step-by-step processes, object lifecycles, status transitions. |
| 5 | ["Foundation-user-stories.md"](Foundation-user-stories.md) | [TODO] | Draft for Review | 2026-11-18 | Realistic scenarios with traceability to features and rules. |
| 6 | ["Foundation-v1-scope.md"](versions/Foundation-v1-scope.md) | 1.0 | Draft for Review | 2026-11-18 | V1 scope statement, build order, status tracker (pre-seeded, 11 features). |
| 7 | ["Foundation-v1-features.md"](versions/Foundation-v1-features.md) | 1.0 | Draft for Review | 2026-11-18 | V1 Core (MVP) feature catalog (11 features). |
| 8 | ["Foundation-v2-features.md"](versions/Foundation-v2-features.md) | 1.0 | Draft for Review | 2026-11-18 | V2 Additional feature catalog (4 features). |
| 9 | ["Foundation-v2-scope.md"](versions/Foundation-v2-scope.md) | 0.1 | Placeholder | 2026-11-18 | V2 scope - created, awaiting planning. |
| 10 | ["Foundation-v3-features.md"](versions/Foundation-v3-features.md) | 1.0 | Draft for Review | 2026-11-18 | V3 Later feature catalog (0 features). |
| 11 | ["Foundation-v3-scope.md"](versions/Foundation-v3-scope.md) | 0.1 | Placeholder | 2026-11-18 | V3 scope - created, awaiting planning. |

**Rule:** all documents cross-reference each other with relative Markdown links; each carries its own Document Control block, Revision History, and Assumptions section.

## 2. Version Overview

| Version | Tier | Release | Features | Status |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 11 | catalogued - build pending |
| V2 | Additional | R2 | 4 | catalogued - planning not started |
| V3 | Later | R3 | 0 | catalogued - planning not started |

## 3. Reading Orders

### New contributor

1. ["Foundation-PRD.md"](Foundation-PRD.md) (SS1-SS3) - vision, personas, scope.
2. ["Foundation-features.md"](Foundation-features.md) - the index, then pick your version catalog.
3. ["Foundation-business-rules.md"](Foundation-business-rules.md).
4. ["Foundation-workflows.md"](Foundation-workflows.md).
5. ["Foundation-user-stories.md"](Foundation-user-stories.md).
6. ["Foundation-v1-scope.md"](versions/Foundation-v1-scope.md) - build order and status.

### By role

| Role | Read first | Then |
|------|------------|------|
| Product Owner | PRD SS10-SS12 (open questions, decisions, releases), v1-scope | Version catalogs |
| Tech Lead / Architect | PRD core concepts + technical blueprint | Business rules |
| Backend Developer | v1-scope, v1-features | Business rules, workflows |
| QA Engineer | User stories (acceptance criteria + traceability) | Version catalog acceptance criteria |
| Domain reviewer | PRD domain/compliance sections | Business rules |

## 4. Module Dependencies

### 4.1 Upstream - Foundation depends on

| Dependency | Nature of dependency | Status |
|------------|---------------------|--------|
| [TODO] | [TODO] | [TODO] |

### 4.2 Downstream - other modules depend on Foundation

| Consumer | What it consumes |
|----------|------------------|
| [TODO] | [TODO] |

## 5. References

| Source | What it informed |
|--------|------------------|
| [TODO] | [TODO] |

## 6. Maintenance Rules

1. **Change one master, propagate.** A feature change updates the version catalog first, then stories, workflows, and rules - then v1-scope if scope placement changes.
2. **Every document bumps its own version** and adds a Revision History row; update SS1 (Document Map) here in the same change.
3. **New features enter scope only through a version catalog file.**
4. **Open questions are resolved in the PRD**, and the dependent documents follow.
5. **Archived documents are frozen.** A document enters [../archive-files/](../archive-files/README.md) only when a newer document officially supersedes it.

---

## Assumptions

- [TODO]
