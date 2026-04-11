# Image Inventory

## Rules
- Use local project assets by default
- Do not hotlink website or third-party images unless explicitly approved
- Prefer existing approved images before generating new imagery
- If a needed image does not exist yet, create or use a placeholder image and describe the required image clearly
- Keep filenames descriptive and stable
- Store brand assets under:
  - assets/brand/logo/
  - assets/brand/favicon/
- Store images under:
  - assets/images/existing/
  - assets/images/generated/
  - assets/images/placeholders/

## Brand assets

| Asset Type | Filename | Local Path | Approved | Notes |
|---|---|---|---|---|
| Logo (primary) | logo-primary.png | assets/brand/logo/logo-primary.png | ✅ Yes | 893KB PNG. Used as header logo, footer logo on all 14 pages |
| Logo (SVG) | — | — | ❌ Pending | Client to supply SVG version for crispness |
| Favicon 32×32 | favicon-32x32.png | assets/brand/favicon/favicon-32x32.png | ✅ Done — Session 21 | 1.6KB. 30% corner radius, 75% logo scale, white border |
| Favicon 16×16 | favicon-16x16.png | assets/brand/favicon/favicon-16x16.png | ✅ Done — Session 21 | 0.6KB |
| Favicon 48×48 | favicon-48x48.png | assets/brand/favicon/favicon-48x48.png | ✅ Done — Session 21 | 3.0KB |
| Apple Touch Icon | apple-touch-icon.png | assets/brand/favicon/apple-touch-icon.png | ✅ Done — Session 21 | 22KB, 180×180, opaque white bg for Safari |

## Naming conventions

### Placeholder filenames
Use: `ph-[page]-[section]-[image-purpose]-[ratio].png`

### Final image filenames
Use: `[page]-[section]-[image-purpose]-[ratio].[ext]`

---

## Active image paths (Session 26 — all updated to assets/images/existing/)

All HTML image references and CSS background now point to `assets/images/existing/`. The old `images/` folder remains on disk but is no longer referenced by any HTML or CSS. **Exception:** `images/projects/proj-1.jpeg` through `proj-6.jpeg` — these were NOT moved to assets and projects.html still references `images/projects/`. Flag to client.

---

## Named images (descriptive filenames)

| Filename | Local Path | Content | Wired To | Status | Notes |
|---|---|---|---|---|---|
| hero-bg.jpg | assets/images/existing/hero-bg.jpg | Technician at industrial control panel | css/styles.css (.hero background) | ✅ Active | |
| ceccato-compressor.jpg | assets/images/existing/ceccato-compressor.jpg | Old compressor photo (temp Airstone placeholder) | index.html, products.html, products/airstone.html | ⚠️ Temp | Must replace with Airstone product photo |
| compressor-accessories.jpg | assets/images/existing/compressor-accessories.jpg | Accessories rendered display | index.html, products.html | ✅ Active | |
| spare-parts.webp | assets/images/existing/spare-parts.webp | Inline air filters in packaging | index.html, products.html | ✅ Active | |
| brands-serviced.png | assets/images/existing/brands-serviced.png | 7 brand logos — Airstone, AC, Hitachi, Kobelco, IR, Xinlei | about.html brands section | ✅ Active | No Ceccato — correct version |
| service-overhaul-bearing.jpeg | assets/images/existing/service-overhaul-bearing.jpeg | Hands-on compressor airend/bearing overhaul work | services/overhaul-reconditioning.html | ✅ Active — Session 26 | Replaced technicians.png — more authentic for overhaul page |
| service-overhaul-technicians.png | assets/images/existing/service-overhaul-technicians.png | 4 technicians in uniforms (AI-generated look) | — (unwired) | ⚠️ Available | Removed from overhaul page; could be used on about.html or a future team section |
| service-pmc-inspection.jpeg | assets/images/existing/service-pmc-inspection.jpeg | Technician with clipboard inspecting compressor | services/preventive-maintenance.html | ✅ Active — Session 26 | New — wired this session |
| team-technicians.jpeg | assets/images/existing/team-technicians.jpeg | 4 technicians in uniforms in front of teal compressors | about.html intro section | ✅ Active — Session 26 | New — wired this session |
| warehouse-stock.jpeg | assets/images/existing/warehouse-stock.jpeg | Warehouse shelving with compressor boxes | — (unwired) | ⚠️ Available | Could be used on about.html or products pages |

---

## Project photos (⚠️ path issue)

| Filename | Current Path | Status | Notes |
|---|---|---|---|
| proj-1.jpeg | images/projects/proj-1.jpeg | ⚠️ Not in assets | Five rotary screw compressors in a row at a factory |
| proj-2.jpeg | images/projects/proj-2.jpeg | ⚠️ Not in assets | Three compressors in covered outdoor house with air receiver |
| proj-3.jpeg | images/projects/proj-3.jpeg | ⚠️ Not in assets | Two compressors with air receiver in a factory unit |
| proj-4.jpeg | images/projects/proj-4.jpeg | ⚠️ Not in assets | Xinlei XLAM50A on factory rooftop with air receiver |
| proj-5.jpeg | images/projects/proj-5.jpeg | ⚠️ Not in assets | Two compressors with refrigerant dryers and blue piping |
| proj-6.jpeg | images/projects/proj-6.jpeg | ⚠️ Not in assets | Two Xinlei compressors with dryer in indoor plant room |

