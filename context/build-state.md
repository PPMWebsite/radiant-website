# Build State — Radiant Engineering Website
## ⚠️ READ THIS FIRST (for any new session or chat)

This file is the **single source of truth** for build continuity.
Read this file + `design-system.md` before touching any code.
This file is updated at the end of every working session.

---

## Project Summary (quick briefing)

**Client:** Radiant Engineering & Trading Sdn. Bhd.
**Site:** https://www.radiantcompressor.com.my
**What we're building:** A rebuilt static website — more credible, conversion-focused, and product-visible than the current live site.
**Stack:** Pure static HTML + CSS. No framework, no build step. One CSS file: `css/styles.css`.
**CTA priority:** WhatsApp first → Call → Quote/Contact
**WhatsApp:** https://wa.me/60138083048
**Phone:** +60138083048

---

## Current Build Status

### Completed Pages
| Page        | File          | Status | Notes                                                         |
|-------------|---------------|--------|---------------------------------------------------------------|
| Homepage    | index.html    | ✅ Done | 9 sections + secondary namecard CTA in CTA strip. Uiverse.io CSS enhancements applied. |
| About       | about.html    | ✅ Done | 7 sections: page-hero, intro+stat panel, values, services overview, brands, industries, CTA |
| Services    | services.html | ✅ Done | 5 sections: page-hero, services grid (4 cards), why radiant (4 cards), how it works (3 steps), CTA |
| Contact     | contact.html  | ✅ Done | 4 sections: page-hero, namecard CTA (primary), contact methods (3 cards), CTA strip |
| Products Landing | products.html | ✅ Done | 4 sections: page-hero, 3-card category grid (Ceccato/Accessories/Parts), charcoal brand feature (CSM + DRB series cards), teal CTA |
| Ceccato | products/ceccato.html | ✅ Done | 6 sections: hero (3-level breadcrumb), brand intro (2-col grid), CSM features (8 items, gray-50), DRB VSD features (8 items, white), why us (3 cards, charcoal), CTA |
| Accessories | products/compressor-accessories.html | ✅ Done | Same structure. 8 accessory types: dryers, filters, separators, regulators, receivers, solenoids, drains, piping |
| Spare Parts (products) | products/spare-parts.html | ✅ Done | Same structure. 8 parts types: separators, filters, oil, belts, bearings, valves, thermostats, sensors |
| Compressor Service | services/compressor-service.html | ✅ Done | 4 sections: page-hero (2-level breadcrumb), what the service is (2-col intro), what's included (8-item feature list), why Radiant (3 cards, charcoal bg), CTA strip |
| PMC | services/preventive-maintenance.html | ✅ Done | Same 4-section structure. PMC-specific content: scheduled intervals, consumable replacement, audit documentation angle. |
| Overhaul | services/overhaul-reconditioning.html | ✅ Done | Same 4-section structure. Rebuild/cost-vs-replacement angle, assess-first-quote-second messaging. |
| Spare Parts | services/spare-parts.html | ✅ Done | Same 4-section structure. Supply angle: local stock, technical advice, fitment available. |
| Projects | projects.html | ✅ Done | 4 sections: charcoal page-hero (2-level breadcrumb), white 6-card project gallery (photo cards with zoom hover + tag + caption + SVG arrow link), gray-50 social proof (4 cards: 24/7/multi-brand/documented/local), teal CTA strip with namecard hint. Nav Projects is-active. |
| 404 | 404.html | ✅ Done | Minimal: charcoal page-hero + white body (large teal "404" number, heading, back-to-homepage button). noindex robots meta. No nav active state. |

### Completed Assets
| Asset            | File                  | Status  | Notes                                      |
|------------------|-----------------------|---------|--------------------------------------------|
| Main CSS         | css/styles.css        | ✅ Done | All component tokens + Uiverse enhancements |
| About CSS        | css/styles.css §20–25 | ✅ Done | page-hero, breadcrumb, about-intro, brands, Uiverse §25 |
| Services CSS     | css/styles.css §26    | ✅ Done | svc-page-grid, svc-page-card (icon flip), process-step (lift + num scale), responsive |
| Contact CSS      | css/styles.css §27    | ✅ Done | .namecard-section, .namecard-inner, .namecard-icons, .contact-methods-grid, .cta-namecard |
| Service Sub-page CSS | css/styles.css §28 | ✅ Done | .svc-intro-grid, .svc-detail-features (translateX), .svc-reasons-section (charcoal), .svc-reason-card (icon flip), responsive |
| Products Page CSS | css/styles.css §29 | ✅ Done | .prod-cat-grid, .prod-cat-card (icon flip + translateY), .prod-cat-img placeholder, .prod-brand-section (charcoal), .prod-series-card (hover lift), responsive |
| Projects Page CSS | css/styles.css §30 | ✅ Done | .proj-grid (3-col), .proj-card (translateY-4px lift), .proj-card-img (zoom), .proj-card-img-placeholder (teal gradient), .proj-card-tag (teal-pale → teal on hover), .proj-card-link (SVG arrow slide), .proj-proof-grid (4-col), .proj-proof-card (icon flip + lift), .proj-proof-stat/label/desc, .proj-coming-soon (dashed-border centred placeholder), responsive |
| Launch config    | .claude/launch.json   | ✅ Done | Static server on port 8080 (python -m http.server) |

