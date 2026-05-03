# Sharp Editorial UI Theme
### A clean, bold, black-outline design system

---

## Core Philosophy

> **"Newspaper meets SaaS."**
> No gradients. No rounded blobs. No shadow theatrics.
> Just sharp edges, confident typography, and brutal clarity.

---

## 1. Color Palette

| Token | Hex | Usage |
|-------|-----|-------|
| `--black` | `#111111` | Text, borders, buttons, navbar |
| `--white` | `#FFFFFF` | Cards, surfaces, button hover |
| `--off-white` | `#F7F7F7` | Page background |
| `--grey-100` | `#F0F0F0` | Table rows hover, input backgrounds |
| `--grey-200` | `#E0E0E0` | Dividers, subtle borders |
| `--grey-400` | `#999999` | Placeholder text, muted labels |
| `--grey-600` | `#555555` | Secondary body text |
| `--danger` | `#C0392B` | Errors, delete actions, arrears |
| `--success` | `#1A7A4A` | Confirmations, paid balances |
| `--warning` | `#B8860B` | Pending states, medium urgency |

**Rule:** Never use bright/neon colors. Keep the palette minimal — black, white, grey, and 3 semantic colors only.

---

## 2. Typography

**Font:** [Inter](https://fonts.google.com/specimen/Inter) from Google Fonts

```html
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
```

```css
body {
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
  -webkit-font-smoothing: antialiased;
}
```

### Scale & Weights

| Element | Size | Weight | Letter Spacing |
|---------|------|--------|---------------|
| Page H1 | `2.25rem` | **900** | `-0.04em` |
| Section H2 | `1.6rem` | **800** | `-0.03em` |
| Card H3 | `1.2rem` | **700** | `-0.02em` |
| Body text | `0.95rem` | 400 | normal |
| Labels / tags | `0.72rem` | **700** | `+0.08em` + UPPERCASE |
| Table headers | `0.70rem` | **700** | `+0.10em` + UPPERCASE |

**Rule:** Headings are always heavy (800–900). Labels are always uppercase + tracked. Body text is normal weight.

---

## 3. Borders & Shadows — The Signature Look

This is what makes the theme sharp and recognisable.

```css
/* Core border */
border: 2px solid #111111;
border-radius: 2px; /* Almost zero — keeps it sharp */

/* Flat offset shadow — the editorial punch */
box-shadow: 4px 4px 0px #111111;

/* Hover state: card lifts with the shadow */
.card:hover {
  box-shadow: 4px 4px 0px #111111;
}

/* Small variant */
box-shadow: 2px 2px 0px #111111;
```

**Rule:** No `border-radius` above `4px`. No blurred `box-shadow`. Only flat offset shadows.

---

## 4. Components

### Navbar
```css
background: #111111;        /* Solid black bar */
color: #FFFFFF;
height: 64px;
border-bottom: 3px solid #111111;
position: sticky;
top: 0;
```
- Logo: white, weight 900, letter-spacing `-0.05em`
- Nav links: `0.85rem`, `600`, uppercase, white → black on hover with white bg pill

### Cards
```css
background: #FFFFFF;
border: 2px solid #111111;
border-radius: 2px;
padding: 1.5rem;
transition: box-shadow 0.15s;
```
- Header: `border-bottom: 2px solid #111` separates title from content
- On hover: add `box-shadow: 4px 4px 0 #111`

### Stat Cards (KPI blocks)
```css
/* Top accent stripe */
::before {
  content: '';
  position: absolute;
  top: 0; left: 0;
  width: 100%; height: 4px;
  background: #111111;
}
```
- Label: `0.7rem`, `700`, uppercase, grey-600
- Value: `2rem`, `900`, letter-spacing `-0.04em`

### Buttons
```css
/* Primary */
.btn-primary {
  background: #111111;
  color: #FFFFFF;
  border: 2px solid #111111;
  border-radius: 2px;
  font-weight: 700;
  padding: 0.6rem 1.25rem;
}

/* Hover: invert + add shadow */
.btn-primary:hover {
  background: #FFFFFF;
  color: #111111;
  box-shadow: 4px 4px 0 #111111;
}

/* Outline */
.btn-outline {
  background: transparent;
  color: #111111;
  border: 2px solid #111111;
}
.btn-outline:hover {
  background: #111111;
  color: #FFFFFF;
}
```

### Form Inputs
```css
input, select, textarea {
  border: 2px solid #E0E0E0;  /* light grey default */
  border-radius: 2px;
  font-family: 'Inter', sans-serif;
  font-size: 0.95rem;
  padding: 0.65rem 0.9rem;
  transition: border-color 0.12s;
}

input:focus {
  border-color: #111111;      /* snaps to black on focus */
  box-shadow: 2px 2px 0 #111111;
  outline: none;
}
```
- Labels: `0.78rem`, `700`, uppercase, `+0.06em` tracking, always above the field

### Tables
```css
thead {
  background: #111111;
  color: #FFFFFF;
}
thead th {
  font-size: 0.70rem;
  font-weight: 700;
  letter-spacing: 0.10em;
  text-transform: uppercase;
  padding: 0.8rem 1rem;
}
tbody tr:hover {
  background: #F0F0F0;
}
```
Wrap table in a `2px solid #111` border container.

### Status Badges / Pills
```css
.badge {
  display: inline-flex;
  padding: 0.2rem 0.6rem;
  font-size: 0.68rem;
  font-weight: 800;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  border-radius: 2px;
  border: 1.5px solid currentColor;
}
```
Use semantic colors for fill (light tint bg) + border matching the text color.

---

## 5. Page Structure Rules

- **Page background:** `#F7F7F7` (slightly off-white, not pure white)
- **Page header:** Bold H1 + subtitle separated from content by a `3px solid #111` bottom border
- **Max content width:** `1280px`, centered, `padding: 2rem 1.5rem`
- **Section spacing:** `2rem` between major sections
- **Card grid:** `gap: 1.25rem` between cards

---

## 6. Micro-Animations

Keep them subtle — this theme is about precision, not flair.

```css
/* Fade in on load */
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(8px); }
  to   { opacity: 1; transform: translateY(0); }
}
.card { animation: fadeIn 0.25s ease both; }

/* All interactive elements */
transition: background 0.12s, color 0.12s, box-shadow 0.15s;
```

---

## 7. Design Rules (Do / Don't)

| ✅ Do | ❌ Don't |
|------|---------|
| Use 2px solid borders everywhere | Use border-radius > 4px |
| Heavy (800–900) headings | Use light font weights for headings |
| Uppercase + tracked labels | Use sentence-case for form labels |
| Flat 4px offset shadow on cards/buttons | Use blurred drop shadows (`box-shadow: 0 4px 12px rgba(...)`) |
| Black navbar, white content body | Use colored navbars |
| Invert button on hover (fill ↔ outline swap) | Use opacity hover effects |
| Semantic badge colors (tint bg + colored border) | Use rounded pill badges |
| Inter font | Use system font stacks for headings |
| `#F7F7F7` page background | Use pure `#FFFFFF` as page background |

---

## Quick Start CSS Variables

Copy this block to the top of any stylesheet to apply the theme instantly:

```css
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800;900&display=swap');

:root {
  --black:      #111111;
  --white:      #FFFFFF;
  --off-white:  #F7F7F7;
  --grey-100:   #F0F0F0;
  --grey-200:   #E0E0E0;
  --grey-400:   #999999;
  --grey-600:   #555555;
  --danger:     #C0392B;
  --success:    #1A7A4A;
  --warning:    #B8860B;

  --border:      2px solid #111111;
  --radius:      2px;
  --shadow-flat: 4px 4px 0px #111111;
  --shadow-sm:   2px 2px 0px #111111;
  --font:        'Inter', -apple-system, sans-serif;
}

* { box-sizing: border-box; margin: 0; padding: 0; }

body {
  font-family: var(--font);
  background: var(--off-white);
  color: var(--black);
  -webkit-font-smoothing: antialiased;
}
```
