# Students Module - V1 Features (Core (MVP))

## Document Control

| Field | Details |
|---|---|
| Module | Students |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V1 - Core (MVP) (Release R1) |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Students-PRD.md"](../Students-PRD.md) (source of truth), ["Students-features.md"](../Students-features.md) (module index), ["Students-v1-scope.md"](Students-v1-scope.md), ["Students-business-rules.md"](../Students-business-rules.md), ["Students-user-stories.md"](../Students-user-stories.md), ["Students-workflows.md"](../Students-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | All 14 V1 features deepened: full entries with behavior, rule references, and acceptance criteria. |
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Students V1 features** (Core (MVP), release R1). **A feature exists in V1 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Students-features.md"](../Students-features.md) (index). Global tier rollup: ["roadmap.md"](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** STU-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Must Have - adjusted case by case below.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD (["Students-PRD.md"](../Students-PRD.md) §10, OQ-STU-01…10).
- Acceptance criteria are numbered per feature: ACn: Given ... When ... Then ...
- Features reference business rules by ID (["Students-business-rules.md"](../Students-business-rules.md)) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and ["roadmap.md"](../../roadmap.md) in the same change.

# 3. Feature Sections

## 3.1 Admissions (STU-ADM)

**Purpose:** admission pipeline and the applicant→student path - online and office-side entry, fee handling, review, and conversion.

### STU-ADM-001: Online/office admission application with fee

| Priority | Actors | Permission |
|---|---|---|
| Must Have | Guardian (online), Admissions Officer (office), Visitor (public form) | `students.applications.create`, `students.applications.verifyPayment` |

**Description:** A guardian applies online on the institution's admission form, pays the application fee, and the office tracks the payment to verification. The office can also enter applications directly with a fee-adjust path (cash/manual).

**Inputs:** Applicant personal data (name, DOB, gender, religion, nationality, height, weight, blood group), contact data (email, SMS contact, present/permanent address), family data (father/mother names + occupations, family income), previous institute, class/session applied for, payment record.

**Behavior:**
- Online submission is possible only with the fee paid (BR-STU-ADM-001): the form leads through payment (MFS/card/net banking via Fees) before final submit.
- Office-entered applications may be saved without prepayment but display a payment status that must exist before approval (BR-STU-ADM-001).
- On creation the application receives an immutable Application ID (BR-STU-ADM-002) and status `Applied`; payment moves it to `Applied+Paid`; office verification stamps `VERIFIED` with actor + timestamp (WF-STU-002).
- Rejected applications require a reason and are closed, never re-approved (BR-STU-ADM-005).
- Application fees are non-refundable (BR-STU-ADM-004 [Proposed + Pending OQ-STU-05]).

**Side Effects:** Application-fee collection event recorded in Fees (FEE-COL-*); audit entry per status transition; payment-verified status visible to Portals (public application lookup).

**Acceptance Criteria:**
- AC1: Given an unpaid form, when the guardian submits online, then the system blocks submission and routes to payment first.
- AC2: Given a paid application, when the office verifies payment, then status becomes `VERIFIED` with actor and timestamp recorded.
- AC3: Given an office-entered application, when saved without payment, then it is accepted with `Applied` status and flagged for payment before approval.
- AC4: Given a rejected application, when anyone attempts re-approval, then the system refuses and shows the recorded rejection reason.

### STU-ADM-002: Applications list & bulk management

| Priority | Actors | Permission |
|---|---|---|
| Must Have | Admissions Officer, Institution Admin | `students.applications.view`, `students.applications.approve`, `students.applications.reject` |

**Description:** The office works applications from one list: filter by status, session, class, section, group, gender, religion, Application ID, or name/contact; approve/reject per row; sell forms; bulk-update; print/PDF/Excel with column configuration.

**Inputs:** Filter selections (status, session, class, section, group, gender, religion, Application ID, name/contact search); bulk-update payload; export options.

**Behavior:**
- Status transitions from the list follow WF-STU-002 and BR-STU-ADM-001/005.
- Approve requires a paid/verified payment state (BR-STU-ADM-003 precondition).
- Exports reproduce the active filter state (NFR-STU-05) and exclude PII columns by default (BR-STU-PRF-003).
- Bulk update applies to the filtered selection and reports per-row results.