### Pages Still To Build (in priority order)
*(All 13 pages complete + 404.html — site is fully built)*

---

## Session Log

### Session 16 (2026-03-30)
**Task 1 — Path audit:** Full audit of all 13 HTML files. No issues found — no localhost/127.0.0.1/absolute paths anywhere. All root pages use `css/styles.css`, all sub-pages use `../css/styles.css`. All JS is inline (no external src). CSS has one URL: `url('../images/hero-bg.jpg')` — relative, correct. The colleague's unstyled-HTML issue was caused by sharing only `index.html` without the `css/` folder — expected behaviour, not a bug.

**Task 2 — GitHub Pages deployment readiness:** All asset paths confirmed relative. Canonical URLs all point to `https://www.radiantcompressor.com.my/` (correct, left as-is). Created `404.html` — minimal page with charcoal page-hero, white body with large teal "404" number and back-to-homepage button, full header/footer, `noindex` robots meta.

**Task 3 — Images:** Client supplied images in `images/All Old Website Pictures/`. Reviewed all 33 files. Copied 16 to final destinations. Key placements: `images/hero-bg.jpg` (technician at control panel — resolves the CSS background that was already wired); three product card images for `index.html` + `products.html` (ceccato-compressor.jpg, compressor-accessories.jpg, spare-parts.webp); six project photos to `images/projects/` — "coming soon" placeholder in `projects.html` replaced with a real 6-card `.proj-grid`; brand logos grid `images/brands-serviced.png` added to `about.html` brands section inside a new `.brand-logos-panel` (white rounded panel on charcoal bg, CSS added to §25). Five additional images copied but not yet wired in (team photo, PMC inspection, overhaul bearing, overhaul technicians, warehouse stock) — available for service sub-pages when needed.

**Task 4 — Live site content audit & implementation (Sessions 16–17):**
- FAQ CSS §31 added to `css/styles.css`: `.faq-section`, `.faq-list`, `.faq-item` (`<details>`), `.faq-question` (`<summary>` with rotating SVG chevron), `.faq-answer` (teal left-border). Native HTML accordion — no JS.
- FAQs added to all 4 service sub-pages immediately before CTA strip: `services/compressor-service.html` (5 Qs), `services/preventive-maintenance.html` (5 Qs), `services/overhaul-reconditioning.html` (5 Qs), `services/spare-parts.html` (5 Qs). Content verified from live site via Chrome MCP JS extraction.
- Email address confirmed from live site: `radiant-eng@hotmail.com`. Added as 4th contact method card in `contact.html` and added to all 14 page footers (footer contact list).
- Operating hours confirmed from live site: Mon–Fri 9am–5pm, Sat 9am–1:30pm, Sun Closed. Added as 5th contact method card in `contact.html`. JSON-LD `hoursAvailable` in contact.html corrected from `Mo-Su 00:00-23:59` to actual hours.
- `about.html` intro paragraph updated: added "established in 2008" — founding year confirmed from live site.
- Contact info LOCKED section updated (see below).

### Session 17 (2026-03-31)
**Layout audit — 10 undefined CSS tokens fixed (critical bug):**
The `:root` block was missing 10 custom property definitions that were referenced throughout the component CSS. This caused `border-radius: 0`, `padding: 0`, and `box-shadow: none` on every card, icon, and component that used these tokens. Root cause: two naming conventions existed side-by-side (`--r-*` and `--radius-*`; `--sh-*` and `--shadow-*`) but only one set was defined.

**Tokens added to `:root`:**
- `--radius-sm/md/lg/xl` → alias to `var(--r-sm/md/lg/xl)` (4px / 8px / 12px / 16px)
- `--shadow-card` → alias to `var(--sh-card)`
- `--shadow-card-hover` → alias to `var(--sh-card-up)`
- `--sp-7: 1.75rem` (28px — fills gap between sp-6 and sp-8 in the spacing scale)
- `--gray-600: #505A63` (fills gap in gray scale)
- `--fs-base: 1rem` / `--fs-xl: 1.25rem` (typography tokens used in dead CSS)

**`.why-card` flex layout added:**
- `display: flex; flex-direction: column` added to `.why-card`
- `flex: 1` added to `.why-card-desc` — description fills remaining card height
- `min-height: 2.75rem; display: flex; align-items: flex-start` added to `.why-card-title` — reserves 2-line height so descriptions align consistently across cards regardless of title length

**Content fix:** "Multi-Brand Service Capability" → "Multi-Brand Capability" in `services.html` — aligns with homepage wording and avoids 2-line title wrap at desktop width.

**Verified in preview:** `svc-reason-card` now renders `border-radius: 12px`, `padding: 32px 28px`. `why-card` shows proper rounded corners, internal padding, and consistent description alignment on services.html and about.html.

---

## Next Session Tasks (Session 16)

