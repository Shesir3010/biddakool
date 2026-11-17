# HR Module - Feature Index

## Document Control

| Field | Details |
|---|---|
| Module | HR |
| Product | Biddakool |
| Document Type | Module Feature Index |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["HR-PRD.md"](HR-PRD.md) (source of truth), version catalogs under [versions/](versions/), ["HR-business-rules.md"](HR-business-rules.md), ["HR-user-stories.md"](HR-user-stories.md), ["HR-workflows.md"](HR-workflows.md), ["HR-v1-scope.md"](versions/HR-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | Converted to a module-level index during the version-wise restructure; feature rows now live in version-scoped catalogs under versions/. |
| 1.0 | 2026-11-18 | Initial draft from template. |

---

# 1. Purpose

This index is the entry point for HR features. **The authoritative feature rows live in the version-scoped catalogs under [versions/](versions/).** A feature exists officially only when it has an entry in the matching version file. This index never duplicates feature rows - it maps, counts, and points. Where documents disagree, raise a review item; never resolve silently.

# 2. Version Overview

| Version | Tier | Release | Features | Catalog |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 5 | ["HR-v1-features.md"](versions/HR-v1-features.md) |
| V2 | Additional | R2 | 4 | ["HR-v2-features.md"](versions/HR-v2-features.md) |
| V3 | Later | R3 | 3 | ["HR-v3-features.md"](versions/HR-v3-features.md) |

Global tier rollup: [roadmap.md](../roadmap.md).

# 3. Parked - Won't Have (now)

No parked items for this module.

# 4. Reading Order

1. ["HR-PRD.md"](HR-PRD.md) (SS1-SS3) - why the module exists, personas, scope.
2. The version catalog you are working on ([versions/](versions/)) - guidelines, then the catalog.
3. ["HR-business-rules.md"](HR-business-rules.md).
4. ["HR-workflows.md"](HR-workflows.md).
5. ["HR-user-stories.md"](HR-user-stories.md).
6. ["HR-v1-scope.md"](versions/HR-v1-scope.md) - V1 build order and status.

# 5. Research Needs

| Source | What it informed |
|---|---|
| [`../../research/biddakool_features_list.md`](../../research/biddakool_features_list.md) §2.2, §2.3, §2.4, §2.5, §2.7, §2.8 | Recruitment, profiles, attendance (flagship), HR reports, HR documents, ID cards |
| EximusEdu brochure pp. 11–21, 51–53 | HR chapter, teacher panel (attendance side) |

# 6. Open Research Items


- Device integrations (ZKTeco RFID/fingerprint/face/palm): confirm target hardware list & SDK availability during Platform/Architecture planning.
- Teacher absent/present auto-alerts to office are catalogued in Communication (COM-AUT-004 trigger list).

# 7. Maintenance Rules

1. New features enter scope only through a version catalog file; then update this index's counts and [roadmap.md](../roadmap.md) in the same change.
2. A feature changing version moves between version files; update index counts + roadmap in the same change.
3. Withdrawn features keep their IDs and are marked Withdrawn.
4. Never duplicate feature rows in this index.

## Assumptions

- Payroll calculation itself lives in Accounts (ACC-PAY-001); HR supplies the attendance inputs.
- Student attendance (roll-call + device + guardian SMS) is the Students/Portals-facing side and is catalogued under Portals teacher actions (POR-TEA-003) with the automation in Communication.
