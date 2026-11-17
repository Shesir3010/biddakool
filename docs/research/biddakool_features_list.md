# Biddakool — Complete Feature List (Extracted from Brochure)

> **Project name:** **Biddakool** (working name for the upcoming product)
> **Source/Evidence:** competitor reference brochure `EximusEdu_Brochure_v3-compressed.pdf` (64 rendered pages, read visually). Mentions of the original brand inside evidence quotes were rebranded to Biddakool in this list; the source brochure itself keeps its original name.
> **Method:** Feature inventory only (not verbatim transcription). Original Bangla terms kept in parentheses where useful.
> **Legend:** ✅ = explicitly shown in screenshots/text • 📑 = listed in Table of Contents • ⚠︎ = uncertain reading • **Medical** = medical-college edition feature

---

## 1. Platform Overview & Core Claims

- All-in-one Education Management System (EMS) for **Schools, Colleges, Madrasas, Universities, online educational platforms** (কোচিং/কেয়ার also supported)
- **350+ smart features** (marketing claim) (৩৫০+ স্মার্ট ফিচার)
- Serves **200+ institutions** across Bangladesh (incl. abroad — Saudi Arabia, China/Yemen)
- Web + **mobile apps** (Android Google Play + iOS App Store); works on phone/tablet/computer
- Multi-institution / **multi-campus (branch শাখা)** support; per-branch data
- Institution structure dimensions: Session, Branch, Shift (Morning/Day/Arabic…), **Version (Bangla/English Medium/English Version)**, Class, Section, Group, Department
- Role-based access control per module (view/add/edit/delete granular permissions)
- Detailed audit trail + automatic data backup (claim)
- **Security:** VAPT (Vulnerability Assessment & Penetration Testing) tested; data confidentiality pledge
- **Customization promise:** institution-specific workflows, unique report cards, ID designs, fee structures — customizable without hardware requirements; "90%+ needs met out-of-the-box"
- **AI/BI roadmap (foreword):** AI-powered analytics on results/attendance/payments feedback to auto-generate per-student insights & weak-subject detection (শীঘ্রই)
- **24/7 support** claim; remote support team; dedicated support tickets system
- Login credentials delivered to guardians via SMS
- Works with country-wide **MFS/banks** for payments; instant receipts

## 2. HR & People Management (মানবসম্পদ ব্যবস্থাপনা)

### 2.1 Student Online Admission ✅
- Online application form on institution website; office-side application & fee-adjust path
- Application fee payment before form submission; payment verification (Paid/VERIFIED status)
- **Online Applications (Students) list:** filters (Status, Session, Class, Section, Group, Gender, Religion, Application ID, name/contact search); per-row Approve/Reject; capabilities: Form Sale, New Application, Bulk Update, Print/PDF/Excel/column-config
- **Application detail:** Payment info, Contact info (email/SMS contact/present + permanent address), Family info (father/mother + occupations, family income), Personal info (DOB, age, gender, religion, nationality, height, weight, blood group), Previous institute info, application form view
- **Admission Admit Card** (printable, QR): fee, pay method, applied-on, branch, **admission-exam schedule** + branch contact numbers
- Approved applicant → student conversion (admitted-on date, online application ID stored in profile)

