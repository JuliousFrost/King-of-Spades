# King of Spades Design

## Intent

King of Spades turns Hermes Dashboard into a readable cinematic card table: royal, dark, practical, and low-friction for daily use.

## Design language

- Dark green/black felt table background
- Antique gold borders and dividers
- Burgundy/red active states
- Ivory typography for high contrast
- Card-corner motifs in the sidebar
- Transparent glass surfaces so the illustrated background remains visible

## Implementation constraints

- Keep the theme installable as user config, not a Hermes source patch.
- Keep dashboard styling in YAML.
- Use a hidden plugin only for serving the large background image.
- Prefer structural selectors and contrast contracts so nested dashboard text remains readable.

## Color tokens

- Table: `#080b08`
- Felt: `#102015`
- Card: `#15100d`
- Ivory: `#f5e6bd`
- Gold: `#c8953d`
- Red: `#b3312d`

## Accessibility

The theme explicitly avoids blend modes that reduce text contrast and pins foreground colors on active, card, muted, and destructive surfaces.
