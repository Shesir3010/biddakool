# Students Module - V1 Scope and Build Plan

## Document Control

| Field | Details |
|---|---|
| Module | Students |
| Product | Biddakool |
| Document Type | V1 Scope and Build Sequencing Plan |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Students-v1-features.md"](Students-v1-features.md) (authoritative V1 list), ["Students-features.md"](../Students-features.md) (index), ["Students-PRD.md"](../Students-PRD.md), ["Students-business-rules.md"](../Students-business-rules.md), ["Students-user-stories.md"](../Students-user-stories.md), ["Students-workflows.md"](../Students-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | Build-sequencing plan authored (M0–M6) and decision log seeded; tracker unchanged (14 features, all Planned). |
| 1.0 | 2026-11-18 | Moved into versions/ during the version-wise restructure; status tracker pre-seeded from the V1 catalog. |

---

# 1. Purpose

## 1.1 What This File Is

- The **V1 scope statement**: what the first version of the Students module contains.
- A **build-sequencing plan**: suggested order of development within V1 (working order - refine when build planning starts).
- A **status tracker** for development progress (Planned -> In Progress -> Done / Blocked (OQ-xx)).
- A **decision log** for scope placement and version moves.

## 1.2 What This File Is NOT

- It does **not** define, re-describe, or modify any feature, rule, story, or workflow. All definitions live in the master documents; the authoritative V1 list is ["Students-v1-features.md"](Students-v1-features.md).
- It does **not** change priority, release, or approval status - these are governed by the version catalogs.
- **A feature can never enter this file unless it already exists in the V1 features file.**

# 2. V1 Scope Statement

V1 (release R1) ships the 14 features catalogued in ["Students-v1-features.md"](Students-v1-features.md): the complete admission pipeline (STU-ADM-001…005), the 360° profile and operational list with bulk tools (STU-PRF-001…008), and color-coded tags (STU-TAG-001).

Deliberately deferred: certificates, ID cards, and leaves (V2 — ["Students-v2-features.md"](Students-v2-features.md)); nothing in V3 (["Students-v3-features.md"](Students-v3-features.md)); Membership parked (["module index"](../Students-features.md) §3). OQ-blocked behaviors stay in scope with working defaults (["Students-PRD.md"](../Students-PRD.md) §10): PII encryption default (OQ-STU-02), retention default (OQ-STU-03), TC-dues rule is V2 (OQ-STU-01).

# 3. Build Sequencing Plan

Working order: identity core first, then the admission pipeline, then lifecycle actions, then bulk tools and polish. Milestones are delivery units, never release rounds.

| Milestone | Content | Features | Depends on |
|---|---|---|---|
| **M0 — Foundations** | Schema: students, enrollments (history), families/guardians, applications, tags. PII encryption + audit wiring. Enum/settings hooks | (support for all) | Foundation: FND-STR-001 (structure), FND-AUTH-001/002 (IAM), FND-SET-001 (enums); OQ-STU-02 (PII default) |
| **M1 — Student core & list** | Student CRUD, 360° profile (STU-PRF-001), family/guardian records (STU-PRF-002), list + deep filters + summaries + exports (STU-PRF-003), segmentation fields (STU-PRF-007), tags (STU-TAG-001) | STU-PRF-001, STU-PRF-002, STU-PRF-003, STU-PRF-007, STU-TAG-001 | M0; OQ-STU-04 (sibling key), OQ-STU-07 (tag scope), OQ-STU-09 (device IDs) |
| **M2 — Admission pipeline** | Applications: online/office entry + fee gating (STU-ADM-001), list & bulk management (STU-ADM-002), detail + status timeline (STU-ADM-003), conversion (STU-ADM-005) | STU-ADM-001, STU-ADM-002, STU-ADM-003, STU-ADM-005 | M1; Fees FEE-COL-001/002 (application fee head); OQ-STU-05 (refund), OQ-STU-10 (ID formats) |
| **M3 — Lifecycle actions** | Promotion (WF-STU-005), termination (WF-STU-006), reset password, send SMS, download profile + welcome card (STU-PRF-008) | STU-PRF-008 | M1; Communication COM-SMS-001…004 (SMS engine); OQ-STU-08 (re-admission) |
| **M4 — Bulk tools** | Bulk Admit CSV (WF-STU-004), Bulk Photo Upload, Bulk Update (STU-PRF-004) | STU-PRF-004 | M1; OQ-STU-06 (CSV schema) |
| **M5 — Admit card & vCard polish** | Admit card with QR + exam-schedule reference (STU-ADM-004), QR vCard (STU-PRF-005) | STU-ADM-004, STU-PRF-005 | M2 |
| **M6 — Integration hardening** | Sibling auto-linking surfacing, device-identity change events to HR, portal surface contracts (identity banner, profile page data) | (cross-cutting) | M3; HR, Portals consumers |