**Side Effects:** Status-change audit events; export/download events logged.

**Acceptance Criteria:**
- AC1: Given filters set, when exporting to Excel, then the export matches the filtered rows and visible columns.
- AC2: Given a pending application, when the officer clicks Approve, then the status becomes `Approved` only if payment is paid/verified; otherwise an explanatory error appears.
- AC3: Given a bulk update of 20 applications, when submitted, then a per-row result summary is shown (updated/failed with reasons).

### STU-ADM-003: Application detail view

| Priority | Actors | Permission |
|---|---|---|
| Must Have | Admissions Officer, Institution Admin | `students.applications.view` (+PII view) |

**Description:** Full application record on one page: payment info, contact info, family info (father/mother + occupations, family income), personal info (DOB, age, gender, religion, nationality, height, weight, blood group), previous institute, and the printable application form.

**Inputs:** Application ID (navigation), PII-view permission for protected fields.

**Behavior:**
- PII fields (family income, addresses, NID where captured) render only with PII-view permission (BR-STU-PRF-003).
- Age is computed from DOB and shown precisely (BR-STU-PRF-002).
- Status timeline shows every transition with actor + timestamp (WF-STU-002).
- The form view is the print-ready rendering of the captured data.

**Side Effects:** Audit event on PII reveal [Proposed].

**Acceptance Criteria:**
- AC1: Given a user without PII-view permission, when opening the detail, then protected fields render as masked placeholders with an explanatory note.
- AC2: Given a DOB of 2012-03-01, when viewing the detail, then age shows as the exact years-months-days as of today.

### STU-ADM-004: Admission admit card

| Priority | Actors | Permission |
|---|---|---|
| Should Have | Admissions Officer, Institution Admin | `students.applications.printAdmitCard` |

**Description:** Printable admit card for approved applicants: QR code, fee and payment method, applied-on date, branch, and the **admission-exam schedule** with branch contact numbers.

**Inputs:** Application record; admission-exam schedule (maintained by the office/Academics - referenced, not stored here [Proposed]).

**Behavior:**
- Generated server-side as print-ready PDF/image (NFR-STU-05 conventions).
- QR encodes the Application ID for fast office lookup (BR-STU-ADM-002).
- Shows only for `Approved` (or later) applications.

**Side Effects:** Download/print audit event.

**Acceptance Criteria:**
- AC1: Given an approved application, when the officer prints the admit card, then the PDF shows the QR, fee block, branch, exam schedule, and contacts.
- AC2: Given an application still `Applied`, when attempting admit-card print, then the action is refused with the status explanation.

### STU-ADM-005: Applicant → student conversion

| Priority | Actors | Permission |
|---|---|---|
| Must Have | Admissions Officer, Institution Admin | `students.applications.convert` |

**Description:** One action turns an approved applicant into a student: identity + first enrollment created, admitted-on stamped, Application ID stored in the profile, application closed as `Converted`.

**Inputs:** Destination enrollment (session/branch/shift/class/section/roll), optional profile enrichment data.

**Behavior:**
- Allowed only from `Approved` + paid/verified payment (BR-STU-ADM-003).
- Roll must be unique in the destination (Session, Class, Section) (BR-STU-GEN-001); session conflict rules apply (BR-STU-GEN-002).
- Minimum profile data is enforced (BR-STU-PRF-001); missing optional data can be enriched later.
- On success the application becomes `Converted` (terminal, immutable) with the student ID recorded (WF-STU-002).

**Side Effects:** Student + enrollment + family records created; welcome SMS trigger available (Communication COM-AUT-*); portal identity becomes available after credentials are issued (Portals POR-ADM-001); audit trail links application ↔ student.

**Acceptance Criteria:**
- AC1: Given an approved application, when converting with a roll already taken in the section, then the system blocks with a roll-conflict error (BR-STU-GEN-001).
- AC2: Given successful conversion, when opening the student profile, then the Application ID and admitted-on date are present and the application row shows `Converted`.
- AC3: Given a missing guardian contact, when converting, then the system refuses until the minimum data set is satisfied (BR-STU-PRF-001).

