# File Map — Radiant Engineering Website

## Project overview
- **Business:** Radiant Engineering & Trading Sdn. Bhd.
- **Stack:** Pure static HTML + CSS + vanilla JS. No build step.
- **Single stylesheet:** `css/styles.css` (3,221 lines) — highest-risk file in the project.
- **Single JS file:** `js/site.js` — header scroll shadow + mobile nav toggle.

---

## High-risk / large files

### css/styles.css — 3,221 lines

- **Purpose:** All styles for all 13 pages + 404. One monolithic file with numbered sections.
- **Estimated size / risk:** HIGH. Any change to a shared component (buttons, header, footer, cards) affects every page.
- **Safe edit strategy:** Always identify the target section by number first. Edit only that section. Do not scroll or read the file end-to-end. Search for class names to confirm which section owns them before editing.
- **Split candidate later?:** Yes — sections §26–§31 (page-specific CSS) are good candidates for per-page stylesheets if the file grows further.

#### Section map

| Section | Line | Name / Purpose |
|---|---|---|
| §1  | 31   | Design Tokens — `:root` custom properties (colours, spacing, radius, shadows, transitions, layout) |
| §2  | 120  | Reset & Base — box-sizing, body, img, a, ul, button, skip link |
| §3  | 167  | Typography — h1–h6, p colour |
| §4  | 180  | Layout — `.container`, `.section` + responsive padding |
| §5  | 198  | Buttons — `.btn`, `.btn-primary`, `.btn-secondary`, `.btn-outline-light`, `.btn-whatsapp`, `.btn-product`, `.btn-cta-primary`, `.btn-cta-secondary` |
| §6  | 367  | Header & Navigation — `.site-header`, `.header-inner`, `.logo`, `.main-nav`, `.nav-link`, `.dropdown` |
| §7  | 512  | Hero — `.hero`, `.hero-inner`, `.hero-badge`, `.hero-heading`, `.hero-subheading`, `.hero-cta-group`, `.hero-bg` |
| §8  | 685  | Trust Bar — `.trust-bar`, `.trust-item` |
| §9  | 733  | Section Shared — `.section-header`, `.section-tag`, `.section-title`, `.section-sub` |
| §10 | 794  | Services Section — `.services-grid`, `.service-card`, `.service-icon`, icon flip animation |
| §11 | 879  | About Section — `.about-section`, `.about-grid`, `.about-stats`, stat cards |
| §12 | 954  | Products Section — `.products-section`, `.product-grid`, `.product-card`, `.product-img`, `.product-meta` |
| §13 | 1114 | Why Section — `.why-section`, `.why-grid`, `.why-card` (flex height alignment fix applied Session 17) |
| §14 | 1172 | Industries Section — `.industries-section`, `.industries-grid`, `.industry-item` |
| §15 | 1227 | CTA Strip — `.cta-strip`, `.cta-inner`, `.cta-namecard` (secondary namecard hint variant) |
| §16 | 1276 | Footer — `.site-footer`, `.footer-inner`, `.footer-col`, `.footer-links`, `.footer-contact`, `.footer-legal` |
| §17 | 1394 | Floating WhatsApp — `.wa-float`, `.wa-float-btn` |
| §18 | 1438 | Utilities — `.sr-only`, `.text-teal`, `.bg-surface` |
| §19 | 1448 | Responsive (core) — breakpoints 600px, 768px, 1024px; mobile nav (< 1024px); < 480px; reduced motion |
| §20 | 1564 | Page Hero (inner pages) — `.page-hero`, `.page-hero-inner`, `.breadcrumb` |
| §21 | 1738 | About — Company Introduction — `.about-intro-section`, two-col grid, stat panel |
| §22 | 1877 | About — Values Section — `.values-section`, `.values-grid`, `.value-card` |
| §23 | 1886 | About — Services Overview — `.about-svc-section` |
| §24 | 1895 | About — Brands Section — `.brands-section`, `.brand-logos-panel` |
| §25 | 1575 | About — Uiverse.io Enhancements (Session 4) — `.about-stat-card`, `.brand-badge` hover effects |
| §26 | 2067 | Services Page — `.svc-page-grid`, `.svc-page-card` (icon flip), `.process-step` (lift + num scale), responsive |
| §27 | 2287 | Contact Page + Namecard CTA — `.namecard-section`, `.namecard-inner`, `.namecard-icons`, `.contact-methods-grid`, `.cta-namecard` |
| §28 | 2458 | Individual Service Sub-Pages — `.svc-intro-grid`, `.svc-detail-features` (translateX), `.svc-reasons-section`, `.svc-reason-card` (icon flip) |
| §29 | 2647 | Products Page — `.prod-cat-grid`, `.prod-cat-card` (icon flip + translateY), `.prod-brand-section`, `.prod-series-card` |
| §30 | 2868 | Projects Page — `.proj-grid`, `.proj-card` (translateY lift + img zoom), `.proj-card-tag`, `.proj-card-link` (SVG arrow), `.proj-proof-grid`, `.proj-coming-soon` |
| §31 | 3153 | FAQ Accordion — `.faq-section`, `.faq-list`, `.faq-item` (`<details>`), `.faq-question` (`<summary>` + rotating chevron), `.faq-answer` (teal left-border) |

---

## Main HTML pages

