import SwiftUI

public enum RCL {
    public enum Dashboard: String, Sendable, Identifiable, CaseIterable {
        case aboutApp
        case activityMonitor
        case back
        case categoryAnimal
        case categoryDefault
        case categoryInanimate
        case categorySeasonal
        case categorySelfMade
        case categorySpecial
        case help
        case helpFAQ
        case helpHowToRegister
        case more
        case reportAnIssue
        case runners
        case selfMade
        case settings
        case store
        case terminateApp

        public var id: String { rawValue }

        public func string(_ language: RCLLanguage = .automatic) -> String {
            let key: String.LocalizationValue = switch self {
            case .aboutApp: "aboutApp"
            case .activityMonitor: "activityMonitor"
            case .back: "back"
            case .categoryAnimal: "categoryAnimal"
            case .categoryDefault: "categoryDefault"
            case .categoryInanimate: "categoryInanimate"
            case .categorySeasonal: "categorySeasonal"
            case .categorySelfMade: "categorySelfMade"
            case .categorySpecial: "categorySpecial"
            case .help: "help"
            case .helpFAQ: "helpFAQ"
            case .helpHowToRegister: "helpHowToRegister"
            case .more: "more"
            case .reportAnIssue: "reportAnIssue"
            case .runners: "runners"
            case .selfMade: "selfMade"
            case .settings: "settings"
            case .store: "store"
            case .terminateApp: "terminateApp"
            }
            return String(localized: key, table: "Dashboard", bundle: language.bundle)
        }
    }

    public enum GeneralSettings: String, Sendable, Identifiable, CaseIterable {
        case allRunners
        case changedMyMind
        case flipHorizontally
        case invertSpeed
        case launch
        case launchAtLogin
        case onlyMonochromeRunners
        case runner
        case selectAutomatically
        case stop
        case stopRunner
        case stopRunnerMessage
        case stopRunnerTitle
        case useAccentColor

        public var id: String { rawValue }

        public func string(_ language: RCLLanguage = .automatic) -> String {
            let key: String.LocalizationValue = switch self {
            case .allRunners: "allRunners"
            case .changedMyMind: "changedMyMind"
            case .flipHorizontally: "flipHorizontally"
            case .invertSpeed: "invertSpeed"
            case .launch: "launch"
            case .launchAtLogin: "launchAtLogin"
            case .onlyMonochromeRunners: "onlyMonochromeRunners"
            case .runner: "runner"
            case .selectAutomatically: "selectAutomatically"
            case .stop: "stop"
            case .stopRunner: "stopRunner"
            case .stopRunnerMessage: "stopRunnerMessage"
            case .stopRunnerTitle: "stopRunnerTitle"
            case .useAccentColor: "useAccentColor"
            }
            return String(localized: key, table: "GeneralSettings", bundle: language.bundle)
        }
    }

    public enum Others: String, Sendable, Identifiable, CaseIterable {
        case queryLang
        case generalTab
        case localization
        case mailEnvironment
        case mailExpectedResult
        case mailIssueReport
        case mailReproduceIssue
        case mailShortDescription
        case mailWhatYouTried
        case support
        case systemInfoTab
        case translators

        public var id: String { rawValue }

        public func string(_ language: RCLLanguage = .automatic, _ items: String...) -> String {
            let key: String.LocalizationValue = switch self {
            case .queryLang: "\(items[0])queryLang"
            case .generalTab: "generalTab"
            case .localization: "localization"
            case .mailEnvironment: "mailEnvironment\(items[0])\(items[1])\(items[2])"
            case .mailExpectedResult: "mailExpectedResult"
            case .mailIssueReport: "mailIssueReport"
            case .mailReproduceIssue: "mailReproduceIssue"
            case .mailShortDescription: "mailShortDescription"
            case .mailWhatYouTried: "mailWhatYouTried"
            case .support: "support"
            case .systemInfoTab: "systemInfoTab"
            case .translators: "translators"
            }
            return String(localized: key, table: "Others", bundle: language.bundle)
        }
    }