### 2.2 Teacher/Staff Online Recruitment ✅
- Online job applications w/ posts (e.g., Assistant Teacher — multiple subject posts)
- Applicant list filters (Status, Applied Post, Has Paid, Gender, Religion, Application ID); statuses: Invited/Approved/Applied/Applied+Paid/Rejected/**Selected**
- Full application form: personal, family, contacts (SMS contact, email, **emergency contacts 1 & 2**, home district), marital status, academic records (SSC/HSC/Bachelor/Masters — board/university/institute/result), employment history (designation, organization, joined/resigned, duration), training & certificates, extra-curricular, NID, declaration, payment info
- **Recruitment exam admit card** (exam center, date/time, roll, post, payment-verified badge)

### 2.3 Profiles (Students / Teachers / Staff) ✅
- **Student list:** deep filters (Status, Session, Branch, Shift, Class, Gender, **Residential Status (resident/non-resident)**, Coaching Status, Guiding Teacher, Parent-Teacher status, Photo Status, Siblings, Tag set/not-set); bulk actions: Add Student (**Bulk Admit CSV**), **Bulk Photo Upload**, Bulk Update; summaries: Students Summary + **Admissions Summary**; Print/PDF/Excel/column config
- **Student profile (360°):** IDs & enrollment (Institute User ID, Session, Branch, Shift, Class, Section, Roll), contact (father/mother/guardian/emergency, WhatsApp, office phone, addresses), family (photos, occupations, family income, **siblings w/ mini-profiles**), personal (DOB, precise age "14y 2m 1d", birth registration, religion, nationality, height, weight, **blood group**), **QR vCard** (scan to save contact), admission info (application ID, years in institution, guiding teacher, residential status, coaching, **tags**), **Attendance Device info (Device User ID, Card/Finger Number)**, previous institute, enrolled subjects
- Profile actions: Collect Fees, Admit Card, Add Inflow, Add Due, **Promote**, Edit, **Terminate**, Delete, Reset Password, Send SMS, **Download Profile (+ Welcome Card)**
- **Teacher/Staff profile:** personal, family (spouse), education (qualification, major), administration (designation, joining date, primary/secondary/tertiary subject, **nominee**, competence areas), academic records, experience history; **Teacher Work Logs**; **Attestations**; employee ID card
- **Bulk profile tools:** bulk password set, bulk photo upload, bulk data update
- **Tags system** for students (color-coded tags on lists)

### 2.4 Attendance Management ✅ — *flagship*
- **Manual roll-call attendance** via mobile app (per-student toggles: **Present / Absent / Late / Leave / Early Leave**); holiday-attendance warning banner; import-from-sheet option
- **Automatic attendance via devices:** RFID **Card**, **Fingerprint**, **Face**, **Palm** recognition (e.g., ZKTeco integration; device user IDs per student/teacher)
- Auto SMS/push to guardians on: absent / present-on-time / late (with timestamps, e.g., "present at 7:32 AM")
- HR attendance: teacher/staff late tracking (⏱ late icon), leave days, in/out timestamps; attendance linked to **salary calculation, fines & deductions** (Working Days, Present, Absent, Late, Leave → Total Salary, Fines, Total Deduction, Net Salary)
- **Attendance dashboards:** employees/working-days/avg-present widgets w/ % stats; present/absent/late/leave charts
- Attendance statuses include **Early Leave**

### 2.5 Attendance Reports ✅
- Institution-wide summary: date-range **daily bar charts** (present/absent/leave) + **matrix Branch × Shift × Class × Section vs each date** (✓/✗ counts), total & percentage rows
- Per-student detailed report: ID/Roll/Name × daily columns (✓/✗) + totals + per-student %
- **Medical variant:** subject-wise **attendance-% table** (subject/class-type granularity, e.g., "Cardiology (Ward)(Morning) 80% (5)"), sub-75% rows highlighted red; date-range detailed report w/ per-session topic/record details, per-ward totals & %
- **<75% attendance auto-warning** (push + SMS to guardian, medical edition): "Your attendance in Obs & Gynaecology (Ward-Morning) is less than 75% (57%)"
- **Attendance stats in report cards:** Working Days, Present %, Absent %, Late %, Early Leave %, Leave %; per-exam-column attendance counts (Classes Held/Present/Absent)

### 2.6 Leave Management (ছুটি) ✅
- **Student leaves:** admin list w/ filters (Session…Status, From/To dates); From/To/Days; details view; **comments thread**; **attachments**; status lifecycle (Submitted → Approved/Rejected, + timestamps, forward action); New Leave Application
- **Teacher/staff leaves (self-service):** My Leave Applications w/ **leave-type stat cards** (Cancel/Medical; types e.g., Medical, Casual); apply, approve/reject flows
- **Medical edition:** leave lists per Year/Group; instructor comments; session-year filtering

### 2.7 Certificates & Documents ✅
- Auto-generated **Transfer Certificate (TC)** — bilingual (Bangla+English), branded, reasons dropdown, signatures (Principal, Class Teacher)
- **Testimonial (প্রত্যয়ন পত্র)** — multilingual (Arabic/Bangla/English) template-based
- **Course Completion Certificate** — custom-designable (madrasa Kaydah example), auto-filled fields
- Template-based generation, PDF/image download, print-ready; "Student Copy" **watermark**; third-party custom designs supported
- Related HR records: **Blacksheet**, **Attestations**, **Testimonials** (sidebar menu items)

### 2.8 ID Cards ✅
- Per-institution unique templates; portrait & landscape; front: logo, photo, ID No, Name, Class/Roll/Section/Year, **blood group, guardian contact**, website
- Back: address, hotline, email, **barcode**, "IF FOUND PLEASE RETURN…" + principal signature
- Student + **Teacher/Staff** variants; QR option; print-ready

### 2.9 Membership (সদস্যতা) 📑⚠︎
- Listed in TOC (printed p.15) between Leave and ID Card; exact scope not clearly captured — likely membership/savings records. [TOC-only]

## 3. Academics (একাডেমিকস)

### 3.1 Exams Framework ✅
- Exam types: Class Test (CT), Mid Test (MT), Semester/Term Final, Card/Item exams, Half-Yearly, Special Exam, Summative Assessments, Admission exams — **fully customizable exam structures per institution**
- **Marks entry (teacher):** Subjective / Objective / Practical columns per subject; full-marks row; absent toggle; **Publish Time** scheduling; **Download Blank Sheet**; marks-comparison; medical: MCQ/Group A/Group B/TA-Sc/Viva/**OSPE/Traditional/Integrated Practical/Notebook**
- **Medical — Card-Items system:** card → item-level syllabus breakdown w/ per-item marks (e.g., Card 1: Definition 7, Cell 7 … Card Final 15)
- **Medical — full term results:** Written (MCQ/Group A/Group B/TA), Viva, Practical (OSPE/Traditional/Integrated/Notebook), Grand Total, %, Result (Passed/Failed/**POC**/Absent), **Merit position**
- **Exam operations:** Schedules, **Admit Cards** (custom design, subject list w/ codes, date/time, contact, signature/stamp areas), **Seat Plans** (printable cards w/ photo & info, 4/page, subject filter), Marks, **Marks Comparison**
- **Prof. Eligibility (Medical)** 📑✅: auto eligibility Yes/No per student w/ named failing causes (failing attendances + failing card/item exams, with %)

