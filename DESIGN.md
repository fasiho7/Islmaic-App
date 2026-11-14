---
name: Serene Devotion
colors:
  surface: '#f8faf7'
  surface-dim: '#d8dbd8'
  surface-bright: '#f8faf7'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f2f4f1'
  surface-container: '#eceeeb'
  surface-container-high: '#e7e9e6'
  surface-container-highest: '#e1e3e0'
  on-surface: '#191c1b'
  on-surface-variant: '#41493e'
  inverse-surface: '#2e312f'
  inverse-on-surface: '#eff1ee'
  outline: '#717a6d'
  outline-variant: '#c0c9bb'
  surface-tint: '#2a6b2c'
  primary: '#00450d'
  on-primary: '#ffffff'
  primary-container: '#1b5e20'
  on-primary-container: '#90d689'
  inverse-primary: '#91d78a'
  secondary: '#755b00'
  on-secondary: '#ffffff'
  secondary-container: '#fed255'
  on-secondary-container: '#735a00'
  tertiary: '#00450d'
  on-tertiary: '#ffffff'
  tertiary-container: '#055f18'
  on-tertiary-container: '#86d881'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#acf4a4'
  primary-fixed-dim: '#91d78a'
  on-primary-fixed: '#002203'
  on-primary-fixed-variant: '#0c5216'
  secondary-fixed: '#ffe08e'
  secondary-fixed-dim: '#ecc246'
  on-secondary-fixed: '#241a00'
  on-secondary-fixed-variant: '#584400'
  tertiary-fixed: '#a3f69c'
  tertiary-fixed-dim: '#88d982'
  on-tertiary-fixed: '#002204'
  on-tertiary-fixed-variant: '#005312'
  background: '#f8faf7'
  on-background: '#191c1b'
  surface-variant: '#e1e3e0'
typography:
  display-counter:
    fontFamily: Inter
    fontSize: 72px
    fontWeight: '300'
    lineHeight: 80px
    letterSpacing: -0.04em
  display-counter-mobile:
    fontFamily: Inter
    fontSize: 64px
    fontWeight: '300'
    lineHeight: 72px
    letterSpacing: -0.04em
  headline-lg:
    fontFamily: Inter
    fontSize: 28px
    fontWeight: '600'
    lineHeight: 36px
    letterSpacing: -0.02em
  headline-md:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
    letterSpacing: -0.01em
  headline-sm:
    fontFamily: Inter
    fontSize: 20px
    fontWeight: '500'
    lineHeight: 28px
  title-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '600'
    lineHeight: 24px
    letterSpacing: 0.01em
  body-lg:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  label-lg:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '500'
    lineHeight: 20px
    letterSpacing: 0.01em
  label-md:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
    letterSpacing: 0.04em
  label-sm:
    fontFamily: Inter
    fontSize: 11px
    fontWeight: '500'
    lineHeight: 16px
    letterSpacing: 0.05em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  gutter: 0.75rem
  margin: 1rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 0.75rem
  space-lg: 1rem
  space-xl: 1.5rem
---

## Brand & Style

This design system is crafted for a reverent, contemplative Islamic companion experience focused on daily spiritual habits—Tasbeeh tracking, prayer schedules, audio reflection, and habitual logs.

### Aesthetic Direction: Modern Sacred Minimalism (Material 3)
The visual tone balances traditional spiritual serenity with Google Material 3 precision. It avoids high-friction visuals, frantic notifications, and decorative excess, cultivating an atmosphere of quietude, concentration, and focus.

### Core Visual Principles
- **Peace & Restraint:** Layouts favor generous breathing room, clean lines, and soft, natural contrast that minimizes visual fatigue during evening or early morning use (Fajr/Tahajjud).
- **Geometric Aniconism:** Under no circumstances should human portraits, facial photography, or figurative illustrations be incorporated. Visual metaphors rely strictly on elegant typography, precise geometric motifs, clean iconography, and soft progressive rings.
- **Quiet Affirmation:** Celebratory states (milestones, completed targets, continuous streaks) are marked with warm, restrained metallic gold highlights rather than loud or arcade-like gamification.