### 1. Fix Portability / Path Issue
**Problem:** When a single `index.html` is sent to someone and they open it from their Downloads folder (`file:///C:/Users/.../Downloads/index.html`), CSS and JS don't load because `css/styles.css` and `js/` are relative sibling paths that don't exist in their context.
**Goal:** The site must work when the full folder is served via GitHub Pages (relative paths are fine there), AND be clear that sharing just the `.html` file without the `css/` and `js/` folders won't work. Audit whether any absolute `localhost` or `127.0.0.1` references exist anywhere. Verify all `<link>`, `<script>`, and asset `href`/`src` attributes use correct relative paths for the GitHub Pages folder structure.

### 2. GitHub Pages Deployment Readiness
**Goal:** The site should deploy and run correctly on GitHub Pages out of the box.
- Confirm no absolute paths to `localhost` anywhere
- Confirm `index.html` is in the repo root (it is)
- Confirm sub-pages use correct relative paths for CSS (`../css/styles.css`) and assets
- Check `<link rel="canonical">` URLs — currently use `https://www.radiantcompressor.com.my/` which is correct
- Optionally add a `404.html` fallback

### 3. Images Integration
**Client will supply images** from both radiantcompressor.com and radiantcompressor.com.my websites.
- Place them in `images/` (general) or `images/products/` or `images/projects/` as appropriate
- Replace placeholder `<div class="proj-card-img-placeholder">` blocks with real `<img>` tags
- Replace placeholder product image references
- Edit/crop images to suit the existing card aspect ratios (16/10 for project cards, etc.)
- Do not invent alt text — describe what is actually in the image

### 4. Content Depth Audit vs Live Site
**Goal:** Fetch and read the full live site at https://www.radiantcompressor.com.my (all pages, not just homepage) and identify content that was not carried over.
- **FAQs:** The live site has FAQs on individual service/product pages — these were not brought over. Evaluate each FAQ set: if it adds genuine value and can be styled well, add it to the relevant page. Use an `<details>`/`<summary>` accordion or a clean FAQ grid.
- **Missing content sections:** Any service descriptions, specifications, use cases, or testimonials present on the live site that we haven't used yet.
- **Verifiable facts only:** Do not add anything that cannot be confirmed from the live site. No invented specs, no invented locations, no invented client names.

---

## Locked Design Decisions

### Brand Colours (LOCKED — verified from live site)
- Primary dark: `#1F2933` (charcoal) — nav, footer, dark sections
- Primary accent: `#27B7C5` (teal) — CTAs, icons, links, highlights
- **DO NOT use orange or navy blue** — those are NOT Radiant's colours

### Fonts (LOCKED — verified from live site)
- Headings: **Montserrat** (600, 700, 800)
- Body: **Roboto** (400, 500, 600)
- Google Fonts CDN — already in every page `<head>`

### Contact Info (LOCKED — verified)
- WhatsApp / Phone: `+60138083048`
- wa.me: `https://wa.me/60138083048`
- Email: `radiant-eng@hotmail.com` ✅ verified from live site
- Operating Hours: Mon–Fri 9:00am–5:00pm, Sat 9:00am–1:30pm, Sun Closed ✅ verified
- Founded: 2008 (Radiant Engineering & Trading Sdn. Bhd.) ✅ verified; originally Pacific M&E Engineering & Trading (est. 2004)
- Address: NOT YET VERIFIED — use `Southern Johor, Malaysia`

### Architecture (LOCKED)
- Static HTML/CSS only — no framework, no build step
- All pages link to `css/styles.css` with relative paths
- Images: `images/` and `images/products/` (placeholders until client provides assets)
- Page template: copy header/footer/nav block from `index.html` or `about.html`
- Nav active state: set `class="nav-link is-active"` + `aria-current="page"` on current page's nav link

### CSS Token System (LOCKED)
All tokens are in the `:root` block at the top of `css/styles.css`. Never hardcode colours or spacing. Use the CSS custom properties defined there. See `design-system.md` for full token reference.

### Section Background Alternation Pattern
For inner pages, follow the established alternation rhythm:
- Page hero → charcoal
- Section 1 → white
- Section 2 → gray-50 (`--surface`)
- Section 3 → white
- Dark feature section → charcoal
- CTA strip → teal
- Footer → charcoal

---

## Uiverse.io CSS Enhancements Applied

The following Uiverse.io-inspired CSS patterns were applied to `css/styles.css`. Reference these when building new pages so the enhancement style stays consistent.

