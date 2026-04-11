# Findings Log — Radiant Engineering Website

## Purpose
Records significant findings, decisions, and constraints discovered during page-by-page audit work. Each entry references the page and session in which the finding was made.

---

## Session 19 — 2026-04-11 — Page Audit Launch

### Context established
- Audit workflow defined: 13-page sequence
- Business owner feedback received and logged (see source-of-truth.md)
- Airstone rule established: use only facts from official Airstone channels or confirmed client sources. Do not invent authorization, dealership, support, or manufacturing claims.

### New confirmed facts (found from radiantcompressor.com live site)
- **Full address confirmed:** 21 Jalan Perniagaan Setia 1/4, Taman Perniagaan Setia, 81100 Johor Bahru, Johor, Malaysia
- **Company registration confirmed:** 200801010246 (811534-V)
- Products on .com site include: Screw Air Compressors, All-in-One Compressors, Oil Free Compressors, Portable Piston Compressors, Compressor Accessories, Refrigerated Air Dryers, AtlasCopco Spare Parts, Xinlei products — these are not yet applied to site pages; note for future reference
- radiantcompressor.com.my (Google Sites) confirmed: brands serviced section exists, CTA is "Request Service / Site Visit" and "Get a Quote"

### Airstone brand status
- airstone.com.my and airstone.my are not publicly accessible (connection refused)
- No independent Airstone product specs, series names, or origin claims can be verified from official channels
- Client instruction to replace "Ceccato" with "Airstone" is treated as a confirmed project source
- CSM Series and DRB Series names retained pending client confirmation they apply to Airstone
- "Italian-engineered" and "Italy" origin tags REMOVED — those were Ceccato-specific and cannot be applied to Airstone
- Image `images/products/ceccato-compressor.jpg` is a Ceccato photo — flagged for replacement with Airstone product image

---

## Page 1 — index.html — Session 19 — 2026-04-11

### Audit source
- Rebuilt page: `index.html` (707 lines)
- Live reference: https://www.radiantcompressor.com.my (Google Sites version)

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| Hero headline and desc — strong, aligns with live site | Keep | No change |
| Hero primary CTA "WhatsApp Us Now" — correct priority per CTA hierarchy | Keep | No change |
| Hero secondary CTA was "Get a Quote" — live site uses "Request Service / Site Visit" here | Rewrite | Changed to "Request a Site Visit" → contact.html |
| Sub-CTAs missing "Get a Quote" after hero button change | Improve | Added "Get a Quote" link to sub-CTA row |
| Nav Products dropdown: "Ceccato (Italy)" → products/ceccato.html | Rewrite | Changed to "Airstone Compressors" → products/airstone.html |
| Product card 1: "Ceccato Compressors", Italy tag, "Italian-engineered" copy | Rewrite | "Airstone Compressors", Italy tag removed, desc generalized |
| Product card 1 image alt text referenced Ceccato | Rewrite | Alt text updated to Airstone; image file flagged for replacement |
| Product card 1 href: products/ceccato.html | Rewrite | Updated to products/airstone.html |
| Product card 1 button: "View Ceccato Range" | Rewrite | "View Airstone Range" |
| Footer products: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" |
| Footer products href: products/ceccato.html | Rewrite | products/airstone.html |
| CTA strip: "Get a Quote" as third action | Improve | Changed to "Request a Site Visit" |
| Services 4-card grid — accurate, no missing content | Keep | No change |
| Services section "Request a Service Visit" CTA already present | Keep | No change |
| About strip — accurate, well-written | Keep | No change |
| Why Radiant 4 cards — accurate | Keep | No change |
| Industries 4 cards — accurate | Keep | No change |

### What was NOT changed (and why)
- Hero heading and description — already strong and closely aligned with live site messaging
- CSM/DRB series names kept — client did not say to remove; flagged for confirmation
- Product image file `ceccato-compressor.jpg` kept as src — physical image replacement requires new Airstone photo from client
- Grey background sections (about-strip, industries) — image-with-overlay feedback noted but needs client-supplied images; not actioned

### Open items from this page
- Airstone product image needed to replace `images/products/ceccato-compressor.jpg`
- Confirm whether CSM/DRB series names apply to Airstone
- Grey background sections: client to supply or approve industrial background images

---

## Page 2 — products.html — Session 20 — 2026-04-11