## 3.2 Profiles (STU-PRF)

**Purpose:** the 360° student record and the operational student list - the identity core every other module references.

### STU-PRF-001: Student 360° profile

| Priority | Actors | Permission |
|---|---|---|
| Must Have | Institution Admin, Admissions Officer, Guiding Teacher (class-scoped), Guardian/Student (Portals, own) | `students.profiles.view` (+PII view) |

**Description:** One page holding the whole student record: IDs & enrollment (Institute User ID, session, branch, shift, class, section, roll), contacts (father/mother/guardian/emergency, WhatsApp, office phone, addresses), family (photos, occupations, family income, siblings), personal (DOB, precise age, birth registration, religion, nationality, height, weight, blood group), admission info (Application ID, years in institution, guiding teacher, residential status, coaching, tags), attendance-device identity (Device User ID, card/finger number), previous institute, and enrolled subjects.

**Inputs:** Student ID (navigation); edits where permitted.

**Behavior:**
- Enrollment history is listed as separate enrollment rows (current first); history is never overwritten (BR-STU-GEN-002/003).
- PII fields render with PII-view permission only (BR-STU-PRF-003); age computed precisely (BR-STU-PRF-002).
- Device identity fields are unique per institution and audited on change (BR-STU-PRF-006 [Pending OQ-STU-09]).
- Sibling links surface the family model (BR-STU-PRF-004; mini-profiles in STU-PRF-006).
- Sections deep-link to owning modules: Collect Fees → Fees; attendance → HR/Academics surfaces; subjects → Academics.

**Side Effects:** Audit entries on edits; device-identity change event to HR attendance consumers.

**Acceptance Criteria:**
- AC1: Given a student with two sessions of history, when opening the profile, then both enrollments are listed with the current one first and the old one marked Promoted.
- AC2: Given a user without PII-view permission, when opening the profile, then NID/income/address fields are masked.
- AC3: Given a DOB of 2011-09-15, when viewing the profile today, then age renders exactly as `y y m d`.

### STU-PRF-002: Guardian & family records

| Priority | Actors | Permission |
|---|---|---|
| Must Have | Institution Admin, Admissions Officer (+PII view) | `students.family.view`, `students.family.edit` |

**Description:** Family block per student (shared per family - one-family model, PRD D-STU-03): parents' names, occupations, NID (encrypted), family income, family photos, emergency contacts, guardian portal-login linkage.

**Inputs:** Family/guardian fields; linkage keys (father NID, guardian phone).

**Behavior:**
- Guardian NID and family income are PII (BR-STU-PRF-003).
- Sibling detection uses the family key: father NID primary; guardian-phone fallback requires manual confirmation (BR-STU-PRF-004 [Pending OQ-STU-04]).
- At least one guardian contact is mandatory for every student (BR-STU-PRF-001).
- Guardian record is referenced by all siblings of the family; editing the guardian updates every sibling's view.

**Side Effects:** Guardian contact changes propagate to Communication auto-SMS targeting and Portals guardian logins.

**Acceptance Criteria:**
- AC1: Given a second child admitted with the same father NID, when saving, then the system proposes linking the existing family and both children show each other as siblings.
- AC2: Given a family record edit, when saved, then all sibling profiles reflect the change on their next view.

### STU-PRF-003: Student list & summaries

| Priority | Actors | Permission |
|---|---|---|
| Must Have | Institution Admin, Admissions Officer, Guiding Teacher (class-scoped) | `students.profiles.view` (+PII view for exports) |

**Description:** The institution's operational index of students: deep filters (status, session, branch, shift, class, gender, residential status, coaching, guiding teacher, parent-teacher status, photo status, siblings, tag set/not-set), Students Summary and Admissions Summary tiles, and Print/PDF/Excel exports with column configuration.

**Inputs:** Filter selections; export options; column configuration.

