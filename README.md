# Radiant Engineering Website Build Repo

This repository is the working build environment for the planned rebuild of the Radiant Engineering website.

## Purpose

This repo exists to help Claude build the website using:

- factual business information from the approved source websites
- product/category structure from the approved product catalog
- the existing live-site brand feel
- better decisions for layout, conversion, UX, and SEO

This is not meant to be a rigid template repo.  
It is a project-specific repo for Radiant Engineering.

---

## Source of Truth

### Main factual business source
- https://www.radiantcompressor.com.my

### Product/category structure source
- https://www.radiantcompressor.com/category/

Claude should keep factual claims aligned with those sources unless explicitly told otherwise.

---

## Main Build Goal

Build a more credible, conversion-focused, SEO-appropriate website for Radiant Engineering that:

- fits the industrial B2B market
- improves enquiry flow
- gives stronger visibility to product categories
- stays consistent with the live brand identity
- uses better wording, structure, hierarchy, and presentation than the current live site

---

## Primary Commercial Priorities

1. Drive WhatsApp enquiries
2. Support Call / Quote / Service Request actions
3. Improve visibility of product categories
4. Support SEO for service and product-related search intent

---

## Context Folder

The `context/` folder contains the core instruction files Claude must read before building or editing pages.

### Files inside `context/`

#### `business-summary.md`
Defines the business, audience, services, commercial priorities, CTAs, and tone.

#### `content-source-rules.md`
Defines what content sources are approved and what Claude must not invent.

#### `sitemap.md`
Defines the current intended page structure for the rebuilt site.

#### `design-system.md`
Defines brand/design intent and tells Claude to infer the best-fit design direction based on Radiant’s live-site brand feel, industry, and commercial goals.

#### `product-architecture.md`
Defines how products and categories should be treated in the rebuilt site.

#### `builder-brief.md`
Defines the expert roles Claude should assume and what it is allowed to decide when building.

---

## How Claude Should Be Used

Claude should behave like a:

- professional website designer
- conversion-focused UX strategist
- industrial B2B website specialist
- SEO-conscious content architect
- graphic designer

Claude should use the context files as constraints, then decide the best layout, section hierarchy, CTA placement, content emphasis, and presentation for the business.

Claude should not be micromanaged into a rigid generic template unless explicitly instructed.

---

## Non-Negotiable Rules

- Do not invent false claims
- Do not invent certifications
- Do not invent product specifications
- Do not invent fake case studies, numbers, or customer results
- Keep the build aligned with Radiant’s real business and approved source websites

---

## Build Direction

The rebuilt site should be:

- more credible
- more visually appealing
- more commercially useful
- more conversion-focused
- more SEO-capable

than the current live site, while still fitting the industrial market and the existing brand direction.

---

## Workflow

Typical workflow:

1. Open this repo locally in Claude Code
2. Ask Claude to read the `context/` folder first
3. Ask Claude to propose structure before writing code
4. Review the plan
5. Then ask Claude to build page-by-page

Recommended approach:
- plan first
- build second
- refine third

---

## Notes

This repo is intended to support a GitHub + Claude Code + Cloudflare Pages workflow.

The repo should remain clean, factual, and easy for Claude to understand.