### Audit source
- File: `products.html` (~440 lines)
- Sections: page-hero, 3-card category grid, charcoal brand feature (CSM + DRB series), teal CTA strip, header/footer

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| `<meta name="description">` — "Ceccato industrial air compressors" | Rewrite | "Airstone industrial air compressors" |
| `<meta og:description>` — "Ceccato screw air compressors (fixed-speed & VSD)" | Rewrite | "Airstone screw air compressors (fixed-speed & VSD)" |
| JSON-LD product name: "Ceccato Industrial Air Compressors" | Rewrite | "Airstone Industrial Air Compressors" |
| JSON-LD description: "Italian-engineered screw air compressors..." | Rewrite | Removed Italy/Italian claims |
| JSON-LD brand: `"name": "Ceccato"` | Rewrite | `"name": "Airstone"` |
| JSON-LD URL: products/ceccato.html | Rewrite | products/airstone.html |
| Nav dropdown: "Ceccato (Italy)" → products/ceccato.html | Rewrite | "Airstone Compressors" → products/airstone.html |
| Page hero desc: "We carry Ceccato — Italian-engineered screw compressors" | Rewrite | "We carry Airstone rotary screw compressors"; Italy/Italian removed |
| Card 1 title: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" |
| Card 1 desc: "Italian-engineered rotary screw air compressors..." | Rewrite | Neutral desc; Italy/Italian removed |
| Card 1 link: href=products/ceccato.html / "View Ceccato Range" | Rewrite | products/airstone.html / "View Airstone Range" |
| Brand section H2: "Ceccato — Built in Italy, Trusted by Industry" | Rewrite | "Airstone Compressors — Built for Industrial Reliability" |
| Brand section lead: "manufactured in Italy to exacting industrial standards" | Rewrite | Removed all Italy/manufacturing origin claims |
| Brand section CTA: "Explore the Full Ceccato Range" → products/ceccato.html | Rewrite | "Explore the Full Airstone Range" → products/airstone.html |
| CTA strip secondary: "Send a Detailed Enquiry" | Improve | Changed to "Request a Site Visit" → contact.html |
| Footer Products: "Ceccato Compressors (Italy)" → products/ceccato.html | Rewrite | "Airstone Compressors" → products/airstone.html |
| HTML comment "Card 1: Ceccato Compressors" | Rewrite | "Card 1: Airstone Compressors" |
| CSM Series card — content accurate, no Ceccato/Italy references in the card itself | Keep | No change (series name pending client confirmation — standing rule) |
| DRB VSD Series card — content accurate, no Ceccato/Italy references in the card itself | Keep | No change (series name pending client confirmation — standing rule) |
| Card 2 (Accessories), Card 3 (Spare Parts) — accurate, no brand issues | Keep | No change |
| Footer services, contact, copyright — accurate | Keep | No change |

### What was NOT changed (and why)
- CSM Series and DRB Series names kept in brand feature section — pending client confirmation they apply to Airstone (standing rule from Session 19)
- Product image `ceccato-compressor.jpg` still used as src in Card 1 image — file replacement requires Airstone photo from client
- Grey background sections — no client-supplied images available; flagged only

### Open items from this page
- Airstone product image needed to replace `images/products/ceccato-compressor.jpg` (Card 1 on this page)
- Confirm whether CSM/DRB series names apply to Airstone (impacts brand feature section copy)
- Grey background sections: pending client image supply

---

## Page 3 — products/airstone.html (was ceccato.html) — Session 22 — 2026-04-11

