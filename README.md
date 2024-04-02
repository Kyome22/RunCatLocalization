# RunCatLocalization

Manage RunCat localization srtings.

RunCat uses [SystemInfoKit](https://github.com/Kyome22/SystemInfoKit), so localization of this library is also required.

## Supported languages

- English (primary)
- Japanese

## Check Strings with GUI

```sh
$ sh generate-strings.sh
$ open StringsChecker/StringsChecker.xcodeproj
```

Build & Run StringsChecker project.

<img src="Screenshots/strings-cheker.png" width="500px" />

## How to Contribute

1. Add Locale to StringsChecker Target  
   <img src="Screenshots/add-locale-to-target.png" width="500px" />
2. Edit StringsChecker/Language.swift  
   ```diff swift
   enum Language: String, Identifiable, CaseIterable {
       case english = "en"
       case japanese = "ja"
   +   case newLanguage = "new language code"
   
       var id: String { rawValue }
   
       var locale: Locale {
           Locale(identifier: rawValue)
       }
   
       var title: String {
           return switch self {
           case .english: "🇺🇸 English"
           case .japanese: "🇯🇵 日本語"
   +       case .newLanguage = "🏁 New Language"
           }
       }
   }
   ```
3. Add Locale to xcstrings files in Sources/RunCatLocalization/Resources  
   <img src="Screenshots/add-locale-to-xcstrings.png" width="500px" />
4. Edit those xcstrings files  
   <img src="Screenshots/edit-xcstrings.png" width="500px" />

## LICENSE

Apache License Version 2.0
