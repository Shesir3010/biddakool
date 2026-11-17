# Students Module — User Stories

## Document Control

| Field | Details |
|---|---|
| Module | Students |
| Product | Biddakool |
| Document Type | User Stories and Scenarios |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Students-PRD.md"](Students-PRD.md), ["Students-features.md"](Students-features.md), ["Students-v1-features.md"](versions/Students-v1-features.md), ["Students-business-rules.md"](Students-business-rules.md), ["Students-workflows.md"](Students-workflows.md), ["Students-v1-scope.md"](versions/Students-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Fully authored: 9 stories covering the admission pipeline, profiles, bulk tools, promotion, and termination. Replaces the template placeholder. |

---

# 1. Purpose

Realistic business scenarios that exercise the Students module, for product review and QA derivation. Stories describe situations; they never define new features or rules, and a story's priority never promotes the feature it references.

# 2. Story Template

Story ID: `STU-US-<nnn>`. Every story:

1. Introduces a **fictional character** (name, business type, user role).
2. Explains the **business situation or problem**.
3. States what the user **wants to accomplish**.
4. Describes the user's **actions** step by step.
5. Describes the expected **system response**.
6. Explains the **domain logic and expected impact**.
7. Covers **alternative scenarios** and **corner cases**.
8. Defines **expected results and error handling**.
9. **References** related feature IDs (`STU-*`) and business rules (`BR-*`).

# 3. Stories

## STU-US-001 — Salma applies online from home (Guardian)

**Character:** Salma, 38, guardian of a sixth-grade applicant; basic smartphone user; lives 12 km from the campus.

**Situation:** Admission season has opened at Greenview High School (Biddakool pilot, 1,400 students). Salma cannot leave work to collect a paper form.

**Wants:** To apply for admission online and pay the application fee without visiting the office.

**Actions:**
1. Opens the school website's admission page and fills the form (personal, family, previous institute).
2. Chooses Class 6 (2027 session) and proceeds to pay the ৳300 application fee via bKash.
3. Receives an SMS receipt and the Application ID.

**System response:** The form enforces payment before submission (BR-STU-ADM-001); after the bKash webhook, status flips to `Applied+Paid`; the Application ID `APP-2027-0142` is SMSed (Communication COM-SMS-*, auto trigger COM-AUT-*).

**Domain logic & impact:** The fee lands in Fees' collections (FEE-COL-*) under the application-fee head; the office list shows Salma's application the moment it is paid. Fees are non-refundable (BR-STU-ADM-004 [Pending OQ-STU-05]).

**Alternatives & corner cases:**
- Payment succeeds but the webhook is delayed → application stays `Applied` until the reconciliation retry; no duplicate Application ID is issued.
- Salma's bKash fails → she can retry payment from the application link; the form data is preserved for her session [Proposed].

**Expected results & error handling:** Submission blocked until payment; after payment everything flows without office interaction (AC-STU-01).

**References:** STU-ADM-001; BR-STU-ADM-001, BR-STU-ADM-002, BR-STU-ADM-004; WF-STU-001.

## STU-US-002 — Nusrat verifies and approves a batch of applications (Admissions Officer)

**Character:** Nusrat, 29, admissions officer at Greenview; processes 60 applications in season peak.

**Situation:** Morning queue shows 14 `Applied+Paid` applications; bKash statements arrived for 12.

**Wants:** To verify payments and approve eligible applicants quickly.

**Actions:**
1. Opens the Online Applications list filtered to `Applied+Paid`, Class 6 (STU-ADM-002).
2. Opens each detail, checks payment info and family data (PII visible — she holds PII-view).
3. Marks 12 as `VERIFIED`, approves 11, rejects 1 for forged payment proof (reason recorded).

**System response:** Each action stamps actor + timestamp; the rejected application closes with reason (BR-STU-ADM-005); the approvals unlock admit-card printing and conversion.

**Domain logic & impact:** Approve requires paid/verified state (BR-STU-ADM-003); the two unverified applications stay in the queue — nothing is silently approved.

**Alternatives & corner cases:**
- Statement shows a payment for an application still `Applied` (webhook failed) → she verifies manually; status jumps `Applied` → `VERIFIED` path is allowed.
- Bulk update attempted on a rejected row → per-row result reports the refusal.

**Expected results & error handling:** 11 approved, 1 rejected with reason, 2 still pending; the list reflects everything with timestamps.

**References:** STU-ADM-002, STU-ADM-003; BR-STU-ADM-001, BR-STU-ADM-003, BR-STU-ADM-005; WF-STU-002.