    public enum RunnerName: String, Sendable, Identifiable, CaseIterable {
        case b_cat
        case bird
        case bonfire
        case butterfly
        case c_cat
        case cat
        case cat_cluster_metal
        case cat_flash
        case cat_golden
        case cat_nyan_mock
        case chameleon
        case cheetah
        case chicken
        case chime_wind
        case city
        case coffee
        case cogwheel
        case corgi_welsh
        case cradle
        case curve_sine
        case dinosaur
        case dog
        case dogeza
        case dolphin
        case dots
        case dragon
        case drink_tapioca
        case drop
        case duck_rubber
        case earth
        case engine
        case entaku
        case factory
        case fishman
        case fox
        case frog
        case frypan
        case ghost
        case greyhound
        case hedgehog
        case horse
        case human
        case lantern_o_jack
        case locomotive_steam
        case made_self
        case mochi
        case mouse
        case neko_maneki
        case octopus
        case otter
        case owl
        case parrot
        case pendulum
        case penguin
        case penguin2
        case people_party
        case pig
        case pulse
        case puppy
        case rabbit
        case reactor
        case rocket
        case runners_all
        case sausage
        case sheep
        case sleigh_reindeer
        case slime
        case snowman
        case sparkler
        case squirrel
        case sushi
        case sushi_rotating
        case tail_cat
        case terrier
        case triforce
        case uhooi
        case up_push
        case up_sit
        case whale
        case wheel_hamster

        public var id: String { rawValue }

        public func string(_ language: RCLLanguage = .automatic) -> String {
            let key: String.LocalizationValue = switch self {
            case .b_cat: "b_cat"
            case .bird: "bird"
            case .bonfire: "bonfire"
            case .butterfly: "butterfly"
            case .c_cat: "c_cat"
            case .cat: "cat"
            case .cat_cluster_metal: "cat_cluster_metal"
            case .cat_flash: "cat_flash"
            case .cat_golden: "cat_golden"
            case .cat_nyan_mock: "cat_nyan_mock"
            case .chameleon: "chameleon"
            case .cheetah: "cheetah"
            case .chicken: "chicken"
            case .chime_wind: "chime_wind"
            case .city: "city"
            case .coffee: "coffee"
            case .cogwheel: "cogwheel"
            case .corgi_welsh: "corgi_welsh"
            case .cradle: "cradle"
            case .curve_sine: "curve_sine"
            case .dinosaur: "dinosaur"
            case .dog: "dog"
            case .dogeza: "dogeza"
            case .dolphin: "dolphin"
            case .dots: "dots"
            case .dragon: "dragon"
            case .drink_tapioca: "drink_tapioca"
            case .drop: "drop"
            case .duck_rubber: "duck_rubber"
            case .earth: "earth"
            case .engine: "engine"
            case .entaku: "entaku"
            case .factory: "factory"
            case .fishman: "fishman"
            case .fox: "fox"
            case .frog: "frog"
            case .frypan: "frypan"
            case .ghost: "ghost"
            case .greyhound: "greyhound"
            case .hedgehog: "hedgehog"
            case .horse: "horse"
            case .human: "human"
            case .lantern_o_jack: "lantern_o_jack"
            case .locomotive_steam: "locomotive_steam"
            case .made_self: "made_self"
            case .mochi: "mochi"
            case .mouse: "mouse"
            case .neko_maneki: "neko_maneki"
            case .octopus: "octopus"
            case .otter: "otter"
            case .owl: "owl"
            case .parrot: "parrot"
            case .pendulum: "pendulum"
            case .penguin: "penguin"
            case .penguin2: "penguin2"
            case .people_party: "people_party"
            case .pig: "pig"
            case .pulse: "pulse"
            case .puppy: "puppy"
            case .rabbit: "rabbit"
            case .reactor: "reactor"
            case .rocket: "rocket"
            case .runners_all: "runners_all"
            case .sausage: "sausage"
            case .sheep: "sheep"
            case .sleigh_reindeer: "sleigh_reindeer"
            case .slime: "slime"
            case .snowman: "snowman"
            case .sparkler: "sparkler"
            case .squirrel: "squirrel"
            case .sushi: "sushi"
            case .sushi_rotating: "sushi_rotating"
            case .tail_cat: "tail_cat"
            case .terrier: "terrier"
            case .triforce: "triforce"
            case .uhooi: "uhooi"
            case .up_push: "up_push"
            case .up_sit: "up_sit"
            case .whale: "whale"
            case .wheel_hamster: "wheel_hamster"
            }
            return String(localized: key, table: "RunnerName", bundle: language.bundle)
        }
    }

    public enum RunnersStore: String, Sendable, Identifiable, CaseIterable {
        case categoryAnimal
        case categoryInanimate
        case categoryRecommended
        case categorySeasonal
        case categorySpecial
        case failedVerification
        case pending
        case productNotFound
        case productNotFoundSuggestion
        case productUnavailable
        case purchase
        case purchaseErrorTitle
        case purchaseNotAllowed
        case purchaseNotAllowedSuggestion
        case restore
        case restoreTitle
        case runnersStoreTitle
        case unknownError
        case userCancelled

        public var id: String { rawValue }

