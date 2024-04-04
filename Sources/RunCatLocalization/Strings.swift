import SwiftUI

public enum RCL {
    public enum Dashboard: String, Identifiable, CaseIterable {
        case aboutApp
        case activityMonitor
        case back
        case categoryAnimal
        case categoryDefault
        case categoryInanimate
        case categorySeasonal
        case categorySelfMade
        case categorySpecial
        case debugSleep
        case debugWakeUp
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

        public func string(lang: String) -> String {
            return switch self {
            case .aboutApp:
                String(localized: "aboutApp", table: "Dashboard", lang: lang)
            case .activityMonitor:
                String(localized: "activityMonitor", table: "Dashboard", lang: lang)
            case .back:
                String(localized: "back", table: "Dashboard", lang: lang)
            case .categoryAnimal:
                String(localized: "categoryAnimal", table: "Dashboard", lang: lang)
            case .categoryDefault:
                String(localized: "categoryDefault", table: "Dashboard", lang: lang)
            case .categoryInanimate:
                String(localized: "categoryInanimate", table: "Dashboard", lang: lang)
            case .categorySeasonal:
                String(localized: "categorySeasonal", table: "Dashboard", lang: lang)
            case .categorySelfMade:
                String(localized: "categorySelfMade", table: "Dashboard", lang: lang)
            case .categorySpecial:
                String(localized: "categorySpecial", table: "Dashboard", lang: lang)
            case .debugSleep:
                String(localized: "debugSleep", table: "Dashboard", lang: lang)
            case .debugWakeUp:
                String(localized: "debugWakeUp", table: "Dashboard", lang: lang)
            case .help:
                String(localized: "help", table: "Dashboard", lang: lang)
            case .helpFAQ:
                String(localized: "helpFAQ", table: "Dashboard", lang: lang)
            case .helpHowToRegister:
                String(localized: "helpHowToRegister", table: "Dashboard", lang: lang)
            case .more:
                String(localized: "more", table: "Dashboard", lang: lang)
            case .reportAnIssue:
                String(localized: "reportAnIssue", table: "Dashboard", lang: lang)
            case .runners:
                String(localized: "runners", table: "Dashboard", lang: lang)
            case .selfMade:
                String(localized: "selfMade", table: "Dashboard", lang: lang)
            case .settings:
                String(localized: "settings", table: "Dashboard", lang: lang)
            case .store:
                String(localized: "store", table: "Dashboard", lang: lang)
            case .terminateApp:
                String(localized: "terminateApp", table: "Dashboard", lang: lang)
            }
        }
    }

    public enum GeneralSettings: String, Identifiable, CaseIterable {
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

        public func string(lang: String) -> String {
            return switch self {
            case .allRunners:
                String(localized: "allRunners", table: "GeneralSettings", lang: lang)
            case .changedMyMind:
                String(localized: "changedMyMind", table: "GeneralSettings", lang: lang)
            case .flipHorizontally:
                String(localized: "flipHorizontally", table: "GeneralSettings", lang: lang)
            case .invertSpeed:
                String(localized: "invertSpeed", table: "GeneralSettings", lang: lang)
            case .launch:
                String(localized: "launch", table: "GeneralSettings", lang: lang)
            case .launchAtLogin:
                String(localized: "launchAtLogin", table: "GeneralSettings", lang: lang)
            case .onlyMonochromeRunners:
                String(localized: "onlyMonochromeRunners", table: "GeneralSettings", lang: lang)
            case .runner:
                String(localized: "runner", table: "GeneralSettings", lang: lang)
            case .selectAutomatically:
                String(localized: "selectAutomatically", table: "GeneralSettings", lang: lang)
            case .stop:
                String(localized: "stop", table: "GeneralSettings", lang: lang)
            case .stopRunner:
                String(localized: "stopRunner", table: "GeneralSettings", lang: lang)
            case .stopRunnerMessage:
                String(localized: "stopRunnerMessage", table: "GeneralSettings", lang: lang)
            case .stopRunnerTitle:
                String(localized: "stopRunnerTitle", table: "GeneralSettings", lang: lang)
            case .useAccentColor:
                String(localized: "useAccentColor", table: "GeneralSettings", lang: lang)
            }
        }
    }

