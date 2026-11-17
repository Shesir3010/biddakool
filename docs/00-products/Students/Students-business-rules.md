# Students Module — Business Rules

## Document Control

| Field | Details |
|---|---|
| Module | Students |
| Product | Biddakool |
| Document Type | Business Rules |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Students-PRD.md"](Students-PRD.md) (v1.0), ["Students-features.md"](Students-features.md), ["Students-v1-features.md"](versions/Students-v1-features.md), ["Students-user-stories.md"](Students-user-stories.md), ["Students-workflows.md"](Students-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Fully authored from the benchmark research (["biddakool_features_list.md"](../../research/biddakool_features_list.md) §2.1–§2.9) and the V1 catalog. Replaces the template placeholder. |

---

# 1. Purpose and Guidelines

## 1.1 Purpose

This document defines the domain logic the Students module must enforce.

It answers the question: **What rules must the system enforce?**

It supports:

- Developers implementing validation and lifecycle logic.
- Testers writing test cases from precise rules and worked examples.
- Domain reviewers validating correctness of treatment.

## 1.2 Relationship with Other Documents

| Document | Responsibility |
|---|---|
| ["Students-PRD.md"](Students-PRD.md) | Why the module exists and what it covers. |
| ["Students-features.md"](Students-features.md) | Module feature index (maps and counts version catalogs). |
| ["Students-v1-features.md"](versions/Students-v1-features.md) | Authoritative V1 feature rows. |
| ["Students-user-stories.md"](Students-user-stories.md) | Realistic scenarios that exercise these rules. |
| ["Students-workflows.md"](Students-workflows.md) | Step-by-step processes and status transitions. |
| ["Students-business-rules.md"](Students-business-rules.md) | The rules the system must enforce (this document). |

Where this document and the version catalogs appear to differ, raise the difference as a review item; do not resolve it silently.

## 1.3 Rule ID Convention

Rule IDs have the form `BR-STU-<AREA>-<number>`. **Rule IDs are never reused.** A removed rule keeps its ID and is marked *Withdrawn*.

| Prefix | Area | Main Feature Areas |
|---|---|---|
| BR-STU-GEN | Identity & lifecycle principles | All |
| BR-STU-ADM | Admissions | STU-ADM-001…005 |
| BR-STU-PRF | Profiles & data | STU-PRF-001…008 |
| BR-STU-DOC | Documents & certificates | STU-DOC-* (V2) |
| BR-STU-BLK | Bulk operations | STU-PRF-004 |
| BR-STU-TAG | Tags | STU-TAG-001 |

## 1.4 Rule Table Format

Rules are listed in tables with these columns:

| Column | Meaning |
|---|---|
| ID | Unique rule ID |
| Rule | The rule, stated precisely |
| Features | Feature IDs the rule supports |

Notes, formulas, and tags follow the table where needed.

# 2. Rule Sections

## 2.1 Identity & Lifecycle (BR-STU-GEN)

| ID | Rule | Features |
|---|---|---|
| BR-STU-GEN-001 | The **Institute User ID** is unique within the institution and immutable once issued. A student's **Roll** is unique within its (Session, Class, Section). [Proposed — roll scope to validate with pilot institutions] | STU-PRF-001, STU-PRF-003 |
| BR-STU-GEN-002 | A student holds **at most one Active enrollment per academic session**. Creating a second active enrollment for the same (student, session) is rejected; the existing enrollment must be closed first (promoted/terminated/TC-issued). | STU-PRF-001, STU-PRF-008 |
| BR-STU-GEN-003 | Students are **terminated, never silently deleted**. Termination records a reason + timestamp and keeps the profile and history. Physical Delete requires explicit confirmation, the delete permission, and an audit entry. A terminated student is **not re-admitted under the same ID**; re-admission creates a new ID and links the original profile as history. [Pending OQ-STU-08] | STU-PRF-008 |
| BR-STU-GEN-004 | Inactive records (Terminated, TC-Issued, Promoted-out) are **retained indefinitely** and excluded from default list filters; they remain reachable via explicit status filters and exports. [Pending OQ-STU-03] | STU-PRF-003 |

Worked example (BR-STU-GEN-002): Student `B1-2027-00871` has an Active enrollment in (2027, Branch 1, Day, Class 7, Section A, Roll 12). Attempting to bulk-admit the same student into (2027, Class 8, Section B) fails with a session-conflict error; the existing enrollment must first be closed via promotion.

## 2.2 Admissions (BR-STU-ADM)

| ID | Rule | Features |
|---|---|---|
| BR-STU-ADM-001 | An **online application can be submitted only after the application fee is Paid** (per the fee head configured for the class). Office-entered applications may be recorded with the fee-adjust path (cash/manual) but must show a payment status before approval. Verification (`VERIFIED`) is recorded by the office with actor + timestamp. [Verify — payment-verification flow to confirm with pilot institutions] | STU-ADM-001, STU-ADM-002, STU-ADM-003 |
| BR-STU-ADM-002 | Every application receives an **immutable, unique Application ID** at creation. Format `APP-<session>-<seq>` [Proposed — Pending OQ-STU-10]. The ID never changes and is stored in the student profile on conversion. | STU-ADM-001, STU-ADM-005 |
| BR-STU-ADM-003 | Conversion of applicant → student is allowed only from **Approved** status with a paid/verified payment. Conversion creates the student identity + the first enrollment (session/branch/shift/class/section/roll — all subject to BR-STU-GEN-001/002), stamps `admitted-on`, stores the Application ID, and marks the application **Converted** (terminal, immutable). | STU-ADM-005 |
| BR-STU-ADM-004 | Application fees are **non-refundable** once paid, including on rejection. Refund (if any) is an office accounting action outside the admission flow. [Proposed + Pending OQ-STU-05] | STU-ADM-001 |
| BR-STU-ADM-005 | **Rejection requires a reason.** A rejected application keeps its Application ID and cannot be reopened or re-approved; a rejected applicant re-applies with a new application (new ID). | STU-ADM-002 |