### Audit source
- Original file: `products/ceccato.html` (~470 lines)
- Action: File deleted; new `products/airstone.html` created with all Ceccato → Airstone rewrites

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| Title: "Ceccato Air Compressors in Johor..." | Rewrite | "Airstone Air Compressors in Johor..." |
| Meta desc: "Ceccato rotary screw", "Italian-engineered" | Rewrite | "Airstone rotary screw"; origin claims removed |
| Canonical + OG URL: products/ceccato.html | Rewrite | products/airstone.html |
| OG title + desc: Ceccato/Italian-engineered | Rewrite | Airstone; origin claims removed |
| JSON-LD name: "Ceccato Industrial Air Compressors" | Rewrite | "Airstone Industrial Air Compressors" |
| JSON-LD brand: "Ceccato" | Rewrite | "Airstone" |
| JSON-LD desc: "Italian-engineered rotary screw..." | Rewrite | Removed "Italian-engineered" |
| JSON-LD url: products/ceccato.html | Rewrite | products/airstone.html |
| Header WA btn message: "enquire about Ceccato compressors" | Rewrite | "enquire about Airstone compressors" |
| Nav dropdown: "Ceccato (Italy)" → ceccato.html | Rewrite | "Airstone Compressors" → airstone.html |
| Breadcrumb: "Ceccato (Italy)" | Rewrite | "Airstone Compressors" |
| Hero eyebrow: "Italian Industrial Engineering" | Rewrite | "Rotary Screw Compressors" (no origin claim) |
| H1: "Ceccato Air Compressors" | Rewrite | "Airstone Air Compressors" |
| Hero desc: Ceccato/Italy origin claims | Rewrite | Neutral; product quality + local support angle kept |
| Brand intro section eyebrow: "About the Brand" | Rewrite | "About the Range" |
| Brand intro H2: "Built in Italy. Trusted by Industry." | Rewrite | "Built for Industrial Reliability." |
| Brand intro lead: "Ceccato has been manufacturing...in Italy for decades" | Rewrite | "Airstone rotary screw compressors are used in factories..." |
| Brand intro body: "supplier for Ceccato" | Rewrite | "supplies Airstone rotary screw compressors" |
| Stat row: "Italian" / "Engineering & Manufacturing" | Rewrite | "Rotary" / "Screw Technology" |
| CSM section desc: "The Ceccato CSM is..." | Rewrite | "The CSM Series is..." |
| DRB section desc: "The Ceccato DRB VSD uses..." | Rewrite | "The DRB VSD Series uses..." |
| Why section eyebrow: "Why Ceccato with Radiant" | Rewrite | "Why Airstone with Radiant" |
| Card 1 H3: "Italian Industrial Quality" | Rewrite | "Industrial-Grade Equipment" |
| Card 1 desc: "designed and built in Italy to European industrial standards" | Rewrite | "built to industrial standards" — no origin claim |
| CTA H2: "Enquire About Ceccato Compressors" | Rewrite | "Enquire About Airstone Compressors" |
| CTA WA message: "a Ceccato compressor for my facility" | Rewrite | "an Airstone compressor for my facility" |
| CTA secondary btn: "Request a Quote" | Rewrite | "Request a Site Visit" (site-wide rule) |
| Footer Products: "Ceccato Compressors (Italy)" → products/ceccato.html | Rewrite | "Airstone Compressors" → products/airstone.html |
| Floating WA btn message: "enquire about Ceccato compressors" | Rewrite | "enquire about Airstone compressors" |
| products/ceccato.html file | Remove | File deleted — replaced entirely by products/airstone.html |

### What was NOT changed (and why)
- CSM Series and DRB Series names — pending client confirmation they apply to Airstone (standing rule)
- Grey background sections — awaiting client-supplied images

### Open items from this page
- Airstone product photo to replace `images/products/ceccato-compressor.jpg`
- Confirm CSM/DRB series names apply to Airstone
- Grey background: awaiting client images

---

## Page 4 — products/compressor-accessories.html — Session 22 — 2026-04-11

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| Nav dropdown: "Ceccato (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| CTA strip: "Request a Quote" | Rewrite | "Request a Site Visit" → contact.html |
| Footer Products: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| Body content — no other Ceccato/Italy references found | Keep | No change |

---

## Page 5 — products/spare-parts.html — Session 22 — 2026-04-11

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| Nav dropdown: "Ceccato (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| Body: "Ceccato — our primary supply brand" | Rewrite | "Airstone — our primary supply brand" |
| CTA strip: "Send a Detailed Enquiry" | Rewrite | "Request a Site Visit" → contact.html |
| Footer Products: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |

---

## Page 6 — services.html — Session 22 — 2026-04-11

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| Nav dropdown: "Ceccato (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| CTA strip: "Get a Quote" | Rewrite | "Request a Site Visit" → contact.html |
| Footer Products: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| Body content — no Ceccato/Italy references found | Keep | No change |

---