    public enum Others: String, Identifiable, CaseIterable {
        case generalTab
        case mailEnvironment
        case mailExpectedResult
        case mailIssueReport
        case mailReproduceIssue
        case mailShortDescription
        case mailWhatYouTried
        case queryLang
        case support
        case systemInfoTab

        public var id: String { rawValue }

        public func string(lang: String) -> String {
            return switch self {
            case .generalTab:
                String(localized: "generalTab", table: "Others", lang: lang)
            case .mailEnvironment:
                String(localized: "mailEnvironment", table: "Others", lang: lang)
            case .mailExpectedResult:
                String(localized: "mailExpectedResult", table: "Others", lang: lang)
            case .mailIssueReport:
                String(localized: "mailIssueReport", table: "Others", lang: lang)
            case .mailReproduceIssue:
                String(localized: "mailReproduceIssue", table: "Others", lang: lang)
            case .mailShortDescription:
                String(localized: "mailShortDescription", table: "Others", lang: lang)
            case .mailWhatYouTried:
                String(localized: "mailWhatYouTried", table: "Others", lang: lang)
            case .queryLang:
                String(localized: "queryLang", table: "Others", lang: lang)
            case .support:
                String(localized: "support", table: "Others", lang: lang)
            case .systemInfoTab:
                String(localized: "systemInfoTab", table: "Others", lang: lang)
            }
        }
    }

    public enum RunnerName: String, Identifiable, CaseIterable {
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

