# Students Module - Documentation Index

*The entry point for the Students module documentation: what each document covers, the reading order per role, the conventions, the module's dependencies, and the sources the requirements were researched from. Start here, then follow the reading order.*

**Source of truth:** ["Students-PRD.md"](Students-PRD.md) for *why* and *what is in scope*; the **version catalogs under [versions/](versions/)** for the *authoritative* priority, release, and approval status of every feature (mapped by the index ["Students-features.md"](Students-features.md)). If any document disagrees with those, they win - fixes go into the disagreeing document, and genuine product decisions go into the PRD's Decision Log.

---

## 1. Document Map

| # | Document | Version | Status | Last Updated | What it covers |
|---|----------|---------|--------|--------------|----------------|
| 1 | ["Students-PRD.md"](Students-PRD.md) | 1.0 | Draft for Review | 2026-11-18 | Vision, personas, scope, FRs/NFRs, core concepts & lifecycles, delivery plan, risks, OQ-STU-01…10, decision log D-STU-01…05, glossary, assumptions. |
| 2 | ["Students-features.md"](Students-features.md) | 1.1 | Draft for Review | 2026-11-18 | Module feature INDEX - maps and counts the version catalogs; never duplicates feature rows. |
| 3 | ["Students-business-rules.md"](Students-business-rules.md) | 1.0 | Draft for Review | 2026-11-18 | 20 enforceable rules (BR-STU-GEN/ADM/PRF/DOC/BLK/TAG) with worked examples. |
| 4 | ["Students-workflows.md"](Students-workflows.md) | 1.0 | Draft for Review | 2026-11-18 | 6 workflows (WF-STU-001…006): admission, application lifecycle, enrollment lifecycle, CSV import, promotion, termination. |
| 5 | ["Students-user-stories.md"](Students-user-stories.md) | 1.0 | Draft for Review | 2026-11-18 | 9 scenarios (STU-US-001…009) with full traceability matrix. |
| 6 | ["Students-v1-scope.md"](versions/Students-v1-scope.md) | 1.1 | Draft for Review | 2026-11-18 | V1 scope statement, build order M0–M6, decision log, status tracker (14 features). |
| 7 | ["Students-v1-features.md"](versions/Students-v1-features.md) | 1.1 | Draft for Review | 2026-11-18 | V1 Core (MVP) feature catalog - 14 fully authored entries with behavior, rules, ACs. |
| 8 | ["Students-v2-features.md"](versions/Students-v2-features.md) | 1.0 | Draft for Review | 2026-11-18 | V2 Additional feature catalog (5 features). |
| 9 | ["Students-v2-scope.md"](versions/Students-v2-scope.md) | 0.1 | Placeholder | 2026-11-18 | V2 scope - created, awaiting planning. |
| 10 | ["Students-v3-features.md"](versions/Students-v3-features.md) | 1.0 | Draft for Review | 2026-11-18 | V3 Later feature catalog (0 features). |
| 11 | ["Students-v3-scope.md"](versions/Students-v3-scope.md) | 0.1 | Placeholder | 2026-11-18 | V3 scope - created, awaiting planning. |

**Rule:** all documents cross-reference each other with relative Markdown links; each carries its own Document Control block, Revision History, and Assumptions section.

## 2. Version Overview

| Version | Tier | Release | Features | Status |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 14 | fully authored - build pending (M0–M6 in v1-scope) |
| V2 | Additional | R2 | 5 | catalogued (summary) - planning not started |
| V3 | Later | R3 | 0 | empty - no V3 features planned |

## 3. Reading Orders

### New contributor

1. ["Students-PRD.md"](Students-PRD.md) (SS1-SS3) - vision, personas, scope.
2. ["Students-features.md"](Students-features.md) - the index, then pick your version catalog.
3. ["Students-business-rules.md"](Students-business-rules.md).
4. ["Students-workflows.md"](Students-workflows.md).
5. ["Students-user-stories.md"](Students-user-stories.md).
6. ["Students-v1-scope.md"](versions/Students-v1-scope.md) - build order and status.

### By role

| Role | Read first | Then |
|------|------------|------|
| Product Owner | PRD SS10-SS12 (open questions, decisions, releases), v1-scope | Version catalogs |
| Tech Lead / Architect | PRD core concepts + technical blueprint | Business rules |
| Backend Developer | v1-scope, v1-features | Business rules, workflows |
| QA Engineer | User stories (acceptance criteria + traceability) | Version catalog acceptance criteria |
| Domain reviewer | PRD domain/compliance sections | Business rules |

## 4. Module Dependencies

### 4.1 Upstream - Students depends on

| Dependency | Nature of dependency | Status |
|------------|---------------------|--------|
| [Foundation](../Foundation/README.md) | Institution structure (FND-STR-001), IAM & permissions (FND-AUTH-001/002), settings/enums (FND-SET-001), notices | Catalogued (FND R1) |
| [Fees](../Fees/README.md) | Application-fee heads + collection status (FEE-COL-001/002); Collect-Fees profile action | Catalogued (FEE R1) |
| [Communication](../Communication/README.md) | SMS engine for Send-SMS action + admission auto-triggers (COM-SMS-*, COM-AUT-*) | Catalogued (COM R1) |

### 4.2 Downstream - other modules depend on Students

| Consumer | What it consumes |
|----------|------------------|
| [HR](../HR/README.md) | Attendance-device identity (Device User ID, card/finger - BR-STU-PRF-006); guiding-teacher linkage |
| [Academics](../Academics/README.md) | Enrollment (class/section/roll) for routines & lessons; guiding-teacher assignment |
| [Exams](../Exams/README.md) | Enrollment + residential/coaching segmentation (STU-PRF-007) for result reports |
| [Operations](../Operations/README.md) | Residential status for hostel allocation (V2) |
| [Communication](../Communication/README.md) | Guardian contacts for auto-SMS targeting |
| [Portals](../Portals/README.md) | Dashboard identity, profile page, sibling mini-profiles (POR-STU-*) |

## 5. References

| Source | What it informed |
|--------|------------------|
| ["biddakool_features_list.md"](../../research/biddakool_features_list.md) §2.1, §2.3, §2.6, §2.7, §2.8, §2.9 | Admission flow, profiles, leaves (V2), certificates (V2), ID cards (V2), membership (parked) |
| EximusEdu brochure pp. 11–21 | HR chapter - student-side features (evidence base) |

## 6. Maintenance Rules

1. **Change one master, propagate.** A feature change updates the version catalog first, then stories, workflows, and rules - then v1-scope if scope placement changes.
2. **Every document bumps its own version** and adds a Revision History row; update SS1 (Document Map) here in the same change.
3. **New features enter scope only through a version catalog file.**
4. **Open questions are resolved in the PRD**, and the dependent documents follow.
5. **Archived documents are frozen.** A document enters [../archive-files/](../archive-files/README.md) only when a newer document officially supersedes it.

---

## Assumptions

- The guardian model is one-family per the PRD (D-STU-03); sibling linkage mechanics await OQ-STU-04.
- Roll uniqueness per (Session, Class, Section) is the working default (BR-STU-GEN-001 [Proposed]).
- All OQ-STU-* blockers carry working defaults (PRD §10) so build milestones are never hard-blocked.