| Component | Enhancement | CSS Location |
|-----------|------------|--------------|
| `.btn-primary` | Shimmer sweep on hover (`::after` pseudo) | §5 Buttons |
| `.btn-cta-primary` | Same shimmer (teal-tinted for white button) | §5 Buttons |
| `.btn-whatsapp` | Same shimmer sweep | §5 Buttons |
| `.service-card` icon | Flips from teal-pale → teal bg + white icon on card hover | §10 Services |
| `.why-card` icon | Flips from charcoal → teal bg + white icon on card hover | §13 Why |
| `.product-card-img` | Scale(1.06) image zoom on card hover | §12 Products |
| `.about-feature` | Left border teal accent reveals + translateX(3px) on hover | §11 About |
| `.trust-item` | translateY(-2px) lift on hover | §8 Trust Bar |
| `.whatsapp-float` | Pulse ring animation (`::before`, `@keyframes wa-pulse`) | §17 Float |
| `.page-hero` | Dot-grid `::before` texture + teal gradient `::after` | §20 Page Hero |
| `.about-stat-item` | Left border teal reveal + icon flip to solid teal on hover | §25 About Uiverse |
| `.about-stat-wa` | Shimmer sweep `::after` on hover | §25 About Uiverse |
| `.brand-feature-card` | Teal border glow + ring on hover | §25 About Uiverse |
| `.brand-series-item` | Lighten bg + translateX(3px) on hover | §25 About Uiverse |
| `.brand-service-note` | Border glow + icon flip to solid teal on hover | §25 About Uiverse |
| `.industry-card-icon` | Flip to solid teal on card hover (consistent with service/why) | §25 About Uiverse |
| about.html service links | SVG arrow replacing text `→` — slides right on hover | about.html |
| `.svc-page-card-icon` | Flip teal-pale → solid teal + scale(1.06) on card hover | §26 Services |
| `.svc-page-card` | translateY(-4px) lift + shadow deepen on hover | §26 Services |
| `.process-step` | translateY(-3px) lift + shadow deepen on hover | §26 Services |
| `.process-step-num` | scale(1.08) + darken to teal-dark on step hover | §26 Services |
| `.process-step-link svg` | translateX(3px) arrow slide on link hover | §26 Services |
| `.namecard-icon-box` | Flips teal-pale → teal bg + white icon on `.namecard-inner` hover | §27 Contact |
| `.contact-method-icon-wrap` | Flips teal-pale → teal + translateY(-3px) card lift on hover | §27 Contact |
| `.svc-detail-feature` | Left border teal reveal + translateX(3px) on hover | §28 Service Sub-pages |
| `.svc-reason-icon` | Flips teal bg (dark) → solid teal on card hover | §28 Service Sub-pages |
| `.cta-namecard a` | Underline opacity reveal on hover | §27 index.html namecard hint |
| `.proj-card-tag` | Background flips teal-pale → teal + white text on card hover | §30 Projects |
| `.proj-proof-icon` | Flips teal-pale → solid teal + white icon on card hover | §30 Projects |
| `.proj-card` | translateY(-4px) lift + shadow deepen on hover | §30 Projects |
| `.proj-proof-card` | translateY(-3px) lift + shadow deepen on hover | §30 Projects |
| `.proj-card-link svg` | translateX(3px) arrow slide on link hover | §30 Projects |

**Rule for new pages:** Apply the same hover patterns to matching component types. New card types should use the icon-flip and translateY(-3px) pattern. New buttons should inherit `.btn-primary` shimmer automatically. All `service-card-link` style links must use SVG arrows, not text `→`.

---

## Known Content Facts (verified from live site)
- Business: Radiant Engineering & Trading Sdn. Bhd.
- Location: Southern Johor, Malaysia
- Services: Compressor Service (24/7), PMC, Overhaul & Reconditioning, Spare Parts
- Additional service: Rental (mentioned on live site)
- Brand supplied: Ceccato (Italy) — CSM Series (fixed speed), DRB Series VSD
- Live headline: "Industrial Air Compressors Trading, Service, & Rental in Johor"
- Live tagline: "Radiant Engineering & Trading supports factories across Southern Johor with 24/7 breakdown response, preventive maintenance, rental units, and spare parts for major compressor brands"

---

## Placeholder Items (awaiting client input)
- [ ] Physical address (street/area in Johor)
- [ ] Email address
- [x] Hero background photo: `images/hero-bg.jpg` — ✅ resolved (technician at industrial control panel)
- [x] Product photos: ✅ resolved — `images/products/ceccato-compressor.jpg`, `images/products/compressor-accessories.jpg`, `images/products/spare-parts.webp`
- [x] Project/gallery photos: ✅ resolved — `images/projects/proj-1.jpeg` through `proj-6.jpeg`; "coming soon" placeholder replaced with real 6-card grid
- [x] Brand logos for "brands we service" section: ✅ resolved — `images/brands-serviced.png` added to about.html brands section (Airstone, Ceccato, Atlas Copco, Hitachi, Kobelco, Ingersoll Rand, Xinlei)
- [ ] `og:image` — add hosted URL to all pages once site is deployed (use logo or a hero shot); currently missing on all pages

