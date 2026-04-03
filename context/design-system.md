# Design System — Radiant Engineering

## Status
LOCKED — extracted from live site (radiantcompressor.com.my).
These values must not be changed without explicit instruction.

---

## Brand Colours (Verified from live site)

| Token         | Hex       | Usage                                         |
|---------------|-----------|-----------------------------------------------|
| --charcoal    | #1F2933   | Primary dark — nav, footer, dark-bg sections  |
| --charcoal-700| #2D3D4A   | Slightly lighter charcoal for card variation  |
| --teal        | #27B7C5   | Brand accent — CTAs, highlights, icons, links |
| --teal-dark   | #1EA0AD   | Teal hover/active state                       |
| --teal-pale   | #E6F7F9   | Light teal tint for icon backgrounds          |
| --white       | #FFFFFF   | Page background, card backgrounds             |
| --gray-50     | #F6F7F8   | Alternate section background                  |
| --gray-100    | #EBEEF0   | Borders, dividers, subtle backgrounds         |
| --gray-200    | #D1D7DB   | Input borders, card borders                   |
| --gray-400    | #95A3AC   | Placeholder text                              |
| --gray-500    | #5F6B73   | Secondary / muted text                        |
| --gray-700    | #384049   | Dark body text on light backgrounds           |
| --text        | #1C1C1C   | Primary body text                             |
| --text-muted  | #5F6B73   | Supporting / secondary body text              |
| --border      | #DEE3E7   | Standard border colour                        |
| --surface     | #F6F7F8   | Surface / section background                  |

| --gray-600    | #505A63   | Mid-dark gray (between gray-500 and gray-700) |

### DO NOT USE
- Orange (#E07718 or similar) — not a Radiant brand colour
- Navy blue (#0B1F45 or similar) — not a Radiant brand colour

---

## CSS Token Naming Conventions (IMPORTANT)

The codebase uses **two parallel naming sets** — both are now defined in `:root`:

| Concept       | Short form (original) | Long form (alias added S17) |
|---------------|----------------------|------------------------------|
| Border radius | `--r-sm/md/lg/xl`    | `--radius-sm/md/lg/xl`       |
| Box shadow    | `--sh-card/card-up`  | `--shadow-card/card-hover`   |

**Rule:** Always prefer the short `--r-*` and `--sh-*` tokens in new CSS. The `--radius-*` and `--shadow-*` aliases exist only for backwards compatibility with §28–§31 component code.

**Spacing gap:** `--sp-7: 1.75rem` (28px) was added in Session 17. The full scale is now:
`sp-1(4px) sp-2(8px) sp-3(12px) sp-4(16px) sp-5(20px) sp-6(24px) sp-7(28px) sp-8(32px) sp-10(40px) sp-12(48px) sp-16(64px) sp-20(80px) sp-24(96px)`

---

## Typography (Verified from live site)

| Role     | Font       | Weights     | Notes                             |
|----------|------------|-------------|-----------------------------------|
| Headings | Montserrat | 600, 700, 800 | All h1–h6 elements              |
| Body     | Roboto     | 400, 500, 600 | All body text, UI labels        |

Google Fonts import:
```
https://fonts.googleapis.com/css2?family=Montserrat:wght@600;700;800&family=Roboto:wght@400;500;600&display=swap
```

---

## Design Intent

- Professional, industrial, trustworthy, practical, clean, structured
- Charcoal + teal is the established palette — consistent across all pages
- Teal is the primary action/accent colour (buttons, links, underlines, icons)
- Charcoal is the primary dark background (header, footer, dark sections)
- White and gray-50 alternate for section backgrounds on light pages

---

## Button Styles

| Type            | Background | Text    | Border     | Hover              |
|-----------------|------------|---------|------------|--------------------|
| Primary (teal)  | #27B7C5    | white   | transparent| darken to #1EA0AD  |
| Secondary       | transparent| #1F2933 | #1F2933    | fill with charcoal |
| Outline light   | transparent| white   | white 55%  | white bg 12%       |
| CTA primary     | white      | #1F2933 | white      | gray-50 bg         |

---

## Spacing Scale

- Base: 1rem (16px)
- Scale: 0.25 / 0.5 / 0.75 / 1 / 1.25 / 1.5 / 2 / 2.5 / 3 / 4 / 5 / 6 rem

---

## Section Background Alternation Pattern

1. Hero — charcoal
2. Trust bar — white
3. Services — white
4. About strip — gray-50
5. Products — charcoal
6. Why Radiant — white
7. Industries — gray-50
8. CTA strip — teal
9. Footer — charcoal

---

## Border Radius Scale

- sm: 4px
- md: 8px
- lg: 12px
- xl: 16px
- full: 9999px

---

## Shadows

- card: 0 2px 12px rgba(31,41,51,0.07)
- card-hover: 0 8px 28px rgba(31,41,51,0.14)
- header: 0 2px 8px rgba(31,41,51,0.10)
- lg: 0 8px 32px rgba(31,41,51,0.14)

---

## Responsive Breakpoints

- Mobile first
- sm: 600px
- md: 768px
- lg: 1024px
- xl: 1200px (container max-width)

---

## Uiverse.io Usage Rules

Uiverse.io (https://uiverse.io) is approved for CSS component inspiration. Components are pure HTML + CSS — no external dependencies needed.

### Approved patterns (already applied, keep consistent)

| Pattern | Where used | Rule |
|---------|-----------|------|
| Shimmer sweep `::after` on hover | `.btn-primary`, `.btn-cta-primary`, `.btn-whatsapp` | Apply to any new teal or white-filled primary buttons |
| Icon box flip (teal-pale/charcoal → teal on hover) | Service cards, Why cards | Apply to any new icon-card components |
| Image zoom `scale(1.06)` on hover | Product card images | Apply to any cards with images |
| Left border teal reveal `translateX(3px)` | About-feature list items | Apply to any feature-list rows |
| Lift `translateY(-2px)` on hover | Trust bar items | Apply to small badge/icon items |
| Pulse ring `::before` animation | WhatsApp float button | Keep only on float CTA — not general buttons |

### What NOT to use from Uiverse.io
- Neon glows or gradients that deviate from charcoal/teal palette
- Bouncy, spring, or exaggerated transforms
- Particle effects or 3D perspective flips
- Anything that does not suit an industrial B2B audience

### How to apply a new Uiverse component
1. Find the component at uiverse.io
2. Copy the CSS-only version
3. Strip any colours and replace with CSS tokens (`--teal`, `--charcoal`, etc.)
4. Add to the relevant CSS section in `styles.css`
5. Document the pattern in `build-state.md` Uiverse table