## STU-US-003 — Nusrat converts approved applicants on admission day (Admissions Officer)

**Character:** Nusrat (same as STU-US-002).

**Situation:** Admission day. The approved applicants' guardians are on campus with originals.

**Wants:** To convert 11 approved applications into students with correct enrollments and no roll conflicts.

**Actions:**
1. Opens an approved application → Convert.
2. Selects destination: 2027, Branch 1, Morning, Class 6, Section A; assigns the next free roll.
3. Confirms; repeats for the rest.

**System response:** Each conversion creates identity + enrollment + family link, stamps admitted-on, stores the Application ID, and closes the application as `Converted` (BR-STU-ADM-003). One applicant's chosen roll 12 is already taken — the system refuses and suggests the next free roll (BR-STU-GEN-001).

**Domain logic & impact:** One active enrollment per session (BR-STU-GEN-002); the application↔student chain is permanent. Welcome SMS and portal credentials can follow via their owning modules (COM-AUT-*, POR-ADM-001).

**Alternatives & corner cases:**
- A guardian's contact is missing → conversion refuses until the minimum data set is entered (BR-STU-PRF-001).
- A twin brother of an admitted student applies next → same family key links them as siblings (BR-STU-PRF-004).

**Expected results & error handling:** 11 students created; 1 blocked until roll choice fixed; applications all terminal.

**References:** STU-ADM-005, STU-PRF-002; BR-STU-ADM-003, BR-STU-GEN-001, BR-STU-GEN-002, BR-STU-PRF-001, BR-STU-PRF-004; WF-STU-001.

## STU-US-004 — Rahim migrates last year's registers via CSV (Institution Admin)

**Character:** Rahim, 45, IT admin of Greenview; migrating 3 years of paper registers.

**Situation:** The 2027 session opens in 3 weeks; 380 students in Class 6–10 must exist in the system with enrollments.

**Wants:** To bulk-import all of them from a spreadsheet instead of typing 380 forms.

**Actions:**
1. Downloads the CSV template and fills 380 rows (name, DOB, gender, class/section/roll, guardian contacts…).
2. Runs Bulk Admit CSV for (2027, Branch 1, Day).
3. Reads the result: 368 created, 12 rejected with reasons.

**System response:** Row-level validation (BR-STU-BLK-001): 8 rows have unknown sections, 3 duplicate rolls, 1 missing guardian phone → all 12 rejected with a downloadable report; the 368 valid rows import atomically per row with family records created and duplicate-family keys linked (BR-STU-PRF-004).

**Domain logic & impact:** No partial rows; roll uniqueness enforced; the error report maps 1:1 to spreadsheet rows for a 10-minute fix and re-import.

**Alternatives & corner cases:**
- Wrong header row → import refuses before processing anything.
- Photos arrive later via Bulk Photo Upload named by Institute User ID (BR-STU-BLK-002); 6 unmatched files are reported, not discarded.

**Expected results & error handling:** 368 students active; 12-row report; re-import after fixes succeeds (NFR-STU-06).

**References:** STU-PRF-004, STU-PRF-002; BR-STU-BLK-001, BR-STU-BLK-002, BR-STU-GEN-001, BR-STU-PRF-001, BR-STU-PRF-004; WF-STU-004.

## STU-US-005 — Kamal finds a student and calls the guardian (Guiding Teacher)

**Character:** Kamal, 41, guiding teacher of Class 8 Section B; 46 students under his care.

**Situation:** A student has missed three days; Kamal wants the guardian's number and the student's context.

**Wants:** To pull up the student's 360° profile and reach the family fast.

**Actions:**
1. Opens the student list filtered to his class/section (STU-PRF-003).
2. Opens the student's profile (STU-PRF-001): sees enrollment, guardian contacts, emergency contact, siblings, residential status.
3. Uses Send SMS from the profile header to inform the guardian (STU-PRF-008).

**System response:** His list is class-scoped by permission; PII shows because guiding teachers hold PII-view for their class [Proposed]; the SMS is sent through Communication and logged with the guardian as recipient (BR-STU-PRF-007).

**Domain logic & impact:** Profile actions are permission-gated and audited (BR-STU-PRF-007); Students never sends SMS itself — it delegates (NFR-STU-07).

**Alternatives & corner cases:**
- Student has two tags ("Attendance-watch", "Scholarship") → visible as colored chips; he filters by tag later (STU-TAG-001).
- Guardian phone changed recently → family edit propagates to all siblings' views (STU-PRF-002).