### Image Assets (RESOLVED — Session 16)
| File | Content | Used in |
|------|---------|---------|
| `images/hero-bg.jpg` | Technician in hard hat working at industrial control panel | index.html hero (CSS bg) |
| `images/products/ceccato-compressor.jpg` | Two large industrial compressors in clean facility | index.html + products.html card |
| `images/products/compressor-accessories.jpg` | Rendered display of compressor accessories (receivers, valves, regulators) | index.html + products.html card |
| `images/products/spare-parts.webp` | Two inline air filters in original packaging | index.html + products.html card |
| `images/projects/proj-1.jpeg` | Five rotary screw compressors in a row at factory | projects.html card 1 |
| `images/projects/proj-2.jpeg` | Three compressors (9 & 10) under outdoor covered canopy | projects.html card 2 |
| `images/projects/proj-3.jpeg` | Two compressors + air receiver in factory unit | projects.html card 3 |
| `images/projects/proj-4.jpeg` | Xinlei XLAM50A on rooftop with air receiver | projects.html card 4 |
| `images/projects/proj-5.jpeg` | Two compressors + refrigerant dryers + blue piping | projects.html card 5 |
| `images/projects/proj-6.jpeg` | Two Xinlei compressors + refrigerant dryer, indoor plant room | projects.html card 6 |
| `images/brands-serviced.png` | Brand logo grid: Airstone, Ceccato, Atlas Copco, Hitachi, Kobelco, Ingersoll Rand, Xinlei | about.html brands section |
| `images/team-technicians.jpeg` | Four male technicians in dark uniforms in front of teal compressors | Available — not yet wired in |
| `images/service-pmc-inspection.jpeg` | Hand with clipboard checking compressor pipework | Available — not yet wired in |
| `images/service-overhaul-technicians.png` | Two technicians servicing open compressor unit | Available — not yet wired in |
| `images/service-overhaul-bearing.jpeg` | Hands working on disassembled compressor motor/bearing housing | Available — not yet wired in |
| `images/warehouse-stock.jpeg` | Warehouse racking with compressor units and boxes | Available — not yet wired in |

### Logo Assets (RESOLVED)
| File | Used for |
|------|---------|
| `images/Radiant Logo White BG.jpeg` | Header `.logo-img` + favicon (all pages) |
| `images/Radiant Logo Footer.jpeg` | Footer `.footer-logo img` (all pages) |

All logos embedded as base64 data URIs directly in `<img src="">` — no JS, no server required. Footer logo CSS: `height:90px; width:auto`.

---

## SEO Status

| Signal | index | about | services | contact | compressor-svc | pmc | overhaul | spare-parts | products | ceccato | accessories | prod-parts |
|--------|-------|-------|----------|---------|----------------|-----|----------|-------------|----------|---------|-------------|------------|
| `<title>` | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| `meta description` | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| `canonical` | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| `og:title/desc/url` | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| `og:image` | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| `schema.org` | ✅ LocalBiz | ✅ AboutPage | ✅ Service | ✅ ContactPage | ✅ Service | ✅ Service | ✅ Service | ✅ Service | ✅ ItemList | ✅ Product | ✅ Product | ✅ Product | ✅ ItemList |
| `robots/viewport/lang` | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |

**`og:image` note:** Cannot be a data URI — must be an absolute hosted URL. Add after deployment using the hero shot or a branded image (1200×630px recommended). Pattern to add to each page `<head>`:
```html
<meta property="og:image" content="https://www.radiantcompressor.com.my/images/og-image.jpg">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
```

**Rule for all future pages:** Copy the schema + meta pattern from `services.html`. Every new page needs: title, meta description, canonical, og:title/description/url/type, robots, and a schema.org type appropriate to the page (`Service`, `Product`, `ContactPage`, etc.).

---

## ⭐ Namecard WhatsApp CTA (to build next session)

The live site featured a low-friction CTA where visitors could **snap a photo of their namecard and send it to WhatsApp** — removing the barrier of filling out a form.

**What to build:** A dedicated CTA block (likely in `contact.html` and as a secondary option on the homepage CTA strip) with:
- Headline: "Got a namecard? Just snap and send."
- Supporting copy: "Take a photo of your namecard and send it to us on WhatsApp — we'll follow up with you directly."
- WhatsApp button linking to: `https://wa.me/60138083048?text=Hi%20Radiant%2C%20I%27d%20like%20to%20enquire%20about%20your%20services.%20Here%20is%20my%20namecard.`
- Optional: a small illustrative icon (phone camera → WhatsApp logo)

**Why it works for this audience:** Industrial buyers (factory managers, procurement) are busy and on mobile. Sending a namecard photo is far lower friction than a form. It also collects their contact details automatically via WhatsApp.

**Placement:**
1. `contact.html` — primary placement, its own section
2. `index.html` — add as a secondary option below the main CTA strip buttons (small text + icon)

---

## Game Plan — Post-Build Handoff Checklist

**All 13 pages are built. Remaining tasks are deployment-time or client-dependent:**

### services.html
Sections to include:
1. Page hero (charcoal) — breadcrumb, "Our Services" heading
2. Services grid (white) — 4 large service cards linking to sub-pages
3. Why Radiant for service (gray-50) — 3-4 reasons: local, 24/7, multi-brand, structured PMC
4. How it works (white) — simple 3-step process strip (call → site visit → service)
5. CTA strip (teal) — WhatsApp + Quote

### Individual service pages (e.g. compressor-service.html)
Sections:
1. Page hero — breadcrumb includes Services parent
2. What the service is (white) — detail + who it's for
3. What's included (gray-50) — bullet list / feature items
4. Why choose us for this service (white) — 3-4 specific points
5. CTA strip (teal)