## Colors

The color palette reflects natural balance, quiet forests, parchment, and aged brass, reinforcing peace and longevity.

### Palette Applications

#### Primary & Accents
- **Forest Green (`#1B5E20`):** Core brand anchor used for primary action buttons, selected navigation states, prominent badges, and prayer timeline active indicators.
- **Emerald Accent (`#2E7D32` / `#66BB6A`):** Supporting tint used for active prayer indicators, circular progress bars, active sliders, and soft tonal container fills.
- **Warm Gold (`#C9A227` / `#D4AF37`):** Accent role reserved exclusively for milestones, completion badges ("Target Reached"), streak counters, and special devotional markers.

#### Light Mode Surfaces
- **App Background:** `#F7F9F6` (peaceful off-white linen tint, reducing eye strain relative to pure white).
- **Surface / Card Fill:** `#FFFFFF` (pure white elevated card containers).
- **Primary Text:** `#191C19` (high-legibility dark botanical charcoal).
- **Secondary / Muted Text:** `#414942` (subtle slate-sage for subtitles, meta details, and inactive tabs).

#### Dark Mode Surfaces
- **App Background:** `#0E1A12` (deep vegetal night).
- **Card / Surface Container:** `#142319` (elevated moss tone).
- **Border / Divider:** `#1E3526` (low-contrast structural separation).
- **Primary Text:** `#E1E3DE` (soft warm ivory).
- **Secondary Text:** `#8C9389` (balanced muted sage).

## Typography

The typography leverages **Inter** for its neutral geometry, uniform vertical metrics, and tabular numeric capabilities crucial for digital counters and prayer timetables.

### Typographic Hierarchy Rules
- **Tabular Figures:** Always apply `font-variant-numeric: tabular-nums` to digital counters, timers, and countdown clocks to eliminate horizontal jitter during incrementing.
- **Display Counter (`72px` / `64px`):** Rendered with a light weight (`300`) to keep massive numerals elegant and spiritual rather than industrial.
- **Top App Bar Titles:** Standardized at `headline-md` (24px) for screens and modal headers.
- **Arabic Inscriptions / Duas (if present):** Ensure line height is set to at least 1.8x to provide breathing space for traditional diacritical vowel marks (tashkeel).

## Layout & Spacing

Designed primarily for single-hand mobile operation on standard 390x844 form factors.

### Grid & Layout Rules
- **Canvas Margins:** Screen edge padding is fixed at `1rem` (16px), giving maximum usable area to cards and counters while maintaining comfortable edge clearance.
- **Card Stacking Rhythm:** Consecutive cards and vertical list groupings follow a strict `0.75rem` (12px) rhythm.
- **Thumb Zone Priority:** Primary triggers—such as the massive Tasbeeh tap target and audio play/pause controls—reside squarely within the lower 60% of the viewport.
- **Safe Area Insets:** Top App Bar respects system status bar insets (typically 44px-48px). Bottom Navigation Bar accounts for Android gesture pill navigation with 8px-16px additional bottom clearance.

## Elevation & Depth

Visual hierarchy uses Material 3 surface elevation, subtle tonal layering, and soft ambient shadows. Harsh cutoffs and thick drop shadows are avoided.

### Surface Tiers & Layering
- **Level 0 (Base Canvas):** Background canvas (`#F7F9F6` Light / `#0E1A12` Dark). Flat, un-elevated.
- **Level 1 (Default Content Cards):** Pure White (`#FFFFFF`) with a micro-elevation shadow: `0px 2px 8px -2px rgba(27, 94, 32, 0.05)`. In Dark Mode, cards use container surface `#142319` with a subtle 1px border (`#1E3526`) and zero drop shadow.
- **Level 2 (Active/Playing Elements & Sticky Bars):** Floating mini-players or active prayer highlight cards use `0px 4px 16px -4px rgba(27, 94, 32, 0.10)`.
- **Level 3 (Modal Sheets & Dialogs):** Bottom sheets and full counter target selectors sit on elevated surfaces with backdrop dimming (`rgba(14, 26, 18, 0.45)`).

