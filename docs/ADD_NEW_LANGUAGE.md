# Adding a New Language to RunCatLocalization Web Interface

This document describes the steps required to update the web interface when a new language has been added to the RunCatLocalization project.

## Overview

After a new language has been added to the Swift Package and `.xcstrings` files, you need to update the web interface files to display the new language on the translation reference page.

## Quick Update Commands

To update the web interface for a new language, you need to modify **3 files**:

### 1. Update convert.sh Script

**File**: `.github/workflows/scripts/convert.sh`

Add the new language to the `translations` object in the `jq` command:

```bash
# Find this section in the jq command:
translations: {
  "en": .value.localizations.en.stringUnit.value,
  "fr": .value.localizations.fr.stringUnit.value,
  "ja": .value.localizations.ja.stringUnit.value,
  "ko": .value.localizations.ko.stringUnit.value,
  "zh-Hans": .value.localizations["zh-Hans"].stringUnit.value,
  "new-language-code": .value.localizations["new-language-code"].stringUnit.value  # Add this line
}
```

**Example for German (`de`)**:

```bash
"de": .value.localizations.de.stringUnit.value,
```

### 2. Update index.html

**File**: `docs/index.html`

Add a new radio button in the language selection section:

```html
<!-- Find the language-radios div and add: -->
<label class="language-radio">
  <input type="radio" name="language" value="new-language-code" />
  <span class="flag">🏳️</span>
  <!-- Replace with appropriate flag emoji -->
  <span>Language Name</span>
  <!-- Replace with language name in native script -->
</label>
```

**Example for German**:

```html
<label class="language-radio">
  <input type="radio" name="language" value="de" />
  <span class="flag">🇩🇪</span>
  <span>Deutsch</span>
</label>
```

### 3. Update script.js

**File**: `docs/script.js`

Add the new language to the `supportedLanguages` array:

```javascript
// Find this line:
this.supportedLanguages = ["en", "fr", "ja", "ko", "zh-Hans"];

// Add your new language code:
this.supportedLanguages = ["en", "fr", "ja", "ko", "zh-Hans", "new-language-code"];
```

**Example for German**:

```javascript
this.supportedLanguages = ["en", "fr", "ja", "ko", "zh-Hans", "de"];
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

## Complete Example: Adding German

Here's what you need to change for adding German (`de`):

### 1. convert.sh

```bash
translations: {
  "en": .value.localizations.en.stringUnit.value,
  "fr": .value.localizations.fr.stringUnit.value,
  "ja": .value.localizations.ja.stringUnit.value,
  "ko": .value.localizations.ko.stringUnit.value,
  "zh-Hans": .value.localizations["zh-Hans"].stringUnit.value,
  "de": .value.localizations.de.stringUnit.value
}
```

### 2. index.html

```html
<label class="language-radio">
  <input type="radio" name="language" value="de" />
  <span class="flag">🇩🇪</span>
  <span>Deutsch</span>
</label>
```

### 3. script.js

```javascript
this.supportedLanguages = ["en", "fr", "ja", "ko", "zh-Hans", "de"];
```

## Notes

- The web interface will automatically pick up the new language once these changes are deployed
- The new language will appear as a radio button option in the "Additional Language" section
- English is always displayed as the primary language
- Only one additional language can be selected at a time