Integration points: admission fee ↔ Fees (M2); Send-SMS ↔ Communication (M3); device identity ↔ HR attendance (M0 stores, M6 events); portal surfaces ↔ Portals (M6). Detailed contracts live in the PRD §7.3.

# 4. Development Status Tracker

| Feature ID | Feature | Priority | Status | Notes |
|---|---|---|---|---|
| STU-ADM-001 | Online admission application + application fee payment + verification (Paid/VERIFIED status) | Must Have | Planned |  |
| STU-ADM-002 | Applications list — filters (status/session/class/section/group/gender/religion/ID/name), approve/reject, form sale, bulk update, print/PDF/Excel | Must Have | Planned |  |
| STU-ADM-003 | Application detail — payment, contact, family (parents + occupations, income), personal (DOB, religion, blood group…), previous institute | Must Have | Planned |  |
| STU-ADM-004 | Admission admit card — printable, QR, fee, branch & admission-exam schedule | Should Have | Planned |  |
| STU-ADM-005 | Approved applicant → student conversion (application ID stored in profile) | Must Have | Planned |  |
| STU-PRF-001 | Student 360° profile — IDs/enrollment, contacts, family, personal (precise age, blood group), admission info, previous institute, enrolled subjects | Must Have | Planned |  |
| STU-PRF-002 | Guardian & family records — parents' NID/occupation, family income, emergency contacts | Must Have | Planned |  |
| STU-PRF-003 | Student list — deep filters (incl. residential status, coaching, guiding teacher, tags), Students + Admissions summaries, exports | Must Have | Planned |  |
| STU-PRF-004 | Bulk tools — Bulk Admit CSV, Bulk Photo Upload, Bulk Update | Should Have | Planned |  |
| STU-PRF-005 | QR vCard on profile | Could Have | Planned |  |
| STU-PRF-006 | Sibling mini-profiles | Should Have | Planned |  |
| STU-PRF-007 | Residential/coaching status & guiding-teacher fields (feeds Operations & Exams segmentation) | Should Have | Planned |  |
| STU-PRF-008 | Profile actions — promote, terminate, reset password, send SMS, download profile (+ welcome card) | Must Have | Planned |  |
| STU-TAG-001 | Color-coded student tags (tag set/not-set filters) | Should Have | Planned |  |

# 5. Scope Decision Log

| Decision | Date | Rationale |
|---|---|---|
| Admission pipeline sequenced after the student core (M1→M2) | 2026-11-18 | Conversion (STU-ADM-005) creates profiles; building profiles first gives conversion a destination and de-risks the pipeline |
| Bulk tools after lifecycle actions (M4 after M3) | 2026-11-18 | CSV import exercises the same enrollment/uniqueness rules; validating them on single flows first keeps bulk debugging cheap |
| Admit card last (M5) | 2026-11-18 | Print polish with an external dependency (exam schedule reference); core value unaffected |
| Certificates/ID cards/leaves not in V1 | 2026-11-18 | PRD D-STU-01; tracked in the V2 catalog |

## Assumptions

- All statuses start at Planned; update this tracker as development proceeds.
- Blocked items reference an open question (OQ-nn) from the module PRD (OQ-STU-01…10).
- Milestones assume Foundation structure + IAM are live before M0 starts (["Students-PRD.md"](../Students-PRD.md) §8.2).