### index.html — 707 lines
- **Purpose:** Homepage. Primary conversion page. 9 sections.
- **Main sections:** Header → Hero (hero-bg.jpg) → Trust Bar → Services (4 cards) → About (2-col + stats) → Products (3 cards with real images) → Why Radiant (4 cards) → Industries (grid) → CTA Strip (with namecard hint) → Footer
- **Safe edit notes:** Hero uses `hero-bg.jpg` as CSS background — change in §7. Product cards reference `images/products/ceccato-compressor.jpg`, `compressor-accessories.jpg`, `spare-parts.webp`. Nav active: Home.

### services.html — 540 lines
- **Purpose:** Services overview page. 5 sections.
- **Main sections:** Page Hero → Services Grid (4 cards with icon flip) → Why Radiant (4 cards) → How It Works (3 process steps) → CTA Strip
- **Safe edit notes:** Uses §26 CSS. Icon flip on `.svc-page-card`. Process steps use `.process-step`. Nav active: Services.

### products.html — 452 lines
- **Purpose:** Products landing page. 4 sections.
- **Main sections:** Page Hero → 3-card category grid (Ceccato / Accessories / Spare Parts) → Charcoal brand feature (CSM + DRB series cards) → CTA Strip
- **Safe edit notes:** Uses §29 CSS. Product images at `images/products/`. Nav active: Products.

### about.html — 599 lines
- **Purpose:** About / company page. 7 sections.
- **Main sections:** Page Hero → Intro + Stat Panel (established 2008) → Values (4 cards) → Services Overview → Brands Serviced (logos panel) → Industries → CTA Strip
- **Safe edit notes:** Uses §21–25 CSS. Brand logos panel: `images/brands-serviced.png`. Nav active: About.

### contact.html — 399 lines
- **Purpose:** Contact page. 4 sections.
- **Main sections:** Page Hero → Namecard CTA (primary) → Contact Methods (5 cards: WhatsApp / Phone / Email / Hours / Location) → CTA Strip
- **Safe edit notes:** Uses §27 CSS. Email: `radiant-eng@hotmail.com`. Hours: Mon–Fri 9am–5pm, Sat 9am–1:30pm, Sun Closed. JSON-LD corrected to match actual hours. Nav active: Contact.

### projects.html — 478 lines
- **Purpose:** Projects / photo gallery page. 4 sections.
- **Main sections:** Charcoal Page Hero → 6-card project gallery (real photos, zoom hover) → Social proof (4 cards: 24/7 / Multi-Brand / Documented / Local) → CTA Strip with namecard hint
- **Safe edit notes:** Uses §30 CSS. Project images at `images/projects/`. Nav active: Projects.

### 404.html
- **Purpose:** Custom 404 fallback.
- **Notes:** `noindex` robots meta. No nav active state. Charcoal page-hero + white body with large teal "404".

---

## Service sub-pages (services/)

| File | Content |
|---|---|
| `services/compressor-service.html` | 4 sections + 5 FAQs |
| `services/preventive-maintenance.html` | 4 sections + 5 FAQs |
| `services/overhaul-reconditioning.html` | 4 sections + 5 FAQs |
| `services/spare-parts.html` | 4 sections + 5 FAQs |

All use `../css/styles.css`. CSS in §28 + §31.

---

## Product sub-pages (products/)

| File | Content |
|---|---|
| `products/ceccato.html` | 6 sections: hero, brand intro, CSM features, DRB VSD features, why us, CTA |
| `products/compressor-accessories.html` | Same structure. 8 accessory types. |
| `products/spare-parts.html` | Same structure. 8 parts types. |

All use `../css/styles.css`. CSS in §29.

---

## Image assets (current production paths)

| Path | Used by |
|---|---|
| `images/hero-bg.jpg` | `index.html` hero CSS background (§7) |
| `images/products/ceccato-compressor.jpg` | `index.html`, `products.html` Ceccato card |
| `images/products/compressor-accessories.jpg` | `index.html`, `products.html` Accessories card |
| `images/products/spare-parts.webp` | `index.html`, `products.html` Spare Parts card |
| `images/brands-serviced.png` | `about.html` brands section |
| `images/service-overhaul-technicians.png` | Available but not yet wired — service sub-pages |
| `images/projects/` (6 files) | `projects.html` project gallery cards |
| `images/products/` (10001–10026) | Product sub-pages or available for use |
| `images/All Old Website Pictures/` | Source archive — do not use directly |
| `images/Radiant Logo RBG.png` | Source file — kept as archive; do not delete |

**Brand assets (canonical):**
| Path | Used by | Notes |
|---|---|---|
| `assets/brand/logo/logo-primary.png` | All 14 pages — favicon `<link>`, header `.logo-img`, footer `<img>` | 893KB PNG. Wired Session 18. Source: `images/Radiant Logo RBG.png` |
| `assets/brand/favicon/` | *(empty)* | Next task: derive a proper 32×32 favicon here to replace the full logo PNG used as favicon |

---

## JS

### js/site.js
- Header scroll shadow (`is-scrolled` class on `#site-header`)
- Mobile nav toggle (hamburger menu)
- Inline `<script>` blocks also exist in individual HTML files for page-specific behaviour (e.g. FAQ accordion was handled with native `<details>` — no JS needed)

---

## Key locked facts (do not change without client confirmation)
- WhatsApp: `https://wa.me/60138083048`
- Phone: `+60138083048`
- Email: `radiant-eng@hotmail.com`
- Hours: Mon–Fri 9am–5pm, Sat 9am–1:30pm, Sun Closed
- Founded: 2008
- Location: Southern Johor, Malaysia