Worked example (BR-STU-ADM-003): Application `APP-2027-0142` reaches `Approved`. Conversion with (2027, Branch 1, Morning, Class 6, Section A, Roll 31) creates student `B1-2027-00871` with first enrollment Active; the application row becomes `Converted` with the student ID recorded.

## 2.3 Profiles & Data (BR-STU-PRF)

| ID | Rule | Features |
|---|---|---|
| BR-STU-PRF-001 | Minimum data to create a student: **name, DOB, gender, session/branch/shift/class/section/roll, at least one guardian contact**. Every other profile field is optional. The profile cannot be saved without the minimum set. | STU-PRF-001, STU-PRF-002 |
| BR-STU-PRF-002 | **Age is computed from DOB** and displayed precisely as `y y m d` (e.g. `14y 2m 1d`). DOB must not be in the future; DOB edits require the edit permission and are audited. | STU-PRF-001 |
| BR-STU-PRF-003 | **PII protection.** Guardian NID, family income, and full addresses are encrypted at rest and displayed only to roles holding the PII-view permission. PII never appears in list exports by default. [Pending OQ-STU-02] | STU-PRF-001, STU-PRF-002, STU-PRF-003 |
| BR-STU-PRF-004 | **Sibling linkage.** Siblings are linked via a shared family/guardian key: primary key = father NID; fallback = guardian phone **with manual confirmation**. Sibling mini-profiles expose only name, class, section, roll — never PII. [Pending OQ-STU-04] | STU-PRF-002, STU-PRF-006 |
| BR-STU-PRF-005 | **Residential status, coaching status, and guiding teacher** are settings-driven enums/values (Foundation FND-SET-*). Residential status defaults to *non-resident*. These fields feed Operations (hostel) and Exams (result segmentation, e.g. All vs Resident vs Non-Resident). | STU-PRF-007 |
| BR-STU-PRF-006 | **Attendance device identity** (Device User ID, card/finger number) lives on the student profile, is unique per institution, and is audited on change. Other modules consume it read-only. [Pending OQ-STU-09] | STU-PRF-001, STU-PRF-008 |
| BR-STU-PRF-007 | **Every profile action is permission-gated and audited** — Collect Fees, Promote, Terminate, Reset Password, Send SMS, Download Profile. Actions delegate to owning modules (Fees → collection; Communication → SMS); Students records the trigger and the outcome reference. | STU-PRF-008 |

## 2.4 Documents & Certificates (BR-STU-DOC) — V2

| ID | Rule | Features |
|---|---|---|
| BR-STU-DOC-001 | **TC is blocked while fee dues remain outstanding.** The TC screen shows the due amount and the blocking rule; an explicit dues-waiver permission can override with a recorded justification. Issuing a TC closes the active enrollment as `TC_Issued`. [Proposed + Pending OQ-STU-01] | STU-DOC-001 (V2) |
| BR-STU-DOC-002 | Templates (TC bilingual Bangla+English, testimonial multilingual, course-completion) are institution-scoped, generated server-side as PDF/image with a **"Student Copy" watermark**, and require named signature blocks (Principal, Class Teacher). Custom third-party designs are uploaded assets, versioned per institution. [Verify — Bangla education-board template conventions at build time] | STU-DOC-001…003 (V2) |

## 2.5 Bulk Operations (BR-STU-BLK)

| ID | Rule | Features |
|---|---|---|
| BR-STU-BLK-001 | **Bulk Admit CSV validates row-by-row** against the documented schema [Pending OQ-STU-06]: required minimum fields (BR-STU-PRF-001), existing class/section, unique Institute User ID and unique (Session, Class, Section) roll (BR-STU-GEN-001), no session conflict (BR-STU-GEN-002). **Valid rows import; invalid rows are rejected** with a downloadable row-level error report. Each imported row creates identity + enrollment + guardian atomically. | STU-PRF-004 |
| BR-STU-BLK-002 | **Bulk Photo Upload** matches files to students by Institute User ID (or roll within a class context [Proposed]). Unmatched files are reported and not silently discarded. | STU-PRF-004 |

Worked example (BR-STU-BLK-001): a 400-row CSV with 12 bad rows imports 388 students and returns `bulk-admit-errors-2026-11-18.xlsx` listing the 12 rejected rows with per-row reasons (`missing: guardian_phone`, `duplicate roll 12 in Class 7/A`, `unknown section 'C'`).

## 2.6 Tags (BR-STU-TAG)

| ID | Rule | Features |
|---|---|---|
| BR-STU-TAG-001 | Tags are **admin-defined, institution-scoped, color-coded** labels. A student may carry multiple tags. Every list exposes **tag set / tag not-set** filters. Tag sharing across branches is the working default [Proposed — Pending OQ-STU-07]. | STU-TAG-001, STU-PRF-003 |

# 3. Assumptions

- **[Proposed]** marks content added for discussion that needs product-owner confirmation.
- **[Verify]** marks a rule that must be validated against official sources or a qualified professional before implementation.
- **[Pending OQ-nn]** marks a rule that depends on an open question from the PRD §10 (OQ-STU-01…10). The rule shown is the working default.
- Rules state **what** must be enforced, not **how** to implement it.
- The guardian model is one-family (PRD D-STU-03): guardian records are shared by siblings; "guardian contact" in BR-STU-PRF-001 refers to at least one contact on the family record.