        public func string(lang: String) -> String {
            return switch self {
            case .b_cat:
                String(localized: "b_cat", table: "RunnerName", lang: lang)
            case .bird:
                String(localized: "bird", table: "RunnerName", lang: lang)
            case .bonfire:
                String(localized: "bonfire", table: "RunnerName", lang: lang)
            case .butterfly:
                String(localized: "butterfly", table: "RunnerName", lang: lang)
            case .c_cat:
                String(localized: "c_cat", table: "RunnerName", lang: lang)
            case .cat:
                String(localized: "cat", table: "RunnerName", lang: lang)
            case .cat_cluster_metal:
                String(localized: "cat_cluster_metal", table: "RunnerName", lang: lang)
            case .cat_flash:
                String(localized: "cat_flash", table: "RunnerName", lang: lang)
            case .cat_golden:
                String(localized: "cat_golden", table: "RunnerName", lang: lang)
            case .cat_nyan_mock:
                String(localized: "cat_nyan_mock", table: "RunnerName", lang: lang)
            case .chameleon:
                String(localized: "chameleon", table: "RunnerName", lang: lang)
            case .cheetah:
                String(localized: "cheetah", table: "RunnerName", lang: lang)
            case .chicken:
                String(localized: "chicken", table: "RunnerName", lang: lang)
            case .chime_wind:
                String(localized: "chime_wind", table: "RunnerName", lang: lang)
            case .city:
                String(localized: "city", table: "RunnerName", lang: lang)
            case .coffee:
                String(localized: "coffee", table: "RunnerName", lang: lang)
            case .cogwheel:
                String(localized: "cogwheel", table: "RunnerName", lang: lang)
            case .corgi_welsh:
                String(localized: "corgi_welsh", table: "RunnerName", lang: lang)
            case .cradle:
                String(localized: "cradle", table: "RunnerName", lang: lang)
            case .curve_sine:
                String(localized: "curve_sine", table: "RunnerName", lang: lang)
            case .dinosaur:
                String(localized: "dinosaur", table: "RunnerName", lang: lang)
            case .dog:
                String(localized: "dog", table: "RunnerName", lang: lang)
            case .dogeza:
                String(localized: "dogeza", table: "RunnerName", lang: lang)
            case .dolphin:
                String(localized: "dolphin", table: "RunnerName", lang: lang)
            case .dots:
                String(localized: "dots", table: "RunnerName", lang: lang)
            case .dragon:
                String(localized: "dragon", table: "RunnerName", lang: lang)
            case .drink_tapioca:
                String(localized: "drink_tapioca", table: "RunnerName", lang: lang)
            case .drop:
                String(localized: "drop", table: "RunnerName", lang: lang)
            case .duck_rubber:
                String(localized: "duck_rubber", table: "RunnerName", lang: lang)
            case .earth:
                String(localized: "earth", table: "RunnerName", lang: lang)
            case .engine:
                String(localized: "engine", table: "RunnerName", lang: lang)
            case .entaku:
                String(localized: "entaku", table: "RunnerName", lang: lang)
            case .factory:
                String(localized: "factory", table: "RunnerName", lang: lang)
            case .fishman:
                String(localized: "fishman", table: "RunnerName", lang: lang)
            case .fox:
                String(localized: "fox", table: "RunnerName", lang: lang)
            case .frog:
                String(localized: "frog", table: "RunnerName", lang: lang)
            case .frypan:
                String(localized: "frypan", table: "RunnerName", lang: lang)
            case .ghost:
                String(localized: "ghost", table: "RunnerName", lang: lang)
            case .greyhound:
                String(localized: "greyhound", table: "RunnerName", lang: lang)
            case .hedgehog:
                String(localized: "hedgehog", table: "RunnerName", lang: lang)
            case .horse:
                String(localized: "horse", table: "RunnerName", lang: lang)
            case .human:
                String(localized: "human", table: "RunnerName", lang: lang)
            case .lantern_o_jack:
                String(localized: "lantern_o_jack", table: "RunnerName", lang: lang)
            case .locomotive_steam:
                String(localized: "locomotive_steam", table: "RunnerName", lang: lang)
            case .made_self:
                String(localized: "made_self", table: "RunnerName", lang: lang)
            case .mochi:
                String(localized: "mochi", table: "RunnerName", lang: lang)
            case .mouse:
                String(localized: "mouse", table: "RunnerName", lang: lang)
            case .neko_maneki:
                String(localized: "neko_maneki", table: "RunnerName", lang: lang)
            case .octopus:
                String(localized: "octopus", table: "RunnerName", lang: lang)
            case .otter:
                String(localized: "otter", table: "RunnerName", lang: lang)
            case .owl:
                String(localized: "owl", table: "RunnerName", lang: lang)
            case .parrot:
                String(localized: "parrot", table: "RunnerName", lang: lang)
            case .pendulum:
                String(localized: "pendulum", table: "RunnerName", lang: lang)
            case .penguin:
                String(localized: "penguin", table: "RunnerName", lang: lang)
            case .penguin2:
                String(localized: "penguin2", table: "RunnerName", lang: lang)
            case .people_party:
                String(localized: "people_party", table: "RunnerName", lang: lang)
            case .pig:
                String(localized: "pig", table: "RunnerName", lang: lang)
            case .pulse:
                String(localized: "pulse", table: "RunnerName", lang: lang)
            case .puppy:
                String(localized: "puppy", table: "RunnerName", lang: lang)
            case .rabbit:
                String(localized: "rabbit", table: "RunnerName", lang: lang)
            case .reactor:
                String(localized: "reactor", table: "RunnerName", lang: lang)
            case .rocket:
                String(localized: "rocket", table: "RunnerName", lang: lang)
            case .runners_all:
                String(localized: "runners_all", table: "RunnerName", lang: lang)
            case .sausage:
                String(localized: "sausage", table: "RunnerName", lang: lang)
            case .sheep:
                String(localized: "sheep", table: "RunnerName", lang: lang)
            case .sleigh_reindeer:
                String(localized: "sleigh_reindeer", table: "RunnerName", lang: lang)
            case .slime:
                String(localized: "slime", table: "RunnerName", lang: lang)
            case .snowman:
                String(localized: "snowman", table: "RunnerName", lang: lang)
            case .sparkler:
                String(localized: "sparkler", table: "RunnerName", lang: lang)
            case .squirrel:
                String(localized: "squirrel", table: "RunnerName", lang: lang)
            case .sushi:
                String(localized: "sushi", table: "RunnerName", lang: lang)
            case .sushi_rotating:
                String(localized: "sushi_rotating", table: "RunnerName", lang: lang)
            case .tail_cat:
                String(localized: "tail_cat", table: "RunnerName", lang: lang)
            case .terrier:
                String(localized: "terrier", table: "RunnerName", lang: lang)
            case .triforce:
                String(localized: "triforce", table: "RunnerName", lang: lang)
            case .uhooi:
                String(localized: "uhooi", table: "RunnerName", lang: lang)
            case .up_push:
                String(localized: "up_push", table: "RunnerName", lang: lang)
            case .up_sit:
                String(localized: "up_sit", table: "RunnerName", lang: lang)
            case .whale:
                String(localized: "whale", table: "RunnerName", lang: lang)
            case .wheel_hamster:
                String(localized: "wheel_hamster", table: "RunnerName", lang: lang)
            }
        }
    }

