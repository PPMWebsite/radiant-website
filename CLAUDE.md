# Website Project Operating Rules

## Mission

Build high-quality non-ecommerce websites with:

* strong planning before implementation
* factual discipline
* reusable components
* static-friendly delivery
* page-by-page continuity across short sessions

## Scope

* Non-ecommerce only
* Allowed: brochure sites, lead-gen sites, service business sites, B2B websites, corporate sites, portfolio sites, local business sites
* Not in scope: cart, checkout, account systems, inventory logic, subscriptions, marketplace logic

## Project start modes

Every new project must start by choosing one of these:

### Mode A — Build New Website

Use when:

* the site will be created from scratch
* the current website is irrelevant, obsolete, or being ignored
* the main task is planning and building a new structure

### Mode B — Improve Existing Website

Use when:

* the project already contains an HTML/CSS/JS website
* the site should be improved, restructured, or modernized
* useful parts of the current implementation may be preserved

If the project is an existing HTML/CSS/JS website:

* audit the current structure before proposing a rebuild
* inspect current files, folders, assets, and reusable blocks
* classify existing elements into:

  * keep
  * refactor
  * replace
  * remove
* prefer editing or reorganizing existing files over unnecessary full rewrites

## Default technical preference

* Prefer static-friendly output
* Prefer plain HTML/CSS/vanilla JS for brochure and service-business websites
* Use React only if clearly justified by complexity or the user explicitly requests it
* If borrowing ideas from React-first sources such as 21st-inspired UI, adapt them into dependency-light static output unless the user wants a React build

## Operating modes

This project uses 3 working modes after startup:

### Build Mode

Used for website planning, page blueprints, and page-by-page building.

### Audit Mode

Used for reviewing or evaluating websites/pages using only the relevant lenses.

### QA / Troubleshooting Mode

Used for narrow implementation checks, debugging, and page QA.

## Core workflow

1. choose project start mode
2. intake
3. benchmark/reference extraction
4. source-of-truth consolidation
5. tier recommendation
6. sitemap and page goals
7. design system draft
8. content rules draft
9. image inventory draft
10. page blueprints
11. page-by-page implementation
12. page QA
13. site QA
14. handoff

Do not jump into coding before the plan exists unless the user explicitly requests a rough draft.

## Evaluation-first rule

Before planning, building, auditing, or troubleshooting:

1. determine website type
2. determine likely business goal
3. determine likely primary conversion goal
4. determine likely traffic sources
5. activate only relevant lenses
6. explicitly ignore irrelevant lenses

## Lens clusters

### Core lenses

* Commercial Strategy
* Brand / Positioning
* Copy / Messaging
* UX / IA
* UI / Visual Credibility
* SEO / Search Structure
* Technical Delivery
* Trust / Compliance
* Analytics / Tracking
* Industry Fit

### Conditional lenses

* Local SEO
* Paid Traffic Readiness
* Landing Page Fit
* Mobile-Specific Review
* Accessibility

## Factual discipline

* Never invent business facts
* Never invent numbers, statistics, awards, staff count, office count, certifications, years in business, or client results
* Separate:

  * confirmed facts
  * structural recommendations
  * unverified suggestions
* Use only approved source material for claims

## Tier engine

* Tier 1: 1-page landing page
* Tier 2: 2–5 pages
* Tier 3: 6–10 pages
* Tier 4: 11–20 pages

Tier 4 is the ceiling for this workflow and should resemble a robust, polished service-business website.

## Tier and page-count rules

* Determine the page count from buyer intent, content depth, commercial clarity, and SEO structure first, then assign the tier
* Do not compress content into a lower tier just to keep the site smaller
* If multiple distinct solution families, buyer personas, verticals, or proof/use-case clusters exist, pressure-test compression carefully and bias toward Tier 4 when dedicated pages materially improve clarity, trust, or search coverage

### Buyer-intent test

Before confirming page count, test each proposed page:
Can this page serve one coherent buyer persona, one coherent search intent, and one coherent primary decision?
If not, split the page.

### Standalone page test

Give a service or product its own page when one or more are true:

* it serves a distinct buyer persona
* it has distinct search intent
* it has distinct decision criteria
* it has enough content depth to avoid being thin
* it has its own pricing structure or service terms
* merging it would weaken clarity, trust, or SEO value

## SEO-first planning rule

Before any page blueprint is finalized:

* define the SEO role of the page, or explicitly state that it is not SEO-led
* define target search intent
* define whether the page is conversion-led, SEO-led, or both
* define internal linking role
* define whether local SEO matters
* avoid building pages with unclear purpose or overlapping intent

## Large-file handling rules

When working with large HTML, CSS, JS, or Markdown files:

