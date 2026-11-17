# {{PROJECT}} — Documentation Index

*The map of every document in this repository: what each folder covers, the reading orders, and the conventions all documents follow. Start here.*

**Source of truth:** [TODO — link the main PRD]. If any document disagrees with it, the PRD wins; fixes go into the disagreeing document, and genuine decisions go into a new [ADR](01-architecture/adr/README.md).

## Document Map

| Section | Path | Covers | Status |
|---|---|---|---|
| 00-products | [00-products/](00-products/README.md) | Product documentation, one folder per module | [TODO] |
| 01-architecture | [01-architecture/](01-architecture/README.md) | System architecture + ADRs | placeholder |
| 02-backend | [02-backend/](02-backend/README.md) | Service-level design | placeholder |
| 03-database | [03-database/](03-database/README.md) | Schema, ERDs, migrations | placeholder |
| 04-frontend | [04-frontend/](04-frontend/README.md) | UI architecture, design system | placeholder |
| 05-quality | [05-quality/](05-quality/README.md) | Test strategy, QA plans, UAT | placeholder |
| 06-devops | [06-devops/](06-devops/README.md) | CI/CD, environments, releases | placeholder |
| research | [research/](research/README.md) | Benchmark studies, source extractions, working evidence | placeholder |
| agents | [agents/](agents/README.md) | Rules and prompts for AI coding agents | placeholder |

## Conventions

- Every document opens with a **Document Control** table, a **Revision History** table, and closes with an **Assumptions** section.
- Documents link to each other with **relative Markdown links only** — the link check must report 0 broken links. External URLs appear only in References sections.
- Superseded documents are frozen into `00-products/archive-files/` and never edited again.
- Status markers: `[Proposed]` needs confirmation, `[Verify]` needs validation against official sources, `[Pending OQ-nn]` waits on an open question.
- Placeholders stay honest: a folder with no content says `Status: placeholder` in its README.
- Product releases (`R1`–`R3`) and delivery milestones (`M0`–`M6`) are different things and are never mixed.

Status: initialized {{DATE}} — placeholders pending.
