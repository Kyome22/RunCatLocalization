# RunCatLocalization

Manage RunCat localization srtings.

RunCat uses [SystemInfoKit](https://github.com/Kyome22/SystemInfoKit), so localization of this library is also required.

> [!NOTE]
> This repository does not accept requests or inquiries for RunCat.

## Supported languages

- Chinese, Simplified
- English (primary)
- French
- Japanese
- Korean

## Requirements

- Development with Xcode 16.4+
- Written in Swift 6.1
- Compatible with macOS 14.0+

## How to Contribute

1. Edit Sources/RunCatLocalization/RCLLanguage.swift

   ```diff swift
   public enum RCLLanguage: Sendable, Identifiable {
       case automatic
       case chineseSimplified
       case english
       case french
       case japanese
       case korean
   +   case newLanguage

       ︙

       public var locale: Locale {
           switch self {
           case .automatic:
               Locale.current
           case .chineseSimplified:
               Locale(languageCode: .chinese, script: .hanSimplified)
           case .english:
               Locale(languageCode: .english)
           case .french:
               Locale(languageCode: .french)
           case .japanese:
               Locale(languageCode: .japanese)
           case .korean:
               Locale(languageCode: .korean)
   +       case .newLanguege:
   +           Locale(languageCode: .newLanguageCode)
           }
       }

       ︙

       public static let allCases: [RCLLanguage] = [
           .chineseSimplified,
           .english,
           .french,
           .japanese,
           .korean,
   +       .newLanguage,
       ]
   }
   ```

2. Add Locale to xcstrings files in Sources/RunCatLocalization/Resources  
   <img src="https://github.com/user-attachments/assets/7d1772f7-c8f7-4616-86a8-7ecaf7983117" width="500px" />
3. Edit those xcstrings files  
   <img src="https://github.com/user-attachments/assets/4b8c5ff2-4c5c-4d22-a314-70d21f2e539c" width="500px" />

## Runner Names Translation Reference

https://kyome22.github.io/RunCatLocalization/

When contributing translations for runner names, please refer to this page to ensure appropriate translations that match each runner's characteristics. The page displays all runner names with their images and current translations, making it easier to understand the context and provide suitable translations.

## Notes

Please use wording that follows Apple platform conventions.
And refer to the [Apple Style Guide](https://support.apple.com/guide/applestyleguide/welcome/web) and [Apple Localization Terms Glossary](https://applelocalization.com/macos?q=Show&b=Finder.app&l=English&l=Japanese) for word choice.

## LICENSE

Apache License Version 2.0
