import SwiftUI

public final class RCL {
    public static var language: RCLLanguage?

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

        public var string: String {
            return switch self {
            case .aboutApp:
                String(localized: "aboutApp", table: "Dashboard")
            case .activityMonitor:
                String(localized: "activityMonitor", table: "Dashboard")
            case .back:
                String(localized: "back", table: "Dashboard")
            case .categoryAnimal:
                String(localized: "categoryAnimal", table: "Dashboard")
            case .categoryDefault:
                String(localized: "categoryDefault", table: "Dashboard")
            case .categoryInanimate:
                String(localized: "categoryInanimate", table: "Dashboard")
            case .categorySeasonal:
                String(localized: "categorySeasonal", table: "Dashboard")
            case .categorySelfMade:
                String(localized: "categorySelfMade", table: "Dashboard")
            case .categorySpecial:
                String(localized: "categorySpecial", table: "Dashboard")
            case .debugSleep:
                String(localized: "debugSleep", table: "Dashboard")
            case .debugWakeUp:
                String(localized: "debugWakeUp", table: "Dashboard")
            case .help:
                String(localized: "help", table: "Dashboard")
            case .helpFAQ:
                String(localized: "helpFAQ", table: "Dashboard")
            case .helpHowToRegister:
                String(localized: "helpHowToRegister", table: "Dashboard")
            case .more:
                String(localized: "more", table: "Dashboard")
            case .reportAnIssue:
                String(localized: "reportAnIssue", table: "Dashboard")
            case .runners:
                String(localized: "runners", table: "Dashboard")
            case .selfMade:
                String(localized: "selfMade", table: "Dashboard")
            case .settings:
                String(localized: "settings", table: "Dashboard")
            case .store:
                String(localized: "store", table: "Dashboard")
            case .terminateApp:
                String(localized: "terminateApp", table: "Dashboard")
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

        public var string: String {
            return switch self {
            case .allRunners:
                String(localized: "allRunners", table: "GeneralSettings")
            case .changedMyMind:
                String(localized: "changedMyMind", table: "GeneralSettings")
            case .flipHorizontally:
                String(localized: "flipHorizontally", table: "GeneralSettings")
            case .invertSpeed:
                String(localized: "invertSpeed", table: "GeneralSettings")
            case .launch:
                String(localized: "launch", table: "GeneralSettings")
            case .launchAtLogin:
                String(localized: "launchAtLogin", table: "GeneralSettings")
            case .onlyMonochromeRunners:
                String(localized: "onlyMonochromeRunners", table: "GeneralSettings")
            case .runner:
                String(localized: "runner", table: "GeneralSettings")
            case .selectAutomatically:
                String(localized: "selectAutomatically", table: "GeneralSettings")
            case .stop:
                String(localized: "stop", table: "GeneralSettings")
            case .stopRunner:
                String(localized: "stopRunner", table: "GeneralSettings")
            case .stopRunnerMessage:
                String(localized: "stopRunnerMessage", table: "GeneralSettings")
            case .stopRunnerTitle:
                String(localized: "stopRunnerTitle", table: "GeneralSettings")
            case .useAccentColor:
                String(localized: "useAccentColor", table: "GeneralSettings")
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

        public var string: String {
            return switch self {
            case .generalTab:
                String(localized: "generalTab", table: "Others")
            case .mailEnvironment:
                String(localized: "mailEnvironment", table: "Others")
            case .mailExpectedResult:
                String(localized: "mailExpectedResult", table: "Others")
            case .mailIssueReport:
                String(localized: "mailIssueReport", table: "Others")
            case .mailReproduceIssue:
                String(localized: "mailReproduceIssue", table: "Others")
            case .mailShortDescription:
                String(localized: "mailShortDescription", table: "Others")
            case .mailWhatYouTried:
                String(localized: "mailWhatYouTried", table: "Others")
            case .queryLang:
                String(localized: "queryLang", table: "Others")
            case .support:
                String(localized: "support", table: "Others")
            case .systemInfoTab:
                String(localized: "systemInfoTab", table: "Others")
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

        public var string: String {
            return switch self {
            case .b_cat:
                String(localized: "b_cat", table: "RunnerName")
            case .bird:
                String(localized: "bird", table: "RunnerName")
            case .bonfire:
                String(localized: "bonfire", table: "RunnerName")
            case .butterfly:
                String(localized: "butterfly", table: "RunnerName")
            case .c_cat:
                String(localized: "c_cat", table: "RunnerName")
            case .cat:
                String(localized: "cat", table: "RunnerName")
            case .cat_cluster_metal:
                String(localized: "cat_cluster_metal", table: "RunnerName")
            case .cat_flash:
                String(localized: "cat_flash", table: "RunnerName")
            case .cat_golden:
                String(localized: "cat_golden", table: "RunnerName")
            case .cat_nyan_mock:
                String(localized: "cat_nyan_mock", table: "RunnerName")
            case .chameleon:
                String(localized: "chameleon", table: "RunnerName")
            case .cheetah:
                String(localized: "cheetah", table: "RunnerName")
            case .chicken:
                String(localized: "chicken", table: "RunnerName")
            case .chime_wind:
                String(localized: "chime_wind", table: "RunnerName")
            case .city:
                String(localized: "city", table: "RunnerName")
            case .coffee:
                String(localized: "coffee", table: "RunnerName")
            case .cogwheel:
                String(localized: "cogwheel", table: "RunnerName")
            case .corgi_welsh:
                String(localized: "corgi_welsh", table: "RunnerName")
            case .cradle:
                String(localized: "cradle", table: "RunnerName")
            case .curve_sine:
                String(localized: "curve_sine", table: "RunnerName")
            case .dinosaur:
                String(localized: "dinosaur", table: "RunnerName")
            case .dog:
                String(localized: "dog", table: "RunnerName")
            case .dogeza:
                String(localized: "dogeza", table: "RunnerName")
            case .dolphin:
                String(localized: "dolphin", table: "RunnerName")
            case .dots:
                String(localized: "dots", table: "RunnerName")
            case .dragon:
                String(localized: "dragon", table: "RunnerName")
            case .drink_tapioca:
                String(localized: "drink_tapioca", table: "RunnerName")
            case .drop:
                String(localized: "drop", table: "RunnerName")
            case .duck_rubber:
                String(localized: "duck_rubber", table: "RunnerName")
            case .earth:
                String(localized: "earth", table: "RunnerName")
            case .engine:
                String(localized: "engine", table: "RunnerName")
            case .entaku:
                String(localized: "entaku", table: "RunnerName")
            case .factory:
                String(localized: "factory", table: "RunnerName")
            case .fishman:
                String(localized: "fishman", table: "RunnerName")
            case .fox:
                String(localized: "fox", table: "RunnerName")
            case .frog:
                String(localized: "frog", table: "RunnerName")
            case .frypan:
                String(localized: "frypan", table: "RunnerName")
            case .ghost:
                String(localized: "ghost", table: "RunnerName")
            case .greyhound:
                String(localized: "greyhound", table: "RunnerName")
            case .hedgehog:
                String(localized: "hedgehog", table: "RunnerName")
            case .horse:
                String(localized: "horse", table: "RunnerName")
            case .human:
                String(localized: "human", table: "RunnerName")
            case .lantern_o_jack:
                String(localized: "lantern_o_jack", table: "RunnerName")
            case .locomotive_steam:
                String(localized: "locomotive_steam", table: "RunnerName")
            case .made_self:
                String(localized: "made_self", table: "RunnerName")
            case .mochi:
                String(localized: "mochi", table: "RunnerName")
            case .mouse:
                String(localized: "mouse", table: "RunnerName")
            case .neko_maneki:
                String(localized: "neko_maneki", table: "RunnerName")
            case .octopus:
                String(localized: "octopus", table: "RunnerName")
            case .otter:
                String(localized: "otter", table: "RunnerName")
            case .owl:
                String(localized: "owl", table: "RunnerName")
            case .parrot:
                String(localized: "parrot", table: "RunnerName")
            case .pendulum:
                String(localized: "pendulum", table: "RunnerName")
            case .penguin:
                String(localized: "penguin", table: "RunnerName")
            case .penguin2:
                String(localized: "penguin2", table: "RunnerName")
            case .people_party:
                String(localized: "people_party", table: "RunnerName")
            case .pig:
                String(localized: "pig", table: "RunnerName")
            case .pulse:
                String(localized: "pulse", table: "RunnerName")
            case .puppy:
                String(localized: "puppy", table: "RunnerName")
            case .rabbit:
                String(localized: "rabbit", table: "RunnerName")
            case .reactor:
                String(localized: "reactor", table: "RunnerName")
            case .rocket:
                String(localized: "rocket", table: "RunnerName")
            case .runners_all:
                String(localized: "runners_all", table: "RunnerName")
            case .sausage:
                String(localized: "sausage", table: "RunnerName")
            case .sheep:
                String(localized: "sheep", table: "RunnerName")
            case .sleigh_reindeer:
                String(localized: "sleigh_reindeer", table: "RunnerName")
            case .slime:
                String(localized: "slime", table: "RunnerName")
            case .snowman:
                String(localized: "snowman", table: "RunnerName")
            case .sparkler:
                String(localized: "sparkler", table: "RunnerName")
            case .squirrel:
                String(localized: "squirrel", table: "RunnerName")
            case .sushi:
                String(localized: "sushi", table: "RunnerName")
            case .sushi_rotating:
                String(localized: "sushi_rotating", table: "RunnerName")
            case .tail_cat:
                String(localized: "tail_cat", table: "RunnerName")
            case .terrier:
                String(localized: "terrier", table: "RunnerName")
            case .triforce:
                String(localized: "triforce", table: "RunnerName")
            case .uhooi:
                String(localized: "uhooi", table: "RunnerName")
            case .up_push:
                String(localized: "up_push", table: "RunnerName")
            case .up_sit:
                String(localized: "up_sit", table: "RunnerName")
            case .whale:
                String(localized: "whale", table: "RunnerName")
            case .wheel_hamster:
                String(localized: "wheel_hamster", table: "RunnerName")
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

        public var string: String {
            return switch self {
            case .categoryAnimal:
                String(localized: "categoryAnimal", table: "RunnersStore")
            case .categoryInanimate:
                String(localized: "categoryInanimate", table: "RunnersStore")
            case .categoryRecommended:
                String(localized: "categoryRecommended", table: "RunnersStore")
            case .categorySeasonal:
                String(localized: "categorySeasonal", table: "RunnersStore")
            case .categorySpecial:
                String(localized: "categorySpecial", table: "RunnersStore")
            case .failedVerification:
                String(localized: "failedVerification", table: "RunnersStore")
            case .pending:
                String(localized: "pending", table: "RunnersStore")
            case .productNotFound:
                String(localized: "productNotFound", table: "RunnersStore")
            case .productNotFoundSuggestion:
                String(localized: "productNotFoundSuggestion", table: "RunnersStore")
            case .productUnavailable:
                String(localized: "productUnavailable", table: "RunnersStore")
            case .purchase:
                String(localized: "purchase", table: "RunnersStore")
            case .purchaseErrorTitle:
                String(localized: "purchaseErrorTitle", table: "RunnersStore")
            case .purchaseNotAllowed:
                String(localized: "purchaseNotAllowed", table: "RunnersStore")
            case .purchaseNotAllowedSuggestion:
                String(localized: "purchaseNotAllowedSuggestion", table: "RunnersStore")
            case .restore:
                String(localized: "restore", table: "RunnersStore")
            case .restoreTitle:
                String(localized: "restoreTitle", table: "RunnersStore")
            case .runnersStoreTitle:
                String(localized: "runnersStoreTitle", table: "RunnersStore")
            case .unknownError:
                String(localized: "unknownError", table: "RunnersStore")
            case .userCancelled:
                String(localized: "userCancelled", table: "RunnersStore")
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

        public var string: String {
            return switch self {
            case .color:
                String(localized: "color", table: "SelfMadeRunners")
            case .conflictName:
                String(localized: "conflictName", table: "SelfMadeRunners")
            case .formatPrecondition:
                String(localized: "formatPrecondition", table: "SelfMadeRunners")
            case .frames:
                String(localized: "frames", table: "SelfMadeRunners")
            case .heightPrecondition:
                String(localized: "heightPrecondition", table: "SelfMadeRunners")
            case .preconditions:
                String(localized: "preconditions", table: "SelfMadeRunners")
            case .preview:
                String(localized: "preview", table: "SelfMadeRunners")
            case .register:
                String(localized: "register", table: "SelfMadeRunners")
            case .registerErrorTitle:
                String(localized: "registerErrorTitle", table: "SelfMadeRunners")
            case .registeredRunners:
                String(localized: "registeredRunners", table: "SelfMadeRunners")
            case .runnerName:
                String(localized: "runnerName", table: "SelfMadeRunners")
            case .selfMadeRunnersTitle:
                String(localized: "selfMadeRunnersTitle", table: "SelfMadeRunners")
            case .toRegister:
                String(localized: "toRegister", table: "SelfMadeRunners")
            case .useOriginalColor:
                String(localized: "useOriginalColor", table: "SelfMadeRunners")
            case .violatePrecondition:
                String(localized: "violatePrecondition", table: "SelfMadeRunners")
            case .violateUpperLimit:
                String(localized: "violateUpperLimit", table: "SelfMadeRunners")
            case .widthPrecondition:
                String(localized: "widthPrecondition", table: "SelfMadeRunners")
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

        public var string: String {
            return switch self {
            case .available:
                String(localized: "available", table: "SystemInfoBar")
            case .barGraph:
                String(localized: "barGraph", table: "SystemInfoBar")
            case .onlyIcon:
                String(localized: "onlyIcon", table: "SystemInfoBar")
            case .percentage:
                String(localized: "percentage", table: "SystemInfoBar")
            case .pieChart:
                String(localized: "pieChart", table: "SystemInfoBar")
            case .showBatteryState:
                String(localized: "showBatteryState", table: "SystemInfoBar")
            case .showCPUUsage:
                String(localized: "showCPUUsage", table: "SystemInfoBar")
            case .showMemoryPerformance:
                String(localized: "showMemoryPerformance", table: "SystemInfoBar")
            case .showNetworkSpeed:
                String(localized: "showNetworkSpeed", table: "SystemInfoBar")
            case .showStorageCapacity:
                String(localized: "showStorageCapacity", table: "SystemInfoBar")
            case .used:
                String(localized: "used", table: "SystemInfoBar")
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

        public var string: String {
            return switch self {
            case .activate:
                String(localized: "activate", table: "SystemInfoSettings")
            case .activateSystemInfoBarMessage:
                String(localized: "activateSystemInfoBarMessage", table: "SystemInfoSettings")
            case .activateSystemInfoBarTitle:
                String(localized: "activateSystemInfoBarTitle", table: "SystemInfoSettings")
            case .batteryState:
                String(localized: "batteryState", table: "SystemInfoSettings")
            case .changedMyMind:
                String(localized: "changedMyMind", table: "SystemInfoSettings")
            case .experimentalFeature:
                String(localized: "experimentalFeature", table: "SystemInfoSettings")
            case .memoryPerformance:
                String(localized: "memoryPerformance", table: "SystemInfoSettings")
            case .monitoring:
                String(localized: "monitoring", table: "SystemInfoSettings")
            case .networkConnection:
                String(localized: "networkConnection", table: "SystemInfoSettings")
            case .storageCapacity:
                String(localized: "storageCapacity", table: "SystemInfoSettings")
            case .systemInfoBar:
                String(localized: "systemInfoBar", table: "SystemInfoSettings")
            }
        }
    }
}
