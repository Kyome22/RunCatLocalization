# Adding a New Language to RunCatLocalization Web Interface

This document describes the steps required to update the web interface when a new language has been added to the RunCatLocalization project.

## Overview

After a new language has been added to the Swift Package and `.xcstrings` files, you need to update the web interface files to display the new language on the translation reference page.

## Quick Update Commands

To update the web interface for a new language, you need to follow these steps:

### 0. Update runner-names.json

**First, run the conversion script to update the JSON data:**

```bash
.github/workflows/scripts/convert.sh Sources/RunCatLocalization/Resources/RunnerName.xcstrings docs/runner-names.json
```

This will extract the latest translations from the `.xcstrings` file and generate the updated JSON.

### 1-3. Update Web Interface Files

Then modify **3 files**:

### 1. Update convert.sh Script

**File**: `.github/workflows/scripts/convert.sh`

Add the new language to the `translations` object in the `jq` command. **Important**: Maintain alphabetical order after English:

```bash
# Find this section in the jq command:
translations: {
  "en": .value.localizations.en.stringUnit.value,
  "de": .value.localizations.de.stringUnit.value,
  "fr": .value.localizations.fr.stringUnit.value,
  "ja": .value.localizations.ja.stringUnit.value,
  "ko": .value.localizations.ko.stringUnit.value,
  "zh-Hans": .value.localizations["zh-Hans"].stringUnit.value,
  "new-language-code": .value.localizations["new-language-code"].stringUnit.value  # Add this line in alphabetical order
}
```

**Example for Spanish (`es`)**:

```bash
"es": .value.localizations.es.stringUnit.value,
```

### 2. Update index.html

**File**: `docs/index.html`

Add a new radio button in the language selection section. **Important**: Maintain alphabetical order:

```html
<!-- Find the language-radios div and add in alphabetical order: -->
<label class="language-radio">
  <input type="radio" name="language" value="new-language-code" />
  <span class="flag">🏳️</span>
  <!-- Replace with appropriate flag emoji -->
  <span>Language Name</span>
  <!-- Replace with language name in native script -->
</label>
```

**Example for Spanish**:

```html
<label class="language-radio">
  <input type="radio" name="language" value="es" />
  <span class="flag">🇪🇸</span>
  <span>Español</span>
</label>
```

### 3. Update script.js

**File**: `docs/script.js`

Add the new language to the `supportedLanguages` array and `langNames` object. **Important**: Maintain alphabetical order:

```javascript
// Find this section and add your new language in alphabetical order:
// Primary language (always English)
this.primaryLanguage = "en";

// Additional languages in alphabetical order by language code
this.supportedLanguages = ["de", "fr", "ja", "ko", "zh-Hans", "new-language-code"];

// Also add to the langNames object in updateLanguageHeaders():
const langNames = {
  de: "Deutsch",
  fr: "Français",
  ja: "日本語",
  ko: "한국어",
  "zh-Hans": "简体中文",
  "new-language-code": "Language Name", // Add this line
};
```

**Example for Spanish**:

```javascript
// Additional languages in alphabetical order by language code
this.supportedLanguages = ["de", "es", "fr", "ja", "ko", "zh-Hans"];

// In langNames object:
const langNames = {
  de: "Deutsch",
  es: "Español",
  fr: "Français",
  ja: "日本語",
  ko: "한국어",
  "zh-Hans": "简体中文",
};
```

## Language Code Reference

Use standard ISO language codes:

- `en` - English
- `ja` - Japanese
- `ko` - Korean
- `zh-Hans` - Simplified Chinese
- `fr` - French
- `de` - German
- `es` - Spanish
- `it` - Italian
- `pt` - Portuguese
- `ru` - Russian

## Language Structure

**Important**: The language system uses a two-tier structure:

1. **Primary Language**: English (`en`) - Always displayed, separate from other languages
2. **Additional Languages**: All other languages in alphabetical order by language code

**Current structure**:

- **Primary**: `en` (English)
- **Additional**: `de`, `fr`, `ja`, `ko`, `zh-Hans` (alphabetical order)

**Examples**:

- German (`de`) comes before French (`fr`)
- Spanish (`es`) would come after German (`de`) and before French (`fr`)
- Italian (`it`) would come after German (`de`) and before Japanese (`ja`)

This structure must be maintained consistently across all three files:

- `convert.sh` - `translations` object (English first, then alphabetical)
- `index.html` - language radio buttons (alphabetical order only)
- `script.js` - `primaryLanguage` and `supportedLanguages` array (English separate, others alphabetical)

## Default Language Selection

**Important**: The default selected language is automatically determined:

1. **English (`en`)** - Always displayed as the primary language
2. **First additional language** - Automatically selected by default (currently German `de`)

**Rules**:

- No language should have `checked` attribute in `index.html`
- The system automatically selects the first additional language (index 0 in the `supportedLanguages` array)
- When new languages are added in alphabetical order, the default selection will automatically update to the new first language

**Example**: If Spanish (`es`) is added and becomes the first additional language, it will automatically become the default selection.

## Flag Emoji Reference

Use appropriate flag emojis for the language radio buttons:

- 🇺🇸 - English
- 🇯🇵 - Japanese
- 🇰🇷 - Korean
- 🇨🇳 - Simplified Chinese
- 🇫🇷 - French
- 🇩🇪 - German
- 🇪🇸 - Spanish
- 🇮🇹 - Italian
- 🇵🇹 - Portuguese
- 🇷🇺 - Russian

## Complete Example: Adding Spanish

Here's what you need to change for adding Spanish (`es`):

### 0. Update runner-names.json

```bash
.github/workflows/scripts/convert.sh Sources/RunCatLocalization/Resources/RunnerName.xcstrings docs/runner-names.json
```

### 1. convert.sh

```bash
translations: {
  "en": .value.localizations.en.stringUnit.value,
  "de": .value.localizations.de.stringUnit.value,
  "es": .value.localizations.es.stringUnit.value,
  "fr": .value.localizations.fr.stringUnit.value,
  "ja": .value.localizations.ja.stringUnit.value,
  "ko": .value.localizations.ko.stringUnit.value,
  "zh-Hans": .value.localizations["zh-Hans"].stringUnit.value
}
```

### 2. index.html

```html
<label class="language-radio">
  <input type="radio" name="language" value="es" />
  <span class="flag">🇪🇸</span>
  <span>Español</span>
</label>
```

### 3. script.js

```javascript
// Primary language (always English)
this.primaryLanguage = "en";

// Additional languages in alphabetical order by language code
this.supportedLanguages = ["de", "es", "fr", "ja", "ko", "zh-Hans"];

// In langNames object:
const langNames = {
  de: "Deutsch",
  es: "Español",
  fr: "Français",
  ja: "日本語",
  ko: "한국어",
  "zh-Hans": "简体中文",
};
```

## Notes

- The web interface will automatically pick up the new language once these changes are deployed
- The new language will appear as a radio button option in the "Additional Language" section
- English is always displayed as the primary language
- Only one additional language can be selected at a time