    public enum RunnersStore: String, Identifiable, CaseIterable {
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

        public func string(lang: String) -> String {
            return switch self {
            case .categoryAnimal:
                String(localized: "categoryAnimal", table: "RunnersStore", lang: lang)
            case .categoryInanimate:
                String(localized: "categoryInanimate", table: "RunnersStore", lang: lang)
            case .categoryRecommended:
                String(localized: "categoryRecommended", table: "RunnersStore", lang: lang)
            case .categorySeasonal:
                String(localized: "categorySeasonal", table: "RunnersStore", lang: lang)
            case .categorySpecial:
                String(localized: "categorySpecial", table: "RunnersStore", lang: lang)
            case .failedVerification:
                String(localized: "failedVerification", table: "RunnersStore", lang: lang)
            case .pending:
                String(localized: "pending", table: "RunnersStore", lang: lang)
            case .productNotFound:
                String(localized: "productNotFound", table: "RunnersStore", lang: lang)
            case .productNotFoundSuggestion:
                String(localized: "productNotFoundSuggestion", table: "RunnersStore", lang: lang)
            case .productUnavailable:
                String(localized: "productUnavailable", table: "RunnersStore", lang: lang)
            case .purchase:
                String(localized: "purchase", table: "RunnersStore", lang: lang)
            case .purchaseErrorTitle:
                String(localized: "purchaseErrorTitle", table: "RunnersStore", lang: lang)
            case .purchaseNotAllowed:
                String(localized: "purchaseNotAllowed", table: "RunnersStore", lang: lang)
            case .purchaseNotAllowedSuggestion:
                String(localized: "purchaseNotAllowedSuggestion", table: "RunnersStore", lang: lang)
            case .restore:
                String(localized: "restore", table: "RunnersStore", lang: lang)
            case .restoreTitle:
                String(localized: "restoreTitle", table: "RunnersStore", lang: lang)
            case .runnersStoreTitle:
                String(localized: "runnersStoreTitle", table: "RunnersStore", lang: lang)
            case .unknownError:
                String(localized: "unknownError", table: "RunnersStore", lang: lang)
            case .userCancelled:
                String(localized: "userCancelled", table: "RunnersStore", lang: lang)
            }
        }
    }

    public enum SelfMadeRunners: String, Identifiable, CaseIterable {
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