### projects.html (still to build)
Sections:
1. Page hero (charcoal) — breadcrumb: Home > Projects
2. Projects/gallery grid (white) — photo cards with project type, location, caption
3. Why it matters (gray-50 or charcoal) — social proof angle
4. CTA strip (teal)

Note: Client has not yet provided project photos. Build with placeholder image areas (`images/projects/project-N.jpg`) and descriptive captions based on known service types (PMC installation, compressor overhaul, breakdown repair, etc.). Same image zoom hover pattern as product cards.

---

## Session Log

### Session 15 — Content Audit: Fabricated Content Removed
- **Triggered by user review:** User identified that project cards contained invented locations and client types.
- **projects.html gallery section:** Replaced all 6 fabricated project cards (Pasir Gudang PMC, Kulai Overhaul, JB Emergency, Pontian VSD, Senai Parts, Kluang PMC) with a single honest "Photos Coming Soon" block. No invented data remains.
- **projects.html proof cards:** Removed specific town list ("Johor Bahru, Pasir Gudang, Kulai…") → `"Southern Johor and the Johor region"`. Removed brand list ("Ceccato, Atlas Copco, Ingersoll Rand…") → `"Ceccato and a range of other major compressor brands"`.
- **projects.html schema:** Changed from fabricated `ItemList` to clean `CollectionPage`.
- **services/compressor-service.html:** Removed two brand name lists (Atlas Copco, Ingersoll Rand, Kaeser, CompAir) → `"Ceccato and a range of other major brands"` (lines 175 + 340).
- **services/spare-parts.html:** Removed brand list → `"we stock or can fast-source for Ceccato and other major brands"`.
- **products/spare-parts.html:** Removed fabricated "Brands We Support" items (Atlas Copco, Ingersoll Rand, CompAir, Kaeser, Gardner Denver, Sullair) → single item `"Other major brands — enquire for availability and sourcing"`.
- **Fact-check method:** WebFetch on radiantcompressor.com.my confirmed: no specific brand names listed, no specific town names beyond "Southern Johor", no project case studies on live site.
- Added CSS §30 `.proj-coming-soon` block: centred dashed-border placeholder panel with icon, title, desc, tag pills, and CTA button.

### Session 14 — projects.html + Sitewide Review (FINAL PAGE)
- Built `projects.html` — 4 sections: charcoal page-hero (Home > Projects breadcrumb), white 6-card project gallery (photo cards with image zoom hover, teal-pale project type tag, caption, SVG arrow link), gray-50 social proof (4 proof cards: 24/7 emergency / multi-brand / documented / local), teal CTA strip with namecard hint.
- Six placeholder project cards with real content: PMC (Pasir Gudang), Overhaul (Kulai), Emergency Repair (JB), VSD Installation (Pontian), Parts Supply (Senai), Multi-Unit PMC (Kluang).
- `images/projects/project-N.jpg` paths used as placeholders (client to provide photos); CSS absolute-position placeholder SVG is visible until real images are loaded.
- Added CSS §30 (Projects Page) to styles.css: `.proj-grid` 3-col → 2 → 1, `.proj-card` translateY-4px lift, `.proj-card-img` zoom scale(1.06), `.proj-card-img-placeholder` teal-gradient overlay, `.proj-card-tag` teal-pale→teal on hover, `.proj-card-link` SVG arrow slide, `.proj-proof-grid` 4-col → 2 → 1, `.proj-proof-icon` icon flip teal-pale → solid teal on hover.
- Sitewide nav review: all 13 pages have correct `is-active` / `aria-current="page"` on the right nav link. `projects.html` present in nav on all root pages (`href="projects.html"`) and all sub-pages (`href="../projects.html"`). No "View All Products" in any nav dropdown. Product sub-page dropdown hrefs verified correct.
- Deleted stale temp files: `images/favicon_uri.txt`, `images/footer_uri.txt`, `images/header_uri.txt` (flagged since Session 9).
- **Site is now fully built — all 13 pages complete.**

### Session 1 — Initial Setup
- Identified brand colours from live site: charcoal #1F2933 + teal #27B7C5
- Fixed earlier incorrect colours (orange/navy removed)
- Built index.html — 9 sections
- Built css/styles.css — full token system + all homepage components

### Session 2 — About Page
- Built about.html — 7 sections
- Added CSS sections 20–24 to styles.css: page-hero, breadcrumb, about-intro, about-stat-panel, brands-section
- Build state updated

### Session 3 — Uiverse.io Enhancements + MD System
- Researched Uiverse.io component patterns
- Applied 9 CSS enhancements across styles.css (shimmer buttons, icon flips, image zoom, pulse ring, etc.)
- Replaced identical checkmark icons in index.html about-features with 5 distinct contextual SVGs
- Rebuilt build-state.md into comprehensive handoff document
- Updated design-system.md with Uiverse.io usage rules

