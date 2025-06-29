# RunCatLocalization

Manage RunCat localization srtings.

RunCat uses [SystemInfoKit](https://github.com/Kyome22/SystemInfoKit), so localization of this library is also required.

> [!NOTE]
> This repository does not accept requests or inquiries for RunCat.

## Supported languages

- English (primary)
- Japanese
- Korean

## Requirements

- Development with Xcode 16.2+
- Written in Swift 6.0
- Compatible with macOS 14.0+

## How to Contribute

1. Edit Sources/RunCatLocalization/RCLLanguage.swift

   ```diff swift
   public enum RCLLanguage: String, Sendable, Identifiable {
       case automatic
       case english = "en"
       case japanese = "ja"
       case korean = "ko"
   +   case newLanguage = "new language code"

       ︙

       public static let allCases: [RCLLanguage] = [
           .english,
           .japanese,
           .korean,
   +       .newLanguage
       ]
   }
   ```

2. Add Locale to xcstrings files in Sources/RunCatLocalization/Resources  
   <img src="https://github.com/user-attachments/assets/7d1772f7-c8f7-4616-86a8-7ecaf7983117" width="500px" />
3. Edit those xcstrings files  
   <img src="https://github.com/user-attachments/assets/4b8c5ff2-4c5c-4d22-a314-70d21f2e539c" width="500px" />

## Notes

Please use wording that follows Apple platform conventions.
And refer to the [Apple Style Guide](https://support.apple.com/guide/applestyleguide/welcome/web) and [Apple Localization Terms Glossary](https://applelocalization.com/macos?q=Show&b=Finder.app&l=English&l=Japanese) for word choice.

## LICENSE

Apache License Version 2.0