## Page 7 — services/compressor-service.html — Sessions 22 + 23 — 2026-04-11

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| Nav dropdown: "Ceccato (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| CTA strip: "All Services" → services.html | Rewrite | "Request a Site Visit" → contact.html |
| Footer Products: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| Intro paragraph: "We work on Ceccato and a range of other major compressor brands" | Rewrite | "We work on Airstone and a range of other major compressor brands" (Session 23 catch) |
| Multi-brand proof card: "We service Ceccato and a range of other major brands" | Rewrite | "We service Airstone and a range of other major brands" (Session 23 catch) |

---

## Page 8 — services/preventive-maintenance.html — Session 22 — 2026-04-11

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| Nav dropdown: "Ceccato (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| Body: "Ceccato, Atlas Copco..." brand list | Rewrite | "Airstone, Atlas Copco..." |
| CTA strip: "All Services" → services.html | Rewrite | "Request a Site Visit" → contact.html |
| Footer Products: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |

---

## Page 9 — services/overhaul-reconditioning.html — Session 22 — 2026-04-11

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| Nav dropdown: "Ceccato (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| Body: "We overhaul Ceccato..." brand list | Rewrite | "We overhaul Airstone..." |
| CTA strip: "All Services" → services.html | Rewrite | "Request a Site Visit" → contact.html |
| Footer Products: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |

### Note
`images/service-overhaul-technicians.png` exists locally but is not yet wired into this page. Wire when doing the next content/image pass.

---

## Page 10 — services/spare-parts.html — Session 22 — 2026-04-11

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| Nav dropdown: "Ceccato (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| Body: "fast-source for Ceccato" | Rewrite | "fast-source for Airstone" |
| CTA strip: "All Services" → services.html | Rewrite | "Request a Site Visit" → contact.html |
| Footer Products: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |

---

## Page 11 — about.html — Session 23 — 2026-04-11

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| JSON-LD description: Ceccato/Italian claims | Rewrite | Removed |
| Intro body paragraph: "Ceccato compressors from Italy" | Rewrite | "Airstone rotary screw compressors — built for reliability in industrial environments" |
| Brands section desc: "Ceccato air compressors from Italy" | Rewrite | "Airstone rotary screw compressors" |
| Brand card origin badge: "Made in Italy" | Rewrite | "Rotary Screw Technology" |
| Brand card H3: "Ceccato" | Rewrite | "Airstone" |
| Brand card desc: full Ceccato/Italian history copy | Rewrite | Neutral Airstone desc; no origin claims |
| Brand card CTA: "View Ceccato Range" → products/ceccato.html | Rewrite | "View Airstone Range" → products/airstone.html |
| Image alt text: included "Ceccato" in brands-serviced alt | Rewrite | Removed "Ceccato" from alt text |
| CTA strip: "Get a Quote" | Rewrite | "Request a Site Visit" |
| Footer Products: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |

---

## Page 12 — contact.html — Session 23 — 2026-04-11

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| Nav dropdown: "Ceccato (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| Footer Products: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| Body content, CTAs — no issues found | Keep | No change |

---

## Page 13 — projects.html — Session 23 — 2026-04-11

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| Nav dropdown: "Ceccato (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| Proof stat: "We service and supply parts for Ceccato" | Rewrite | "We service and supply parts for Airstone" |
| CTA strip: "Get a Quote" | Rewrite | "Request a Site Visit" |
| Footer Products: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |

---

## 404.html — Session 23 — 2026-04-11

### Findings

| Finding | Classification | Action taken |
|---|---|---|
| Nav dropdown: "Ceccato (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |
| Footer Products: "Ceccato Compressors (Italy)" | Rewrite | "Airstone Compressors" → products/airstone.html |

---

## Session 23 additional — index.html + css/styles.css — 2026-04-11

Two items missed in Session 19 audit:

| Finding | Classification | Action taken |
|---|---|---|
| index.html product card CSS class: `product-card-visual--ceccato` | Rewrite | Renamed to `product-card-visual--airstone` (HTML + CSS) |
| index.html hero sub-CTA: "Get a Quote" | Rewrite | "Request a Site Visit" |

---

## Session 24 — QA verification — 2026-04-11

- Site-wide grep for `Ceccato|ceccato\.html` across all `**/*.html` — **zero matches**
- `about.html` loaded in preview server — snapshot confirmed "Airstone rotary screw compressors" present
- `preview_screenshot` timed out; use `preview_snapshot` for content QA on this project

---