## Shapes

The design system uses a Level 2 curvature profile, providing a friendly, organic touch that complements natural Islamic architectural arches without overt ornamentation.

### Radius Scale
- **Default Elements (`0.5rem` / 8px):** Small utility inputs, inner list selections, audio track thumbnails, and tooltips.
- **Cards & Containers (`rounded-lg` - `1rem` / 16px):** Standard content cards, prayer time containers, daily record cards, and bottom sheets.
- **Modal Containers (`rounded-xl` - `1.5rem` / 24px):** Dialog boxes and top corners of expandable bottom sheets.
- **Pills / Full Circles (`9999px`):** Category filter chips, interactive action buttons, icon buttons, and the giant central Tasbeeh tap target.

## Components

### Top App Bar
- Fixed height of 56px (plus system status bar offset).
- Contains leading brand text ("Islamic Companion") in `headline-md` (24px), semi-bold.
- Trailing action: Theme toggle button (Sun/Moon icon) inside a 40x40px touch container.
- Surface color matches canvas with zero border until scrolled, upon which a subtle 1px divider (`#E0E5DF` Light / `#1E3526` Dark) appears.

### Bottom Navigation Bar (Material 3)
- Fixed height: 80px (including label space).
- 4 Destinations: **Tasbeeh**, **Nasheed**, **Prayer Times**, **Record**.
- Active indicator: Soft capsule pill (`#E8F5E9` in Light mode with Forest Green icon; `#1E3526` in Dark mode with Emerald icon).
- Icons: Outlined variant for inactive state; filled variant for active state.
- Label: `label-sm` (11px), transitioning to bold weight when active.

### Cards
- Corner radius: `16px`.
- Padding: `16px` internal padding throughout.
- Gap: `12px` between stacked cards.
- Background: Pure White (`#FFFFFF`) with 1px border (`#EDF2EC`) in Light Mode; `#142319` with 1px border (`#1E3526`) in Dark Mode.
- Next Prayer card features an emerald accent left border (4px) to denote immediacy.

### Tasbeeh Counter Element
- **Main Button:** Giant circular interactive target (minimum 220px × 220px), centered in the lower-middle screen. Features a gentle tactile inset press animation (scale down to 0.96 on touch down).
- **Progress Track:** Circular ring encircling the button or primary counter with a smooth stroke (8px thickness). Base track in `#E8F5E9` (Light) or `#1E3526` (Dark); fill track in `#2E7D32` (Emerald) shifting smoothly to `#C9A227` (Gold) upon reaching the target number (e.g., 33 / 99 / 100).
- **Counter Typography:** Tabular numeric `72px` (Light weight 300) placed prominently above or inside the counter circle.
- **Haptic Feedback:** Short, discreet vibration tick on each increment; distinct double vibration on target completion.

### Filter & Category Chips
- Pill-shaped (`9999px` radius), height 32px.
- Inactive: Background `#F0F4F0`, text `#414942`, no border.
- Active: Background `#1B5E20`, text `#FFFFFF`.
- Padding: 12px horizontal, 6px vertical.

### Audio / Nasheed Player Elements
- Continuous mini-player docked right above the Bottom Navigation Bar.
- Height: 64px, rounded corners (12px), background `#FFFFFF` (Light) or `#142319` (Dark).
- Play/Pause: 44px circular icon button in Forest Green.
- Progress Slider: Slim 4px bar with emerald buffer and gold active indicator.

### Daily Record & Streak Badges
- Streak counter styled with Warm Gold (`#C9A227`) tint background (12% opacity) and solid gold text/star/crescent icon.
- Checklist items: 20px rounded checkboxes with forest green check fills and smooth fade animations.