### 3.2 Results & Report Cards ✅ — *flagship*
- **Fully customizable report card** per institution; any mark distribution; custom comment fields; grade systems: Bangladesh A+..F (5.0/4.0/3.5…), US-style 12-tier (A+/A/A-/B+/B/B-/C+/C/C-/D/F), **UK-style grade boundaries (A+ 95%…U <30%)**, **madrasa Division system (Mumtaz/Jayyed Jiddan/Jayyed/Maqbul/Rasib + Star Mark)**, letter-grade-only (Coursework/Term), dual scales on one sheet (100- & 50-mark tables)
- Per-subject paper splits (Sub/Obj/Prc/CQ/MCQ), **Highest Marks** column/row, GPA with/without 4th subject, **Failed Subject(s) count**, **F2-style multi-fail encodings**, failed marks circled red
- Positions: **Section Position, Class Position, position-out-of (3rd/4)**
- Attendance on result sheet (classes held/present/absent); **Special Evaluation** (e.g., Excellent/Very Good/…/Needs Improvement; handwriting feedback); Teacher's Comments; multi-signature blocks (Class Teacher/Exam Controller/Principal/Headmaster/Guardian/Homeroom/Academic Coordinator/**Parent**); **Result Published date**; **"Powered by Biddakool" footer**
- **Health/character blocks:** Moral & Behavior grid, **Co-Curricular grid (Sports/Cultural/Function/Scout-BNCC/Math Olympiad)**, cadet-style columns (Character/Interior/Health/First Aid/Drill/PT/Co-curricular/Conversation/Soldiering + Total), **PESD behavioral checklist (Sometimes/Usually/Mostly)**
- **Multi-semester combined result:** all semesters + weighted final config (e.g., 25/25/50%; CT 10/MT 15/Final 75%)
- **Tabulation Sheet (Summary & Detailed):** class matrix; subject stats (Highest/Lowest/**Average/Median**), pass/fail & grade-distribution rows, failed highlight, Totals/percentages headers, GPA-5 count, Top-10 count
- **Merit List** + **Failed & Absent List** reports (fail counts + failed subjects w/ marks)
- **Section-wise & institution-wide At-a-Glance results:** Result Summary (**All vs Resident vs Non-Resident** segmentation, performance %) + subject-wise charted overview; customizable combos
- **Online result publication:** on institution website + Biddakool portal; public lookup (Session/Semester/ID, **reCAPTCHA**), branded transcript page, PDF/image download; no-login public access
- **Portal report cards list** (student): per-semester GPA/positions/status (Passed ✓/Failed ✗), view/download PDF

### 3.3 Routines ✅
- **Class Routine:** Day×Period grid (w/ tiffin break, times), color-coded cells (subject+teacher initials+**room**), auto teachers table + weekly class-count summary; institution-wide at-a-glance
- **Teacher Routines:** individual (w/ weekly load totals), all-teachers grid, **per-day filtered view**; room allocation
- Medical: lecture/ward/day-type sessions in routine structure

### 3.4 Lesson Planning & Evaluation (পাঠ পরিকল্পনা ও মূল্যায়ন) ✅
- **Daily Lessons:** Class Work + Home Work per subject/date (admin + teacher entry; + Add, edit/delete, Print/PDF/Excel)
- **Lesson Evaluation:** per-student Learned / Partially Learned / Didn't Learn / Absent + **Concentration rating (Excellent/Satisfactory/Needs Improvement)**; blank sheet download; fetch by class/section/subject/date
- **Daily evaluation summary** + **Lessons for Next Day** notes
- **Monthly Academic Progress Report:** per class+subject stats (working days, classes held, exams), per-student lessons-learned counts, Exam 1–4 marks + **Exam Graph**, Concentration (out of N reports), class stats: **Median/Average/Minimum/Maximum**

### 3.5 Courses & Online Learning ✅
- **Course activities:** Live Class, Online class, Lecture sheet upload, Assignment/Homework — w/ Start date & **Deadline**, response counts, +New Activity
- **Student submission portal:** text + file upload, deadline/late detection, per-course submission table (marks out of X, % submitted)
- **Teacher grading:** marks + written feedback + attach corrected file; **in-app annotation/marking of handwritten submissions** (zoom/pen/shapes/text/eraser)
- **Own-website exam portal integration** (institution-branded course results)

### 3.6 MCQ Quizzes / Class Notes / Syllabus ✅
- **Online MCQ quizzes:** score panel (questions/correct/incorrect/skipped + %), donut charts, per-question points & correct/wrong highlighting; joinable from portal ("Start Quiz"); class+subject tags
- **Class Notes:** title/content/attachment w/ class-section-subject taxonomy, notes downloadable; **Class Note Submissions** (student-side)
- **Syllabus management:** session/class-organized, download/view, soft-delete filter
- **Daily Diary** (প্রতিদিনের কার্যক্রম — parent-facing daily log)

### 3.7 Notices & Events ✅
- Notices w/ rich body + **attachments**, published-on timestamps, admin CRUD; portal list + detail modal; Print/PDF/Excel
- **Events calendar:** multi-day color-coded event bars, month navigation, overlaps supported
- Welcome Banners (system setup)

## 4. Fees & Accounts (ফীস ও একাউন্টস)

### 4.1 Fee Management ✅
- **Fee heads** (e.g., Admission Fee, Session Fee, Tuition Fee (BM/EV), Exam Fee per semester, Late Fine, Registration Fee, Day Care Fee, Special Care Fee, Transport…); **fee structure per class** (class-wise fee calc grid), separate Bangla-Medium/English-Version heads
- **Collect Fees (office):** per-head **Actual / Payable / Waived / Paid / Due** + Add Fees + month/notes; **Send SMS / Send Email** on collection; totals auto
- **Discounts/Waivers:** waiver/discount control + **Waiver/Discount report**
- **Money Receipt:** printable **Student Copy + Office Copy** (2 copies), receipt no. w/ per-head breakdown, **amount in words**, accountant signature, datetime
- **Dues management:** dues till date, **Dues Report** (w/ totals), **auto due-reminder SMS** to guardians ("total dues of Tk 2,200…"), overdue status
- **Fee reports:** Fees Collections Report (multi-filter, repeat-count), **Fee Calculation Report (class-wise)**, **Collection Report (student-wise w/ collector & receipt links)**
- **Student/Guardian portal fees:** dues table w/ select + **Pay Now**, payments history (+**View Ledger**), Terms/Privacy/Refund policy acceptance at payment

### 4.2 Online Payments ✅
- **MFS:** bKash, Rocket, Nagad, mCash, OK Wallet, Dmoney/tap (tabs: CARDS / MOBILE BANKING / NET BANKING)
- **Cards:** VISA/Mastercard form (number, MM/YY, CVC, holder, save-card, T&C checkbox)
- **Net banking:** AB Direct, City Bank, MTB, Bank Asia, ispay etc.
- Amount + PAY button flow; payment verified status in admission/admin records

### 4.3 Accounting ✅
- **Income-Expense entries; Chart of Accounts; Income Statement** (per branch, date-range, particulars w/ Amount/Total/Balance)
- **Cash Flow Statement** (multi-account closing balances)
- **Ledgers Summary** (Opening/Debit/Credit/Closing per account) + **Ledger/Petty Cash Book:** voucher-wise receipts (w/ **per-student fee-head breakdown in particulars**) & payment entries, running balance, opening/closing; summary + detailed views
- **Voucher system** (purchase vouchers, sales receipts, receipt/payment vouchers — from letter & sidebar)

### 4.4 Payroll & Provident Fund ✅
- **Monthly payroll:** attendance-integrated (Working Days/Present/Absent/Late/Leave), Gross, deductions (**Provident Fund, Fines**, others), **Net Salary**, **disbursement split Bank Transfer / Cash**; multi-select **Pay Process**
- **Provident Fund ledger (admin):** contribution start, total months, employee & employer contribution totals + grand total
- **Teacher self-service:** payslip history (month × breakdown/deduction/net) + own PF statement (opening/closing balance, monthly self/employer contributions)

### 4.5 Donation Management ✅
- **Donors & dues:** scheduled (monthly/periodic) donation dues w/ donor name/phone/period/amount; due-date tracking; filters
- **Collections:** donation receipts (receipt no., amount), date-range filters + totals
- **Reminder SMS** to donors for pending collections

## 5. Operations Modules

### 5.1 Inventory (ইনভেন্টরি) ✅
- **Items & Stocks:** units, unit cost & **selling price**, warehouse/branch, current stock & value, **low-stock warning threshold**; stock valuation totals
- **Purchases/Restocking** from **Suppliers** w/ vouchers; Purchase Vouchers list
- **Sales:** to students (class-linked), quantity × price − **discount** = total; **Sales Receipts**; records in tens of thousands
- **Transfers** between warehouse ↔ branches (record no., source, destination, item, qty)
- Sub-menu: Items & Stocks, Purchases, Purchase Vouchers, Sales, Sales Receipts, Transfers, Suppliers

### 5.2 Library (গ্রন্থাগার) ✅
- **Catalog:** books/CDs/magazines — title, authors, publisher, ISBN, year, pages, category, **genre**, cover photo, language, description, attachments (PDF/fulltext-on-VRC flag)
- **Copy-level tracking:** copies w/ Copy No, Copy ID, **Barcode**, **Shelf Position**, circulation status, archive state; available-vs-total counters
- **Circulations:** borrow/return ledger — borrower, borrow/return dates, **lead period (days)**, **overdue/days-late tracking**, status
- Sub-menu: Catalog, Items, Authors, Publishers, Categories, Genre, Circulations

### 5.3 Hostel (আবাসিক/ছাত্রাবাস) ✅
- **Halls registry** (gender type, **Warden + Assistant Warden**); houses naming
- **Room allocation:** Wing / **Hall→Floor→Room** assignment per student; **Room Types** w/ monthly fee; hosts room-wise fee setup
- Residential status carried in profiles & result segmentation (resident/non-resident)
- Sub-menu: Halls, Floors, Rooms, Room Types

## 6. Communication (মেসেজিং ও এসএমএস)

- **In-app messaging** (teacher/office ↔ guardian/student): threads, timestamps, attachments, chat lists, read indicators; **guardian sees all children in one login**; guardian↔teacher messaging; guardian chat permission controls
- **Full SMS engine:** **Masking (1.25৳) & Non-Masking (0.95৳)** pricing; sender-ID; SMS types (General+); composer w/ **templates ("load from template"), dynamic fields ([name]), live phone preview, banned-word detection**, char counter + SMS-part calculator + encoding (GSM/UNI)
- **Recipient building:** by group (**Load Group**), manual numbers, per-student picker; save recipient set as group; per-message multi-part preview
- **Sent SMS log:** filters (branch, recipient, date, **Has Error**, Masking/Non-Masking); message body, **parts count**, error capture
- **SMS balance top-up (online)** & balance badges
- **Auto-SMS triggers:** attendance (absent/present/late), dues reminders, fee receipts, exam alerts, admission exam notices, login credentials, teacher absent/present alerts, **birthday wishes**, donor reminders, low-attendance warnings (medical), leave notifications
- **Mobile push notifications** (in-app broadcast); notice platform

## 7. Hifz Module (হিফজ) ✓ — *madrasa-specific*
- **Hifz departments** (Kayda, Pre-Kayda, Ampara, Nazara, Hifz …), **Hifz groups** (+ short name, code, **Group Teacher**), active flags; group lists
- Hifz dept/group/group-teacher columns + filters in main student lists
- **Sabaq (সাবেক) & Mashq (মাশক) structured exams** w/ custom marking scale (e.g., 15/20; ayah bands)
- **Monthly Hifz Progress Report:** participation/sick/absent counts, board-exam counts, per-week sabaq/mashq bands, **merit list (মেধা তালিকা: ID/name/admission, sabaq, mashq, satkaghur, majlis, grade letters + overall grade)**, date-range stats, Fetch/Download report buttons
- **Hifz transcript:** branded ornate print (Tilawat, Tajweed, Duas, Hadith, Mashq, Suva Nurani & Land Writing etc.); Subject/Hifz positions (**Group Position, Department Position**), grades reference, comments, 3 signatories
- Section coordinator role (signature block)

## 8. Student / Guardian Portal & Mobile App ✓

- **Dashboard widgets:** identity banner (institution/ID/session/branch/shift/class/roll/admitted-on); **Class Teacher** card; guardian card; **Live Classes Today** (Join button, started-minutes-ago); **Ongoing Quizzes Today** (Start Quiz); Notices-Events; **attendance calendar w/ color status + stats card (Present/Absent/Late/Early-Leave/Leave %) + donut chart**; **Dues card + Pay Now**; **Latest Exam Marks (Passed/Failed badge)**; **Upcoming Exams** (slots); **Latest Class Notes**; **Today's Lessons**; **Today's & Tomorrow's Classes** (period/subject/time); monthly calendar; support contact
- **Profile page:** full contact/family/personal info incl. parents' **NID + occupation**, emergency contact, QR vCard, **Health Card** (health records), previous institute, siblings
- **Fees:** dues (select + Pay Now via MFS/card/netbanking) + payment history + ledger view
- **Attendance:** own calendar & subject-wise/percentage summaries (medical edition too)
- **Exams:** marks table (w/ full marks & **highest**), report cards by semester w/ GPA/positions & PDF download; exam schedules
- **Academics:** daily lessons, **Daily Diary**, lesson evaluations, monthly progress, class notes (+submissions), syllabus downloads, class routine, courses, quizzes, **Important Links**
- **Leave applications (student-side)**; feedback submission (**Guardian Feedbacks**)
- Inventory purchases (school store) visibility
- Login credentials delivered via SMS
- **Phone usage controls:** app-based **screen/module lock control** (শিশু-নিরাপত্তা ফিচার — ফোন স্ক্রিন লক/কন্ট্রোল via app — ⚠︎ reading uncertain: screen-time/parental control style)

## 9. Teacher Panel (শিক্ষক প্যানেল) ✓

- **Teacher dashboard:** identity card (ID, branch, **employee shift/academic shift/medium**), Live Classes (join), Tomorrow's classes, Notices-Events, **own attendance** (calendar + stats + donut), events calendar
- **Student lists & profiles (view):** class/section-filtered, tags, summaries; 360° profile view (incl. attendance-device ID, application ID, guiding teacher); Download Profile + Welcome Card
- **Take attendance** (roll-call UI w/ Present/Absent/Late/Leave/Early-Leave + holiday warning + totals)
- **Exam marks entry** (subjective/objective/practical; publish time; blank sheets)
- **Lesson evaluation entry** (+ concentration)
- **My leaves** (apply + view status)
- **Payslip & Provident Fund (self-service)**

## 10. Medical College Edition (Medical) ✓
- Batch/Year/Group structure (e.g., F32 (22-23), 5th Year, Group A); **Ward Groups (W-A)**
- Class types: **Lecture / Ward (Morning/Evening) / OSPE / Viva** sessions w/ **per-session Topic entry (max 100 chars)**
- Subject-wise attendance % + <75% auto-warnings (SMS/push to guardian "…absent today at General Surgery (Ward-Morning) class")
- Card→Item exam framework; OSPE/traditional practical split; TA-Sc; term results w/ merit; **Prof. Eligibility auto-determination** (failing attendances & exams w/ named items)
- Medical leave applications (Year/Group-level, instructor comments, timestamps)
- Teacher evaluation by students (below)
- Evidence: full adoption at govt medical colleges (Faridpur, Sylhet MAG Osmani, Shaheed Suhrawardy, etc.)

## 11. Teacher Evaluation by Students (শিক্ষার্থীর শিক্ষক মূল্যায়ন) ✓
- Structured questionnaire (11 **Explicit Curriculum** items + 5 **Implicit Curriculum** items), 5-point frequency scale (Never→Almost always), conditional free-text justification for low marks, general comments

## 12. Administration & System Setup ✓
- **Users & roles:** per-role accounts; **permissions matrix** (View/Add/Edit/Delete per module + granular actions: Reset Password, Send SMS (Advanced), Bulk Password Set, **Run Cron Manually**, Import Students, **Invite Institutes**, **Demo Mode**, **Inspector Mode**, Clearance Entry (Testing), New SMS Balance, New Applicants Logs, **Execute SQL**, Add Students in Bulk, Set/Delete Enrollment…) → suggests **SaaS super-admin layer**
- **Bulk password management:** set/print/SMS/delete passwords batch-wise (by class/section/type); per-user password visibility/reset
- **Committees (কমিটি):** create committees w/ named member roles (সভাপতি/মোহতামিম/Member…)
- **Guardian feedback:** received-list + initiate-list; institute comments/replies w/ actor+timestamp
- **System Setup submenu (from sidebar):** Templates, **Custom Reports**, **Custom Forms**, Important Links, Welcome Banners, **Support Tickets**, **Superadmin**, **Biddakool Bills**, Help/Tutorials
- **Academics admin menu confirms:** Notices, Events, Exams (Schedules/Admit Cards/Seat Plans/Marks/Marks Comparison/Cards-Items/Prof. Eligibility/Results), Daily Lessons, Lesson Evaluations, Monthly Report, Class Notes (+Submissions), Daily Diary, Courses, MCQ Quizzes, Class Routines, Syllabuses, Teacher Evaluations
- **HR admin menu confirms:** Students (incl. HSC Eligible), Teachers, Staffs, Online Applications, Attendance, Leave, ID Cards, Tags, Payroll, Blacksheet, Assessments, Testimonials, Transfer Certificates, Guardian Feedbacks, Teacher Work Logs, Committees, Permissions, Bulk Passwords
- **Accounts menu confirms:** Account Records, Ledger Records, Income-Expense, Financial Statements + (Donations)
- **Custom Forms** engine (form builder for institutions) ⚠︎ scope inferred

## 13. Services, Onboarding & Support (claims) ✓
- Remote installation & configuration; zero-hardware requirement claim
- **Institution-specific customization** (workflows, report cards, ID/fee designs, custom forms/reports)
- Training/onboarding ("মাত্র একদিনে সেটআপ" style claims), data migration implied
- **24/7 support**; support tickets; help/tutorial center; demo appointments (live demo scheduling)
- SMS balance top-up service; NiD/MFS integration assistance implied

## 14. Report-Card Template Gallery (Appendix evidence — configurability proof)
Verified institution-specific report systems shipped:
1. Light Fair School — multi-semester weighted transcript
2. Nibras Madrasah — madrasah transcript w/ moral/co-curricular grids + QR
3. GreenMind International — quarterly-compounded English-medium card (4 signature blocks)
4. Tamirul Millat Kamil Madrasah — coded dual-exam progress report
5. Tanzimul Ummah Alim Madrasah — ibtedaie transcript
6. Tanzimul Ummah Intl Tahfiz — UK-boundary letter-grade card + PESD checklist
7. Jamiatul Hera Al Islamia — madrasa-board Division system w/ viva rows
8. National Ideal School (EV) — dual-scale (100/50) + Discipline & Conduct columns
9. Empyrean International — 12-tier weighted GPA card
10. Faridpur High School — classic SSC-style w/ F2 fail encoding & non-GPA activities block
11. Girls' Cadet School — military cadet evaluation columns

---

## Coverage cross-check (TOC page 7 vs extraction)
| TOC Chapter | Pages read | Status |
|---|---|---|
| 1. What/Why/How | 9–10 | ✅ |
| 2. HR Management | 11–21 | ✅ (Membership ⚠︎ TOC-only) |
| 3. Academics | 22–33 | ✅ |
| 4. Fees & Accounts | 34–39 | ✅ |
| 5. Other Modules | 40–46 | ✅ (Payroll/Donation/Hostel/Library/Inventory/SMS/Hifz/Admin) |
| 6. Student/Guardian panel | 47–50 | ✅ |
| 7. Teacher panel | 51–53 | ✅ |
| 8. Medical college | 54–57 | ✅ |
| Testimonials + Appendix | 58–64 | ✅ |

**Known gaps:** No pricing table in brochure (pricing not published — "contact for package"). AI/BI analytics appear only as roadmap claims (foreword). Some Bangla reads were low-confidence (marked ⚠︎); screenshots referenced: ZKTeco devices, bKash/Rocket/Nagad/MFS gateways, reCAPTCHA.