These 6 files were NOT moved to assets/images/existing/. projects.html still references `images/projects/`. Client should move these to assets or confirm replacement with the numbered images below (10030–10032 are similar project shots already in assets).

---

## Numbered image catalog (assets/images/existing/)

### ❌ Do NOT use
| File | Content | Reason |
|---|---|---|
| 10001.png | Brand logos panel including Ceccato logo | Ceccato branding visible — contradicts Airstone rebrand |
| 10004.webp | Ceccato DRE95 G compressor product shot | Ceccato branded — do not publish |
| 10018.webp | Nature/lake landscape with teal overlay | Not industrial — leftover template asset |
| 10020.webp | Nature/mountain landscape with teal overlay | Not industrial — leftover template asset |
| 10026.png | Blank white diagonal-stripe background | Template asset |
| 10028.jpeg | Metal pipes/tubes rack | Not useful for current pages |

### ✅ Spare parts photos (available for spare-parts pages)
These are individual labeled part photos on white background — suitable for a parts catalog, spare-parts page gallery, or product detail sections.

| File | Content |
|---|---|
| 10002.webp | Hitachi modulator |
| 10003.webp | Hitachi thermostats |
| 10005.webp | Atlas Copco air filter/separator element in original box |
| 10006.webp | Minimum pressure valve |
| 10007.webp | Regulator valve |
| 10008.webp | Valve sheet |
| 10009.webp | Min pressure valve (different angle) |
| 10010.webp | Temperature switch |
| 10011.webp | Drain valve kit |
| 10012.webp | Pressure sensor |
| 10013.webp | Thermostat valve kit |
| 10014.webp | Inner thermostat |
| 10015.webp | Thermostat |
| 10016.webp | Pressure transducer |
| 10017.webp | Thermostat valve kit (different style) |
| 10019.webp | 42" rubber coupling |
| 10021.webp | Blue inline air filters in packaging |
| 10022.webp | Seal kit with dimensions |
| 10023.webp | Min pressure valve kit (o-rings, springs) |
| 10024.webp | Drain valve kit (different) |
| 10025.webp | Silencer 3/8 (blue pneumatic silencers) |
| 10027.jpeg | Xinlei compressor oil buckets (consumables) |

### ✅ Stock / operations photos (available)
| File | Content | Suggested use |
|---|---|---|
| 10029.jpeg | Warehouse shelving with wrapped compressors on pallets | about.html or products pages |
| 10030.jpeg | Xinlei XLAM50A compressor on factory rooftop with air receiver | projects.html (similar to proj-4) |
| 10031.jpeg | Two air dryers with blue compressed air piping | projects.html (similar to proj-5) |
| 10032.jpeg | Row of 5 compressors in covered outdoor area | projects.html (similar to proj-1) |

---

## Images needed from client (not yet supplied)

| Image ID | Page(s) | Description needed | Priority |
|---|---|---|---|
| airstone-product-photo | index.html, products.html, products/airstone.html | Airstone rotary screw compressor — clean shot, front or 3/4 angle | HIGH |
| proj-files-to-assets | projects.html | Move proj-1 through proj-6 to assets/images/existing/, or confirm replacement with 10030–10032 | HIGH |
| svg-logo | All 14 pages | SVG version of logo for crispness (current PNG is 893KB) | Medium |
| industrial-bg-grey-sections | services/*.html, about.html | Industrial environment for tinted overlay on grey sections | Medium |

---

## Image usage log (current state)

| Page | Section | Image | Path | Status |
|---|---|---|---|---|
| index.html | Hero background | hero-bg.jpg | assets/images/existing/hero-bg.jpg (CSS) | ✅ Active |
| index.html | Airstone product card | ceccato-compressor.jpg | assets/images/existing/ceccato-compressor.jpg | ⚠️ Temp |
| index.html | Accessories card | compressor-accessories.jpg | assets/images/existing/compressor-accessories.jpg | ✅ Active |
| index.html | Spare Parts card | spare-parts.webp | assets/images/existing/spare-parts.webp | ✅ Active |
| products.html | Airstone card | ceccato-compressor.jpg | assets/images/existing/ceccato-compressor.jpg | ⚠️ Temp |
| products.html | Accessories card | compressor-accessories.jpg | assets/images/existing/compressor-accessories.jpg | ✅ Active |
| products.html | Spare Parts card | spare-parts.webp | assets/images/existing/spare-parts.webp | ✅ Active |
| products/airstone.html | Brand intro | ceccato-compressor.jpg | assets/images/existing/ceccato-compressor.jpg | ⚠️ Temp |
| about.html | Intro section (team) | team-technicians.jpeg | assets/images/existing/team-technicians.jpeg | ✅ Active — Session 26 |
| about.html | Brands section | brands-serviced.png | assets/images/existing/brands-serviced.png | ✅ Active |
| services/overhaul-reconditioning.html | Intro section | service-overhaul-bearing.jpeg | assets/images/existing/service-overhaul-bearing.jpeg | ✅ Active — Session 26 |
| services/preventive-maintenance.html | Intro section | service-pmc-inspection.jpeg | assets/images/existing/service-pmc-inspection.jpeg | ✅ Active — Session 26 |
| projects.html | Gallery (6 cards) | proj-1 to proj-6.jpeg | images/projects/ | ⚠️ Old path — not in assets |