        public func string(_ language: RCLLanguage = .automatic) -> String {
            let key: String.LocalizationValue = switch self {
            case .categoryAnimal: "categoryAnimal"
            case .categoryInanimate: "categoryInanimate"
            case .categoryRecommended: "categoryRecommended"
            case .categorySeasonal: "categorySeasonal"
            case .categorySpecial: "categorySpecial"
            case .failedVerification: "failedVerification"
            case .pending: "pending"
            case .productNotFound: "productNotFound"
            case .productNotFoundSuggestion: "productNotFoundSuggestion"
            case .productUnavailable: "productUnavailable"
            case .purchase: "purchase"
            case .purchaseErrorTitle: "purchaseErrorTitle"
            case .purchaseNotAllowed: "purchaseNotAllowed"
            case .purchaseNotAllowedSuggestion: "purchaseNotAllowedSuggestion"
            case .restore: "restore"
            case .restoreTitle: "restoreTitle"
            case .runnersStoreTitle: "runnersStoreTitle"
            case .unknownError: "unknownError"
            case .userCancelled: "userCancelled"
            }
            return String(localized: key, table: "RunnersStore", bundle: language.bundle)
        }
    }

    public enum SelfMadeRunners: String, Sendable, Identifiable, CaseIterable {
        case color
        case conflictName
        case formatPrecondition
        case frames
        case heightPrecondition
        case preconditions
        case preview
        case register
        case registerErrorTitle
        case registeredRunners
        case runnerName
        case selfMadeRunnersTitle
        case toRegister
        case useOriginalColor
        case violatePrecondition
        case violateUpperLimit
        case widthPrecondition

        public var id: String { rawValue }

        public func string(_ language: RCLLanguage = .automatic) -> String {
            let key: String.LocalizationValue = switch self {
            case .color: "color"
            case .conflictName: "conflictName"
            case .formatPrecondition: "formatPrecondition"
            case .frames: "frames"
            case .heightPrecondition: "heightPrecondition"
            case .preconditions: "preconditions"
            case .preview: "preview"
            case .register: "register"
            case .registerErrorTitle: "registerErrorTitle"
            case .registeredRunners: "registeredRunners"
            case .runnerName: "runnerName"
            case .selfMadeRunnersTitle: "selfMadeRunnersTitle"
            case .toRegister: "toRegister"
            case .useOriginalColor: "useOriginalColor"
            case .violatePrecondition: "violatePrecondition"
            case .violateUpperLimit: "violateUpperLimit"
            case .widthPrecondition: "widthPrecondition"
            }
            return String(localized: key, table: "SelfMadeRunners", bundle: language.bundle)
        }
    }

    public enum SystemInfoBar: String, Sendable, Identifiable, CaseIterable {
        case available
        case barGraph
        case onlyIcon
        case percentage
        case pieChart
        case showBatteryState
        case showCPUUsage
        case showMemoryPerformance
        case showNetworkSpeed
        case showStorageCapacity
        case used

        public var id: String { rawValue }

        public func string(_ language: RCLLanguage = .automatic) -> String {
            let key: String.LocalizationValue = switch self {
            case .available: "available"
            case .barGraph: "barGraph"
            case .onlyIcon: "onlyIcon"
            case .percentage: "percentage"
            case .pieChart: "pieChart"
            case .showBatteryState: "showBatteryState"
            case .showCPUUsage: "showCPUUsage"
            case .showMemoryPerformance: "showMemoryPerformance"
            case .showNetworkSpeed: "showNetworkSpeed"
            case .showStorageCapacity: "showStorageCapacity"
            case .used: "used"
            }
            return String(localized: key, table: "SystemInfoBar", bundle: language.bundle)
        }
    }

    public enum SystemInfoSettings: String, Sendable, Identifiable, CaseIterable {
        case activate
        case activateSystemInfoBarMessage
        case activateSystemInfoBarTitle
        case batteryState
        case changedMyMind
        case experimentalFeature
        case memoryPerformance
        case monitoring
        case networkConnection
        case storageCapacity
        case systemInfoBar

        public var id: String { rawValue }

        public func string(_ language: RCLLanguage = .automatic) -> String {
            let key: String.LocalizationValue = switch self {
            case .activate: "activate"
            case .activateSystemInfoBarMessage: "activateSystemInfoBarMessage"
            case .activateSystemInfoBarTitle: "activateSystemInfoBarTitle"
            case .batteryState: "batteryState"
            case .changedMyMind: "changedMyMind"
            case .experimentalFeature: "experimentalFeature"
            case .memoryPerformance: "memoryPerformance"
            case .monitoring: "monitoring"
            case .networkConnection: "networkConnection"
            case .storageCapacity: "storageCapacity"
            case .systemInfoBar: "systemInfoBar"
            }
            return String(localized: key, table: "SystemInfoSettings", bundle: language.bundle)
        }
    }
}