**Expected results & error handling:** Teacher reaches the guardian in under a minute; SMS logged; no access to other classes' students.

**References:** STU-PRF-001, STU-PRF-003, STU-PRF-008, STU-TAG-001, STU-PRF-002; BR-STU-PRF-007, BR-STU-TAG-001, BR-STU-PRF-003; WF-STU-003.

## STU-US-006 — Rahim runs end-of-session promotion (Institution Admin)

**Character:** Rahim (same as STU-US-004).

**Situation:** Session 2027 ends in December; Class 7 Section A (42 students) moves to Class 8.

**Wants:** To promote all 42 in one run with clean rolls and history.

**Actions:**
1. Opens Promotion for (2027, Class 7, Section A); destination Class 8 Section B.
2. Accepts sequential roll assignment; runs the promotion.

**System response:** Roll uniqueness validated per destination (BR-STU-GEN-001); 42 new enrollments created; 42 old enrollments closed as `Promoted`; batch audit entry; printable summary produced (WF-STU-005).

**Domain logic & impact:** History is append-only (BR-STU-GEN-002); the 2028 fee plans, routines, and exams can now target the new enrollments (their modules).

**Alternatives & corner cases:**
- 3 students repeat the year → admin promotes them into (2028, Class 7) instead [Proposed]; same mechanics.
- One destination roll collides with a transferred-in student → flagged pre-execution; admin swaps rolls and reruns.

**Expected results & error handling:** 42/42 promoted; zero manual enrollment edits afterwards.

**References:** STU-PRF-008; BR-STU-GEN-001, BR-STU-GEN-002; WF-STU-005.

## STU-US-007 — Rahim handles a mid-year departure (Institution Admin)

**Character:** Rahim (same as STU-US-004).

**Situation:** A Class 9 student's family is relocating to Sylhet in March; the guardian requests departure.

**Wants:** To remove the student from active lists while keeping the full record.

**Actions:**
1. Opens the profile → Terminate.
2. Enters reason "Family relocation" + effective date; sees outstanding dues of ৳1,100 (informational).
3. Confirms with the checkbox.

**System response:** Active enrollment closes as `Terminated`; reason/actor/timestamp recorded; the student disappears from default lists but appears under the Terminated status filter (BR-STU-GEN-003, BR-STU-GEN-004). The ৳1,100 dues remain in Fees' dues report (FEE-DUE-*).

**Domain logic & impact:** Termination is soft; the TC (with dues blocking) is a V2 flow (BR-STU-DOC-001 [Pending OQ-STU-01]); re-admission would create a NEW ID linked to this profile (BR-STU-GEN-003 [Pending OQ-STU-08]).

**Alternatives & corner cases:**
- Family requests a TC now → in V1 the office explains TC comes with the V2 release; termination still records the departure [Proposed].
- Accidental termination → audit shows the action; a restore path is a deliberate admin action [Proposed — define restore rule].

**Expected results & error handling:** Student inactive; history intact; dues untouched.

**References:** STU-PRF-008; BR-STU-GEN-003, BR-STU-GEN-004, BR-STU-DOC-001; WF-STU-006.

## STU-US-008 — Salma checks her two children in one login (Guardian, via Portals)

**Character:** Salma (same as STU-US-001); her second child entered Class 9 two years later.

**Situation:** Salma receives her portal credentials by SMS; she has two children at Greenview.

**Wants:** To see both children's profiles from one login.

**Actions:**
1. Logs into the guardian portal (POR-STU-001).
2. Opens each child's card; both show sibling links to each other (STU-PRF-006).
3. Views the Class 9 child's 360° profile data exposed to guardians (per Portals' surface).

**System response:** The family's guardian record links both children (one-family model, PRD D-STU-03); sibling mini-profiles show name/class/section/roll only — no PII (BR-STU-PRF-004).

**Domain logic & impact:** Guardian contact edits (her new phone) propagate to SMS targeting for both children (STU-PRF-002).

**Alternatives & corner cases:**
- Her second child was imported via CSV with a differently-spelled guardian phone → the phone-key candidate sibling needed manual confirmation (BR-STU-PRF-004 [Pending OQ-STU-04]).

**Expected results & error handling:** Both children visible; sibling links correct; no cross-family data visible.

**References:** STU-PRF-002, STU-PRF-006; BR-STU-PRF-004, BR-STU-PRF-003; (Portals surface: POR-STU-001…009).

