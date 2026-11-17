# Biddakool — Feature Roadmap

*The global tiered view of every feature across all modules: R1 Core (MVP), R2 Additional, R3 Later, and Parked. This document only references feature IDs — it never re-describes or redefines them. Each feature's authoritative home is its module's version catalog (`00-products/<Module>/versions/<Module>-v<n>-features.md`).*

**Source of truth:** each module's version catalogs under `versions/` (mapped by the module's `<Module>-features.md` index). If this roadmap disagrees with a version catalog, the version catalog wins; fixes go here.

## Document Control

| Field | Details |
|---|---|
| Product | Biddakool |
| Document Type | Feature Roadmap (global rollup) |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.2 | 2026-11-18 | Version-wise restructure: feature rows split into per-version catalogs (`versions/<Module>-v<n>-features.md`); authoritative-home pointers updated. Counts unchanged (97 / 55 / 15 / 2). |
| 1.1 | 2026-11-18 | Global rollup populated — 97 R1 / 55 R2 / 15 R3 / 2 parked module features across 11 modules. |
| 1.0 | 2026-11-18 | Initial placeholder created with the docs skeleton. |

---

## 1. How to Read This Roadmap

- **R1 — Core (MVP):** features required for the first usable release. *Product-owner vocabulary: **v1 features**.*
- **R2 — Additional:** second-tier features, added after the core set. *Product-owner vocabulary: **v2 future features**.*
- **R3 — Later:** features deferred to the very future. *Product-owner vocabulary: **v3 features**.*
- **Parked — Won't Have (now):** deliberately out of scope for now; kept visible, never deleted.
- Features are listed **by module, ID only**. Details, priorities, and acceptance criteria live in the version catalogs (`00-products/<Module>/versions/<Module>-v<n>-features.md`); each module's `<Module>-features.md` is the index that maps and counts them.
- A feature moves between tiers only through its module's version catalog files; this roadmap updates in the same change.

## 2. Tier Totals

| Tier | Features | Vocabulary |
|---|---|---|
| R1 — Core (MVP) | 97 | v1 |
| R2 — Additional | 55 | v2 |
| R3 — Later | 15 | v3 |
| Parked | 2 (+2 verticals) | Won't Have (now) |

## 3. R1 — Core (MVP) — 97 features

| Module | Feature IDs | Count |
|---|---|---|
| Platform | PLA-TEN-001, PLA-TEN-002, PLA-BIL-001, PLA-SUP-001, PLA-SUP-002, PLA-ADT-001, PLA-ADT-002, PLA-ADT-003 | 8 |
| Foundation | FND-AUTH-001…003, FND-STR-001…002, FND-CAL-001, FND-NOT-001…003, FND-SET-001, FND-COM-001 | 11 |
| Students | STU-ADM-001…005, STU-PRF-001…008, STU-TAG-001 | 14 |
| HR | HR-EMP-001…002, HR-ATT-001…003 | 5 |
| Academics | ACA-ROU-001…002, ACA-LES-001, ACA-NOT-001, ACA-SYL-001, ACA-DIA-001 | 6 |
| Exams | EXA-EXM-001…004, EXA-MRK-001…004, EXA-RPT-001…008, EXA-RES-001 | 17 |
| Fees | FEE-PLN-001…002, FEE-COL-001…002, FEE-DIS-001, FEE-DUE-001…002, FEE-RPT-001…003, FEE-PAY-001…002 | 12 |
| Accounts | — (V1 intentionally empty; books open in V2) | 0 |
| Operations | — (V1 intentionally empty; campus services start in V2) | 0 |
| Communication | COM-SMS-001…004, COM-AUT-001…003 | 7 |
| Portals | POR-ADM-001, POR-TEA-001…004, POR-STU-001…009, POR-APP-001…002, POR-WEB-001 | 17 |

## 4. R2 — Additional — 55 features

| Module | Feature IDs | Count |
|---|---|---|
| Platform | PLA-PLT-001…003 | 3 |
| Foundation | FND-SET-002…005 | 4 |
| Students | STU-DOC-001…004, STU-LEA-001 | 5 |
| HR | HR-LEA-001, HR-DOC-001…002, HR-RPT-001 | 4 |
| Academics | ACA-EVA-001…002, ACA-LES-002 | 3 |
| Exams | EXA-RPT-009…013 | 5 |
| Fees | FEE-COL-003, FEE-RPT-004, FEE-LAT-001 | 3 |
| Accounts | ACC-ACT-001…005, ACC-PAY-001…003 | 8 |
| Operations | OPS-INV-001…004, OPS-LIB-001…003, OPS-HOS-001…003 | 10 |
| Communication | COM-MSG-001…003, COM-AUT-004, COM-PUSH-001 | 5 |
| Portals | POR-TEA-005…007, POR-STU-010…011 | 5 |

## 5. R3 — Later — 15 features

| Module | Feature IDs | Count |
|---|---|---|
| Platform | PLA-AIN-001…002 | 2 |
| Foundation | — | 0 |
| Students | — | 0 |
| HR | HR-REC-001…003 | 3 |
| Academics | ACA-CRS-001…003, ACA-QUI-001, ACA-TEC-001 | 5 |
| Exams | — (reserved for exam analytics) | 0 |
| Fees | — | 0 |
| Accounts | ACC-DON-001…003 | 3 |
| Operations | — | 0 |
| Communication | — | 0 |
| Portals | POR-STU-012…013 | 2 |

## 6. Parked — Won't Have (now)

| Item | Reason | Recorded in |
|---|---|---|
| Transport module build-out (OPS-TRA-001) | Deferred by product owner; folder reserved, work planned later | [Operations features index §3](./Operations/Operations-features.md) |
| Membership records (STU-MEM-001) | TOC-only in benchmark — scope never shown, validate before build | [Students features index §3](./Students/Students-features.md) |
| Madrasa / Hifz vertical | Current product direction is school & college only | [Benchmark research notes](../research/biddakool_features_working.md) |
| Medical College edition | Current product direction is school & college only | [Benchmark research notes](../research/biddakool_features_working.md) |

---

## Assumptions

- Tier names (Core / Additional / Later) are the product owner's vocabulary, mapped to release rounds R1 / R2 / R3 (v1 / v2 / v3).
- Module set (11 modules) was confirmed with the product owner on 2026-11-18.
- Priorities in module catalogs use working defaults (R1→Must, R2→Should, R3→Could) until deepened.
- Academics routines/lessons were pulled into R1 because R1 portals surface them on dashboards (deviation from the first phase sketch, noted in Academics features §8).