        public func string(lang: String) -> String {
            return switch self {
            case .color:
                String(localized: "color", table: "SelfMadeRunners", lang: lang)
            case .conflictName:
                String(localized: "conflictName", table: "SelfMadeRunners", lang: lang)
            case .formatPrecondition:
                String(localized: "formatPrecondition", table: "SelfMadeRunners", lang: lang)
            case .frames:
                String(localized: "frames", table: "SelfMadeRunners", lang: lang)
            case .heightPrecondition:
                String(localized: "heightPrecondition", table: "SelfMadeRunners", lang: lang)
            case .preconditions:
                String(localized: "preconditions", table: "SelfMadeRunners", lang: lang)
            case .preview:
                String(localized: "preview", table: "SelfMadeRunners", lang: lang)
            case .register:
                String(localized: "register", table: "SelfMadeRunners", lang: lang)
            case .registerErrorTitle:
                String(localized: "registerErrorTitle", table: "SelfMadeRunners", lang: lang)
            case .registeredRunners:
                String(localized: "registeredRunners", table: "SelfMadeRunners", lang: lang)
            case .runnerName:
                String(localized: "runnerName", table: "SelfMadeRunners", lang: lang)
            case .selfMadeRunnersTitle:
                String(localized: "selfMadeRunnersTitle", table: "SelfMadeRunners", lang: lang)
            case .toRegister:
                String(localized: "toRegister", table: "SelfMadeRunners", lang: lang)
            case .useOriginalColor:
                String(localized: "useOriginalColor", table: "SelfMadeRunners", lang: lang)
            case .violatePrecondition:
                String(localized: "violatePrecondition", table: "SelfMadeRunners", lang: lang)
            case .violateUpperLimit:
                String(localized: "violateUpperLimit", table: "SelfMadeRunners", lang: lang)
            case .widthPrecondition:
                String(localized: "widthPrecondition", table: "SelfMadeRunners", lang: lang)
            }
        }
    }

    public enum SystemInfoBar: String, Identifiable, CaseIterable {
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

        public func string(lang: String) -> String {
            return switch self {
            case .available:
                String(localized: "available", table: "SystemInfoBar", lang: lang)
            case .barGraph:
                String(localized: "barGraph", table: "SystemInfoBar", lang: lang)
            case .onlyIcon:
                String(localized: "onlyIcon", table: "SystemInfoBar", lang: lang)
            case .percentage:
                String(localized: "percentage", table: "SystemInfoBar", lang: lang)
            case .pieChart:
                String(localized: "pieChart", table: "SystemInfoBar", lang: lang)
            case .showBatteryState:
                String(localized: "showBatteryState", table: "SystemInfoBar", lang: lang)
            case .showCPUUsage:
                String(localized: "showCPUUsage", table: "SystemInfoBar", lang: lang)
            case .showMemoryPerformance:
                String(localized: "showMemoryPerformance", table: "SystemInfoBar", lang: lang)
            case .showNetworkSpeed:
                String(localized: "showNetworkSpeed", table: "SystemInfoBar", lang: lang)
            case .showStorageCapacity:
                String(localized: "showStorageCapacity", table: "SystemInfoBar", lang: lang)
            case .used:
                String(localized: "used", table: "SystemInfoBar", lang: lang)
            }
        }
    }

    public enum SystemInfoSettings: String, Identifiable, CaseIterable {
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

        public func string(lang: String) -> String {
            return switch self {
            case .activate:
                String(localized: "activate", table: "SystemInfoSettings", lang: lang)
            case .activateSystemInfoBarMessage:
                String(localized: "activateSystemInfoBarMessage", table: "SystemInfoSettings", lang: lang)
            case .activateSystemInfoBarTitle:
                String(localized: "activateSystemInfoBarTitle", table: "SystemInfoSettings", lang: lang)
            case .batteryState:
                String(localized: "batteryState", table: "SystemInfoSettings", lang: lang)
            case .changedMyMind:
                String(localized: "changedMyMind", table: "SystemInfoSettings", lang: lang)
            case .experimentalFeature:
                String(localized: "experimentalFeature", table: "SystemInfoSettings", lang: lang)
            case .memoryPerformance:
                String(localized: "memoryPerformance", table: "SystemInfoSettings", lang: lang)
            case .monitoring:
                String(localized: "monitoring", table: "SystemInfoSettings", lang: lang)
            case .networkConnection:
                String(localized: "networkConnection", table: "SystemInfoSettings", lang: lang)
            case .storageCapacity:
                String(localized: "storageCapacity", table: "SystemInfoSettings", lang: lang)
            case .systemInfoBar:
                String(localized: "systemInfoBar", table: "SystemInfoSettings", lang: lang)
            }
        }
    }
}