### Session 7 — Logo Fix + Favicon
- **Root cause resolved:** `js/site.js` was prepending a depth-based `root` path (e.g. `../../../../`) to the data URI when pages were opened from File Explorer, corrupting the src attribute. Fix: removed `js/site.js` from all pages entirely.
- **Logo pipeline (final approach):** Pure HTML `src="data:image/jpeg;base64,..."` embedded directly in each `<img>` tag — no JS, no onerror, no path resolution.
- **New logo asset:** Client provided `images/Radiant Logo White BG.jpeg` (1179×1080px). Used for all header, footer, and favicon embeds.
- **Header logo:** Resized to 320px wide (12 KB), base64 embedded as `src` on `.logo-img` in all 3 pages.
- **Footer logo:** Same base64 src. Removed `filter: brightness(0) invert(1)` from `.footer-logo img` CSS — replaced with `background:#fff; border-radius:6px; padding:4px 8px` so logo sits in a clean white box on the charcoal footer.
- **Favicon:** 64×64 square-cropped from same image (2 KB base64), added as `<link rel="icon" type="image/jpeg">` in `<head>` of all 3 pages.
- **DO NOT use `js/site.js` for logo injection** — the depth-aware path prefix breaks data URIs when opened from File Explorer.
- **To update logo in future:** Run a Python script that reads the new image, resizes, base64-encodes, then regex-replaces the `src="data:image/jpeg;base64,[^"]*"` pattern on `.logo-img` and `.footer-logo img` tags in all HTML files.