* do not repeatedly read the file from the top without a targeted reason
* do not try to hold the whole file in working memory if the task only affects one section
* first identify the file structure, section boundaries, anchors, IDs, major comments, or repeated component blocks
* create or infer a section map before deep editing when the file is large
* read only the chunks needed for the current task
* edit only the relevant chunk(s)
* if multiple distant sections need changes, treat them as separate chunk operations
* if a file is too large or too fragile for safe repeated edits, recommend splitting it into smaller partials, sections, includes, or cleaner page-level structures
* avoid infinite rereading loops by summarizing what has already been inspected before reading more
* when resuming work on a large file, record the relevant section names or anchors in docs/findings-log.md or docs/session-handoff.md

## Project memory files

Keep these updated:

* docs/project-brief.md
* docs/website-plan.md
* docs/design-system.md
* docs/content-rules.md
* docs/source-of-truth.md
* docs/findings-log.md
* docs/page-status.md
* docs/image-inventory.md
* docs/page-blueprints/\*.md

## Current state model

Use one of:

* intake\_not\_started
* intake\_in\_progress
* benchmark\_extraction\_complete
* plan\_drafted
* plan\_approved
* design\_system\_locked
* content\_rules\_locked
* image\_inventory\_drafted
* page\_build\_in\_progress
* page\_QA\_in\_progress
* site\_QA\_in\_progress
* handoff\_ready

## Build order policy

Default order:

1. home
2. solutions/services overview
3. highest-priority dedicated solution/service pages
4. remaining priority service or category pages
5. about
6. contact
7. FAQ
8. supporting pages
9. privacy / utility pages

## Token and styling rules

* Define tokens before page styling
* Prefer CSS custom properties for static projects
* Reuse canonical components before inventing new ones
* Allow one-off exceptions only when justified and documented
* Do not introduce ad hoc visual values without updating the design system

## Mobile-first rules

* Design and implement for mobile first, then scale up to tablet and desktop
* Prioritize content clarity, CTA visibility, and easy tap targets on mobile
* Reduce layout complexity on small screens before reducing content meaning
* Prefer stacked layouts, simplified navigation, and scannable section spacing on mobile
* Ensure forms, buttons, cards, and proof sections remain usable on small screens

## Image and asset rules

* Use local project assets by default
* Do not rely on external image URLs or third-party hotlinked assets unless explicitly approved
* Prefer approved existing images first
* If extracting useful images from an existing site, save them locally before using them
* Track image decisions in docs/image-inventory.md
* If a suitable image does not exist, create a real local placeholder image in the required ratio
* Placeholder images must include descriptive text and a stable placeholder ID
* Keep filenames descriptive and stable
* Store image assets under:

  * assets/brand/logo/
  * assets/brand/favicon/
  * assets/images/existing/
  * assets/images/generated/
  * assets/images/placeholders/

## Placeholder image rules

* Use placeholder images to preserve layout when final imagery is not ready
* Placeholder filenames must use a stable naming convention
* Placeholder images should contain:

  * placeholder ID
  * page
  * section
  * short description of required imagery
  * intended ratio
* When final images are ready, update the image inventory and swap the placeholder reference cleanly

## Brand asset rules

* Store logos under assets/brand/logo/
* Store favicons under assets/brand/favicon/
* Use local brand assets only by default
* Prefer SVG logos when available
* Do not hotlink logos or favicons
* If logo assets are missing, use a text brand placeholder during development
* If favicon assets are missing, derive them from an existing logo or logo mark where possible
* Before deriving a favicon, check whether the logo is simple enough to remain legible at very small sizes
* If the full logo is too detailed, use or create a simplified icon, initials, or logo mark instead
* If no suitable favicon source exists, log favicon creation as a pending asset task rather than relying on external defaults

## 21st-inspired design adaptation rules

When using 21st-style UI references:

* treat them as design/pattern inspiration, not direct static drop-ins
* extract layout, spacing, hierarchy, component ideas, and interaction intent
* convert to semantic HTML/CSS/vanilla JS if the project is static
* remove framework-specific props, state, imports, runtime dependencies, and placeholder package references
* avoid app-like complexity on brochure/service websites
* keep responsiveness and accessibility basics

## Page completion rule

After each completed page:

1. update docs/page-status.md
2. update docs/findings-log.md if new constraints emerged
3. update docs/design-system.md if reusable UI rules were added
4. update docs/content-rules.md if messaging rules changed
5. update docs/image-inventory.md if image usage or placeholders changed
6. state the next recommended page

## Resume rule

When resuming:

* read memory files first
* identify current state
* identify last completed task
* continue from the highest-priority unfinished task
* do not reopen broad discovery unless scope changed



\## Session handoff rule

At the end of each substantial work session, docs/session-handoff.md must reflect the latest project state.



A substantial session includes:

\- planning completion

\- sitemap revision

\- image inventory update

\- page blueprint creation

\- page build completion

\- QA pass

\- any major logic change



The handoff must summarize:

\- what was completed

\- what files changed

\- what decisions were made

\- what remains next

\- what should not be re-done



This handoff is the short-form bridge between sessions. The docs files remain the long-form source of truth.