**Behavior:**
- Default filters exclude inactive students (BR-STU-GEN-004); explicit status filters reach them.
- Tag filters expose set/not-set (BR-STU-TAG-001).
- Exports reproduce the active filter state and exclude PII by default (BR-STU-PRF-003, NFR-STU-05).
- Summaries reflect the current filter set (students by class/section; admissions by status).

**Side Effects:** Export/download audit events.

**Acceptance Criteria:**
- AC1: Given filters (Class 7, Section A, resident, tag "Hostel-priority"), when applying, then only matching students render and the summary tiles update to the same filter.
- AC2: Given a terminated student, when listing with default filters, then they are absent; with status filter Terminated, then they appear.
- AC3: Given an export, when opened, then it contains exactly the filtered rows and no PII columns unless PII-view was active [Proposed].

### STU-PRF-004: Bulk tools

| Priority | Actors | Permission |
|---|---|---|
| Should Have | Institution Admin | `students.bulk.import`, `students.bulk.photoUpload`, `students.bulk.update` |

**Description:** Three bulk capabilities on the student list: **Bulk Admit CSV** (create students + enrollments row-by-row), **Bulk Photo Upload** (match photos to students), **Bulk Update** (edit selected fields across a selection).

**Inputs:** CSV file (schema per OQ-STU-06); photo archive (files named by Institute User ID or roll-in-class); field + value for bulk update; target selection.

**Behavior:**
- CSV: row-level validation and import with error report (BR-STU-BLK-001); duplicates and session conflicts rejected per row.
- Photos: match by Institute User ID (or roll within a class context [Proposed]); unmatched files reported (BR-STU-BLK-002).
- Bulk update reports per-row outcomes; audited as a batch with a batch ID.

**Side Effects:** Import batch audit entry; guardian records created for imported rows; duplicate-family detection may fire (BR-STU-PRF-004).

**Acceptance Criteria:**
- AC1: Given a 400-row CSV with 12 invalid rows, when importing, then 388 students are created and a downloadable report lists the 12 with per-row reasons (BR-STU-BLK-001).
- AC2: Given photos named by Institute User ID, when uploading, then matched profiles show the photo; unmatched files are listed and nothing is discarded silently.
- AC3: Given a bulk update changing guardian phone for 30 students, when applied, then a batch audit entry records old/new values per row.

### STU-PRF-005: QR vCard

| Priority | Actors | Permission |
|---|---|---|
| Could Have | Institution Admin, Guiding Teacher (class-scoped) | `students.profiles.viewQr` |

**Description:** A QR vCard on the profile that saves the student's core identity + guardian contact to a phone when scanned.

**Inputs:** Student record (non-PII fields only).

**Behavior:**
- vCard contains: name, Institute User ID, class/section/roll, guardian contact - **no PII** (BR-STU-PRF-003).
- Renders on screen and inside the printable profile (STU-PRF-008).

**Side Effects:** None (static render).

**Acceptance Criteria:**
- AC1: Given a scanned QR, when the phone parses it, then the saved contact shows name, ID, class info, and guardian phone and nothing else.

### STU-PRF-006: Sibling mini-profiles

| Priority | Actors | Permission |
|---|---|---|
| Should Have | Institution Admin, Admissions Officer, Guiding Teacher (class-scoped), Guardian (own family) | `students.profiles.view` |

**Description:** Siblings appear on the profile as compact cards (name, class, section, roll, photo) linking to their profiles.

**Inputs:** Family linkage (BR-STU-PRF-004).

**Behavior:**
- Links derive from the shared family/guardian record; manual confirm required for phone-key matches [Pending OQ-STU-04].
- Mini-profile shows name/class/section/roll only - never PII (BR-STU-PRF-004).
- Guardians see only their own family's siblings (Portals).

**Side Effects:** None.

**Acceptance Criteria:**
- AC1: Given a student with one confirmed sibling, when viewing the profile, then the sibling card shows name, class, section, roll and links to the sibling profile.
- AC2: Given a phone-key candidate sibling, when not yet confirmed, then it is not shown as a sibling until an admin confirms the link.

### STU-PRF-007: Segmentation fields

| Priority | Actors | Permission |
|---|---|---|
| Should Have | Institution Admin | `students.profiles.edit` |