### Session 8 — Footer Logo Fix
- Client provided `images/Radiant Logo Footer.jpeg` — same logo on charcoal (#1F2933) background for seamless footer integration.
- Replaced footer logo src in `index.html`, `about.html`, `services.html` with new footer URI (resized 200px wide, 8.6 KB base64).
- Removed white-box CSS from `.footer-logo img` — stripped `background:#fff`, `border-radius:6px`, `padding:4px 8px`. Rule is now `height:90px; width:auto; display:block;` (bumped to 90px for proper brand presence).
- Header logo and favicon unchanged (still using `Radiant Logo White BG.jpeg`).

### Session 13 — Nav Cleanup + Handoff Prep
- Fixed broken dropdown hrefs on product sub-pages (`products/ceccato.html`, `compressor-accessories.html`, `spare-parts.html`): links were `products/ceccato.html` which double-nested to `/products/products/ceccato.html`. Fixed to same-directory relative hrefs (`ceccato.html`, `compressor-accessories.html`, `spare-parts.html`).
- Removed redundant "View All Products →" dropdown item + divider from all 12 pages sitewide — the "Products" nav link already goes to `products.html`, making the dropdown entry a duplicate.
- `build-state.md` updated and consolidated for clean handoff.

### Session 13 — Products Landing + All 3 Product Sub-pages
- Built `products.html` — 4 sections: charcoal page-hero, white 3-card category grid (Ceccato/Accessories/Spare Parts), charcoal brand feature (CSM fixed-speed + DRB VSD series cards), teal CTA strip. Nav "Products" is-active.
- Added CSS §29 — Products Page to `styles.css`: `.prod-cat-grid`, `.prod-cat-card` (icon-flip + translateY-4px), `.prod-cat-img-placeholder` (SVG placeholder for missing photos), `.prod-brand-section` (charcoal), `.prod-series-card` (hover lift), `.prod-cat-link` (SVG arrow slide). Responsive: 2-col at 900px, 1-col at 600px.
- Built `products/ceccato.html` — 6 sections: charcoal hero (3-level breadcrumb), white brand intro (2-col svc-intro-grid, 3 stats), gray-50 CSM Series (8-item feature list), white DRB VSD Series (8-item feature list), charcoal why-us (3 cards), teal CTA. Schema: Product + LocalBusiness.
- Built `products/compressor-accessories.html` — same structure. 8 accessories: dryers, filters, oil/water separators, regulators, receivers, solenoid valves, auto drains, piping. 3 why-cards: technical spec advice / supply+installation / one supplier full system.
- Built `products/spare-parts.html` — same structure. 8 parts: oil separators, air/oil filters, compressor oil, belts, bearings, valve kits, thermostatic valves, solenoids/sensors. 3 why-cards: local stock / technical advice / supply+fitment. Multi-brand coverage angle (Ceccato, Atlas Copco, Ingersoll Rand, Kaeser, etc.).
- All product sub-pages: depth-aware `../` paths, active nav on Products + per-page dropdown, full SEO (title/meta/canonical/OG/schema), all Uiverse patterns applied (icon-flip, translateY, translateX, SVG arrows), `cta-namecard` hint in CTA strip.
- Only remaining page: `projects.html`.

### Session 12 — Fix Stat Row + Why-card Column Alignment
- Fixed `.svc-intro-stat-row > div`: added `flex: 1` so all 3 stat columns are equal width regardless of label text length (e.g. "Disassembly & Inspection" was pushing column 1 wider).
- Fixed `.svc-reason-card`: added `display: flex; flex-direction: column;` and `flex: 1` on `.svc-reason-card p` so all 3 why-cards in the charcoal grid stretch to equal height.
- Both fixes apply to all 4 service sub-pages via shared `styles.css §28`.


### Session 11 — Remaining 3 Service Sub-pages
- Built `services/preventive-maintenance.html` — PMC-focused content: scheduled interval servicing, consumables replacement, audit/ISO documentation angle, 8-item includes list, 3 why-cards (scheduled-around-you, documentation, multi-brand).
- Built `services/overhaul-reconditioning.html` — Overhaul content: assess-first-quote-second positioning, strip-down to recommissioning scope, cost-vs-replacement angle, 8-item includes list, 3 why-cards.
- Built `services/spare-parts.html` — Parts supply content: local-stock-no-import-delays positioning, technical advice differentiation, supply+fitment upsell, 8-item parts range list, 3 why-cards.
- All 3 pages use shared `make_page()` template (Python build script, removed post-build). All have full SEO (title, meta, canonical, OG, schema.org Service, robots, viewport, lang). Section alternation: charcoal hero → white intro → gray-50 includes → charcoal why → teal CTA. All Uiverse patterns applied consistently.

### Session 10 — Contact Page, Namecard CTA, Compressor Service Sub-page
- Built `contact.html` — 4 sections: page-hero, namecard CTA (primary placement with camera→WhatsApp icon sequence), contact methods (3 cards: WhatsApp/Phone/Location), CTA strip. Schema: ContactPage + LocalBusiness.
- Added secondary lightweight namecard CTA to `index.html` CTA strip — camera SVG + "Snap and send it on WhatsApp" link, styled as `.cta-namecard` hint row below buttons.
- Built `services/compressor-service.html` — 4 sections: page-hero (2-level breadcrumb), what the service is (2-col intro + 4 who-it's-for items), what's included (8-item feature list, gray-50), why choose us (3 cards, charcoal bg), CTA strip with emergency WhatsApp pre-fill. Schema: Service.
- Added CSS §27 (namecard section, contact methods grid, `cta-namecard` hint) and §28 (svc-intro-grid, svc-detail-features with translateX, svc-reasons-section charcoal, svc-reason-card icon flip) to `styles.css`.
- All new interactive elements follow icon-flip + translateY(-3px) / translateX(3px) Uiverse patterns. All CTA links use SVG arrows. Section bg alternation pattern followed on all new pages.
- `services/` directory created for service sub-pages.

### Session 9 — SEO Audit + Namecard CTA Planning
- Full SEO audit across index.html, about.html, services.html — all core signals present (title, meta desc, canonical, OG tags, robots, viewport, lang).
- Added `schema.org` JSON-LD to `about.html` (AboutPage + LocalBusiness) and `services.html` (Service with OfferCatalog) — homepage already had LocalBusiness schema.
- `og:image` documented as pending post-deployment task (requires hosted URL, not data URI).
- Namecard WhatsApp CTA documented in Game Plan — to be built in next session on `contact.html` + `index.html`.
- Staged temp files `images/header_uri.txt`, `images/footer_uri.txt`, `images/favicon_uri.txt` can be deleted — no longer needed.

### Session 5 — Services Page
- Built services.html — 5 sections: page-hero, services grid (4 detailed service cards), why radiant (4 why-cards), how it works (3-step process), CTA strip
- Added CSS §26 to styles.css: `.svc-page-grid`, `.svc-page-card` (icon flip Uiverse), `.svc-page-card-features`, `.svc-why-section`, `.process-grid`, `.process-step` (lift Uiverse), `.process-step-num` (scale Uiverse), `.process-step-link` (arrow slide Uiverse)
- All Uiverse hover patterns applied inline — no deferred pass
- services.html uses `class="nav-link is-active" aria-current="page"` on Services nav link
- Reused `.why-grid`/`.why-card` for "Why Radiant" section (consistent with homepage + about)
- Reused `.service-card-link` (SVG arrow) for all 4 service card CTAs

### Session 4 — About Page Uiverse Upgrades (complete)
- Added dot-grid `::before` pattern + strengthened `::after` gradient to `.page-hero`
- Added CSS §25 with full Uiverse enhancement set for about.html:
  - `.about-stat-item` left border teal reveal + icon flip
  - `.about-stat-wa` shimmer sweep
  - `.brand-feature-card` teal border glow on hover
  - `.brand-series-item` lighten + translateX slide on hover
  - `.brand-service-note` border glow + icon flip on hover
  - `.industry-card-icon` flip to solid teal on card hover
- Replaced all 4 "Learn More →" text arrows in about.html service cards with animated SVG arrows
- about.html is now fully Uiverse-enhanced — all interactive elements consistent with homepage

---

## Session Update Protocol (for Claude at end of each session)

At the end of every working session, update the following:

1. **Completed Pages table** — mark newly built pages as ✅ Done with notes
2. **Completed Assets table** — update if new CSS sections were added
3. **Pages Still To Build** — remove completed items
4. **Locked Design Decisions** — add any new design choices that must persist
5. **Uiverse.io table** — add any new Uiverse-inspired patterns used
6. **Session Log** — append a new session entry with what was done
7. **Game Plan** — update next steps if priorities changed

This ensures that the next session (even in a new chat) can continue without re-establishing context.
