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

## Favicon logic
- Use an existing favicon if the client already has one
- If not, derive favicon assets from the logo or logo mark where possible
- Check whether the logo is legible at very small sizes before using it
- If the full logo is too detailed, use or create a simplified icon, initials, or logo mark
- If no suitable favicon source exists yet, log favicon creation as pending

## Naming conventions

### Placeholder filenames
Use:
`ph-[page]-[section]-[image-purpose]-[ratio].png`

Examples:
- `ph-home-hero-main-16x9.png`
- `ph-about-team-photo-3x2.png`
- `ph-contact-showroom-4x3.png`

### Final image filenames
Use:
`[page]-[section]-[image-purpose]-[ratio].[ext]`

Examples:
- `home-hero-main-16x9.webp`
- `about-team-photo-3x2.webp`
- `contact-showroom-4x3.jpg`

### Brand asset filenames
Suggested:
- `logo-primary.svg`
- `logo-primary-dark.svg`
- `logo-primary-light.svg`
- `logo-mark.svg`
- `favicon.ico`
- `favicon-32x32.png`
- `favicon-16x16.png`
- `apple-touch-icon.png`

## Existing / approved images

| Filename / ID | Source | Local Path | Approved | Intended Use | Notes |
|---|---|---|---|---|---|
| hero-bg.jpg | Client-supplied (old site) | images/hero-bg.jpg | ✅ Yes | index.html hero CSS background | Technician at industrial control panel |
| ceccato-compressor.jpg | Client-supplied (old site) | images/products/ceccato-compressor.jpg | ⚠️ Needs replacement | index.html + products.html Airstone card | Was Ceccato product photo — must be replaced with Airstone compressor image |
| compressor-accessories.jpg | Client-supplied (old site) | images/products/compressor-accessories.jpg | ✅ Yes | index.html + products.html accessories card | Rendered display of accessories |
| spare-parts.webp | Client-supplied (old site) | images/products/spare-parts.webp | ✅ Yes | index.html + products.html spare parts card | Inline air filters in packaging |
| brands-serviced.png | Client-supplied (old site) | images/brands-serviced.png | ✅ Yes | about.html brands section | 7 brand logos panel |
| service-overhaul-technicians.png | Client-supplied (old site) | images/service-overhaul-technicians.png | ⚠️ Not yet wired | services/overhaul-reconditioning.html | Available — needs wiring |
| proj-1.jpeg – proj-6.jpeg | Client-supplied (old site) | images/projects/ | ✅ Yes | projects.html gallery | 6 project photos wired |

## Images needed from client (not yet supplied)

| Image ID | Page(s) | Section | Description needed | Ratio | Priority |
|---|---|---|---|---|---|
| airstone-product-photo | index.html, products.html, products/airstone.html | Product card / hero | Airstone rotary screw air compressor — clean shot, front or 3/4 angle | 4:3 or 16:10 | HIGH |
| industrial-bg-services | services.html, services/*.html | Grey background sections | Industrial compressed air / factory environment — suitable for tinted overlay | 16:9 | Medium |
| industrial-bg-about | index.html, about.html | About strip / industries section | Industrial environment — suitable for tinted overlay | 16:9 | Medium |

## Placeholder images needed

| Placeholder ID | Page / Section | Placeholder File | Image Needed | Ratio | Status | Notes |
|---|---|---|---|---|---|---|
| ph-airstone-product | products/airstone.html hero + index.html card | (using ceccato-compressor.jpg as temp) | Airstone compressor product photo | 4:3 | ⚠️ Temp image in place | Awaiting client |

## Final generated or supplied images

| Final Filename | Replaces Placeholder ID | Local Path | Approved | Intended Use | Notes |
|---|---|---|---|---|---|

## Image usage log

| Page | Section | Image Used / Placeholder | Status | Notes |
|---|---|---|---|---|
| index.html | Hero background | images/hero-bg.jpg | ✅ Active | CSS background on .hero |
| index.html | Airstone product card | images/products/ceccato-compressor.jpg | ⚠️ Temp | Was Ceccato photo — flag for Airstone replacement |
| index.html | Accessories card | images/products/compressor-accessories.jpg | ✅ Active | |
| index.html | Spare Parts card | images/products/spare-parts.webp | ✅ Active | |
| about.html | Brands section | images/brands-serviced.png | ✅ Active | |
| projects.html | Gallery (6 cards) | images/projects/proj-1 to proj-6 | ✅ Active | |