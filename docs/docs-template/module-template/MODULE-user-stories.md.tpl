# {{MODULE}} Module — User Stories

## Document Control

| Field | Details |
|---|---|
| Module | {{MODULE}} |
| Product | {{PRODUCT}} |
| Document Type | User Stories and Scenarios |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | {{DATE}} |
| Related Documents | [`{{MODULE}}-PRD.md`]({{MODULE}}-PRD.md), [`{{MODULE}}-features.md`]({{MODULE}}-features.md), [`{{MODULE}}-business-rules.md`]({{MODULE}}-business-rules.md), [`{{MODULE}}-workflows.md`]({{MODULE}}-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | {{DATE}} | Initial draft from template. |

---

# 1. Purpose

Realistic business scenarios that exercise the {{MODULE}} module, for product review and QA derivation. Stories describe situations; they never define new features or rules, and a story's priority never promotes the feature it references.

# 2. Story Template

Story ID: `{{PREFIX}}-US-<nnn>`. Every story:

1. Introduces a **fictional character** (name, business type, user role).
2. Explains the **business situation or problem**.
3. States what the user **wants to accomplish**.
4. Describes the user's **actions** step by step.
5. Describes the expected **system response**.
6. Explains the **domain logic and expected impact** (e.g. the accounting impact for a finance module).
7. Covers **alternative scenarios** and **corner cases**.
8. Defines **expected results and error handling**.
9. **References** related feature IDs (`{{PREFIX}}-*`) and business rules (`BR-*`).

# 3. Stories

[TODO — grouped by persona or by functional area.]

# 4. Traceability Matrix

[TODO — table: story → feature IDs → rule IDs. Every feature referenced here must exist in the Features document.]

# 5. Known Source Conflicts

[TODO — where benchmark or reference sources disagreed, and the chosen resolution.]

## Assumptions

- [TODO]