## STU-US-009 — QA corner: permissions and PII (QA Engineer)

**Character:** Test user "Teacher-T" with class-scoped view but NO PII-view; test user "Officer-O" with PII-view.

**Situation:** Acceptance pass over AC-STU-05 (PII) and AC-STU-06 (termination).

**Wants:** To prove masked-PII and termination-hiding behave per rules.

**Actions:**
1. As Teacher-T, opens a profile and an application detail; attempts an Excel export.
2. As Officer-O, terminates a test student; as Teacher-T, lists students with default filters and with Terminated filter.
3. As Teacher-T, attempts to promote a student (no permission).

**System response:** Teacher-T sees masked NID/income/address on screen; export contains no PII columns (BR-STU-PRF-003, NFR-STU-05); Terminated student absent by default, visible under explicit filter (BR-STU-GEN-004); promote refused with a permission error (BR-STU-PRF-007).

**Domain logic & impact:** Confirms AC-STU-05 and AC-STU-06; audit trail contains Officer-O's termination and every access [Proposed for PII-reveal auditing].

**Alternatives & corner cases:**
- PII permission granted mid-session → takes effect on next page load; no stale cache [Proposed].

**Expected results & error handling:** All five checks pass; violations impossible by UI and enforced server-side.

**References:** STU-PRF-001, STU-PRF-003, STU-PRF-008; BR-STU-PRF-003, BR-STU-PRF-007, BR-STU-GEN-003, BR-STU-GEN-004; WF-STU-006.

# 4. Traceability Matrix

| Story | Feature IDs | Rule IDs |
|---|---|---|
| STU-US-001 | STU-ADM-001 | BR-STU-ADM-001, BR-STU-ADM-002, BR-STU-ADM-004 |
| STU-US-002 | STU-ADM-002, STU-ADM-003 | BR-STU-ADM-001, BR-STU-ADM-003, BR-STU-ADM-005 |
| STU-US-003 | STU-ADM-005, STU-PRF-002 | BR-STU-ADM-003, BR-STU-GEN-001, BR-STU-GEN-002, BR-STU-PRF-001, BR-STU-PRF-004 |
| STU-US-004 | STU-PRF-004, STU-PRF-002 | BR-STU-BLK-001, BR-STU-BLK-002, BR-STU-GEN-001, BR-STU-PRF-001, BR-STU-PRF-004 |
| STU-US-005 | STU-PRF-001, STU-PRF-003, STU-PRF-008, STU-TAG-001, STU-PRF-002 | BR-STU-PRF-007, BR-STU-TAG-001, BR-STU-PRF-003 |
| STU-US-006 | STU-PRF-008 | BR-STU-GEN-001, BR-STU-GEN-002 |
| STU-US-007 | STU-PRF-008 | BR-STU-GEN-003, BR-STU-GEN-004, BR-STU-DOC-001 |
| STU-US-008 | STU-PRF-002, STU-PRF-006 | BR-STU-PRF-004, BR-STU-PRF-003 |
| STU-US-009 | STU-PRF-001, STU-PRF-003, STU-PRF-008 | BR-STU-PRF-003, BR-STU-PRF-007, BR-STU-GEN-003, BR-STU-GEN-004 |

Coverage note: every V1 feature appears in at least one story except STU-ADM-004 (admit card — covered by STU-US-002's approval step implicitly; add explicit admit-card coverage in the QA pass) and STU-PRF-005 (QR vCard — print/download path in STU-PRF-008's Download Profile; QA covers on the print surface).

# 5. Known Source Conflicts

- **Application status names:** the brochure shows office-side statuses without a canonical list (recruitment shows `Invited/Approved/Applied/Applied+Paid/Rejected/Selected`). Resolution: the student-application machine in ["Students-workflows.md"](Students-workflows.md) WF-STU-002 (`Applied → Applied+Paid → VERIFIED → Approved → Converted`, plus `Rejected`) [Verify — confirm with pilot institutions].
- **Sibling detection:** the brochure shows sibling mini-profiles but never the linkage mechanism. Resolution: father-NID primary, guardian-phone fallback with manual confirmation [Pending OQ-STU-04].
- **Termination vs TC:** the brochure's TC flow implies departure handling, but its dues behavior is never stated. Resolution: V1 termination (soft), V2 TC with dues blocking [Pending OQ-STU-01].

## Assumptions

- Personas and institution names are fictional; numbers reflect typical Bangladeshi private-school scale.
- Stories assume the Foundation structure (session/branch/shift/class/section) is configured.