**Description:** Residential status (resident/non-resident), coaching status, and guiding teacher as first-class profile fields that other modules segment by (hostel in Operations; All vs Resident vs Non-Resident in Exams results).

**Inputs:** Settings-driven enum values (Foundation FND-SET-*); guiding-teacher reference to HR staff records.

**Behavior:**
- Residential status defaults to non-resident (BR-STU-PRF-005).
- Values are constrained to the configured enums; guiding teacher must be a valid staff member.
- Changes are audited (they affect downstream segmentation).

**Side Effects:** Exams result segmentation and Operations hostel lists consume current values.

**Acceptance Criteria:**
- AC1: Given a student marked resident, when Exams renders the at-a-glance result summary, then the student counts in the Resident segment.
- AC2: Given a guiding-teacher value from a deactivated staff member, when saving, then the system requires a valid staff reference.

### STU-PRF-008: Profile actions

| Priority | Actors | Permission |
|---|---|---|
| Must Have | Institution Admin (+ per-action permissions) | `students.profiles.promote`, `students.profiles.terminate`, `students.profiles.resetPassword`, `students.profiles.sendSms`, `students.profiles.download` |

**Description:** Actions on the profile header: **Promote**, **Terminate**, Reset Password, Send SMS, Download Profile (+ Welcome Card). Collect Fees and Admit Card links route to Fees/Admissions surfaces.

**Inputs:** Action-specific payloads (destination class/section/roll for promote; reason for terminate; SMS text; download options).

**Behavior:**
- Promote: creates the next-session enrollment, closes the old one as Promoted, keeps history (BR-STU-GEN-002; WF-STU-005); roll uniqueness enforced (BR-STU-GEN-001).
- Terminate: soft state change with reason + timestamp; profile and history retained; re-admission policy per BR-STU-GEN-003 [Pending OQ-STU-08] (WF-STU-006).
- Reset Password / Send SMS: delegate to Foundation/Communication respectively; Students records the trigger and outcome (BR-STU-PRF-007).
- Download Profile: print-ready PDF of the 360° profile + Welcome Card for new admissions; PII handled per BR-STU-PRF-003.

**Side Effects:** Audit per action; SMS consumption recorded in Communication; password events in Foundation logs; promotion/termination feeds Exams and Operations (active-student scoping).

**Acceptance Criteria:**
- AC1: Given a Class 7 student at session end, when promoting to Class 8 Section B with a free roll, then a new enrollment exists and the old one shows Promoted.
- AC2: Given a termination with reason, when confirmed, then the student leaves default lists, keeps full history, and the reason + actor + timestamp are recorded.
- AC3: Given Send SMS on a profile, when sent, then the message appears in the Communication sent-log with the student's guardian as recipient.

## 3.3 Tags (STU-TAG)

**Purpose:** lightweight, color-coded operational labeling for lists and filters.

### STU-TAG-001: Color-coded student tags

| Priority | Actors | Permission |
|---|---|---|
| Should Have | Institution Admin (manage), others (filter) | `students.tags.manage`, `students.tags.assign` |

**Description:** Admin-defined tags with colors, assigned to students; every list supports tag set / tag not-set filters.

**Inputs:** Tag definitions (name, color); assignments per student.

**Behavior:**
- Tags are institution-scoped (BR-STU-TAG-001 [Pending OQ-STU-07]); a student may carry multiple tags.
- Tag filters compose with all other list filters (STU-PRF-003).
- Assignments and tag definitions are audited.

**Side Effects:** Tag state feeds list filters and exports (tag column).

**Acceptance Criteria:**
- AC1: Given tags "Hostel-priority" and "Sports-team", when filtering list by tag set = "Hostel-priority", then only students carrying it render.
- AC2: Given a student with two tags, when the profile renders, then both tag chips show with their colors.

# 4. Catalog Summary

14 features catalogued in V1 (5 Admissions + 8 Profiles + 1 Tags).

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.
- V2 features (certificates, ID cards, leaves) are catalogued in ["Students-v2-features.md"](Students-v2-features.md) and stay summary-level until V2 planning opens.
