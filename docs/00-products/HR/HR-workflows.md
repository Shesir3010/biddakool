# HR Module — Workflows

## Document Control

| Field | Details |
|---|---|
| Module | HR |
| Product | Biddakool |
| Document Type | Workflows |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | [`HR-PRD.md`](HR-PRD.md), [`HR-features.md`](HR-features.md), [`HR-business-rules.md`](HR-business-rules.md), [`HR-user-stories.md`](HR-user-stories.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Initial draft from template. |

---

# 1. Document Information

## 1.1 Purpose

This document describes how work is performed in the HR module: how each task starts, which phases it passes through, what decisions are made at each phase, what the system produces, and what the final outcome is.

It translates the Feature Catalog and Business Rules into ordered business processes. **It does not define new scope, new rules, or new behavior.**

**Important:** Where this document and the Business Rules document conflict, the Business Rules document is authoritative. Where priority, release, or approval status conflicts, the Feature Catalog is authoritative. A story's or workflow's priority never promotes a feature.

## 1.2 Scope

- All workflows supported by [`HR-features.md`](HR-features.md).
- Workflows that are `[Proposed]`, Should Have, or Future are included and clearly marked.

## 1.3 Terminology and Workflow Elements

| Element | Meaning |
|---|---|
| Workflow | An end-to-end business process, identified as `WF-HR-<nnn>`. |
| Phase | A major stage of a workflow. |
| Task | An individual action performed inside a phase, by a person or the system. |
| Milestone | A point of verifiable completion inside a workflow. |
| Decision Point | A choice that determines which path the workflow follows. Numbered `D1, D2, …` inside each workflow. |
| Expected Result | What the system must produce at the end of a phase. |
| Exception Path | What happens when a task or validation fails. |
| Completion Summary | The final outcome of the workflow. |

### Status Labels Used in This Document

| Label | Meaning |
|---|---|
| `[Proposed]` | The related requirement is suggested but not approved. |
| `[Pending]` | The behavior depends on an unresolved product decision. |
| `[Verify]` | The behavior requires validation against official sources. |
| `[Conditional]` | The workflow applies only if the related feature is approved for R1. |

### Depth Levels

| Depth | Content |
|---|---|
| Full | Complete A–E structure with a Mermaid diagram. Used for the main transaction lifecycles. |
| Medium | Complete A–E structure with compact phases. Used for configuration and support workflows. |
| Light | A–E structure with a summarized phase list. Used for view, tracking, and cross-cutting workflows. |

# 2. Workflow Overview

A workflow's priority and release never promote a feature. Priority, release, and approval status remain governed by [`HR-features.md`](HR-features.md).

| ID | Workflow | Group | Depth | Status |
|---|---|---|---|---|
| WF-HR-001 | [TODO] | [TODO] | [TODO] | [TODO] |

# 3. Workflows

[TODO — one section per workflow from §2. Full-depth workflows include a Mermaid diagram; every workflow states phases, tasks, decision points, expected results, and exception paths.]

# 4. Assumptions

- [TODO]

