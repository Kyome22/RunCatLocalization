import SwiftUI

public final class RCL {
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

        public func string(_ language: RCLLanguage = .automatic, _ items: String...) -> String {
            return switch self {
            case .aboutApp:
                String(localized: "aboutApp", table: "Dashboard", bundle: language.bundle)
            case .activityMonitor:
                String(localized: "activityMonitor", table: "Dashboard", bundle: language.bundle)
            case .back:
                String(localized: "back", table: "Dashboard", bundle: language.bundle)
            case .categoryAnimal:
                String(localized: "categoryAnimal", table: "Dashboard", bundle: language.bundle)
            case .categoryDefault:
                String(localized: "categoryDefault", table: "Dashboard", bundle: language.bundle)
            case .categoryInanimate:
                String(localized: "categoryInanimate", table: "Dashboard", bundle: language.bundle)
            case .categorySeasonal:
                String(localized: "categorySeasonal", table: "Dashboard", bundle: language.bundle)
            case .categorySelfMade:
                String(localized: "categorySelfMade", table: "Dashboard", bundle: language.bundle)
            case .categorySpecial:
                String(localized: "categorySpecial", table: "Dashboard", bundle: language.bundle)
            case .help:
                String(localized: "help", table: "Dashboard", bundle: language.bundle)
            case .helpFAQ:
                String(localized: "helpFAQ", table: "Dashboard", bundle: language.bundle)
            case .helpHowToRegister:
                String(localized: "helpHowToRegister", table: "Dashboard", bundle: language.bundle)
            case .more:
                String(localized: "more", table: "Dashboard", bundle: language.bundle)
            case .reportAnIssue:
                String(localized: "reportAnIssue", table: "Dashboard", bundle: language.bundle)
            case .runners:
                String(localized: "runners", table: "Dashboard", bundle: language.bundle)
            case .selfMade:
                String(localized: "selfMade", table: "Dashboard", bundle: language.bundle)
            case .settings:
                String(localized: "settings", table: "Dashboard", bundle: language.bundle)
            case .store:
                String(localized: "store", table: "Dashboard", bundle: language.bundle)
            case .terminateApp:
                String(localized: "terminateApp", table: "Dashboard", bundle: language.bundle)
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

        public func string(_ language: RCLLanguage = .automatic, _ items: String...) -> String {
            return switch self {
            case .allRunners:
                String(localized: "allRunners", table: "GeneralSettings", bundle: language.bundle)
            case .changedMyMind:
                String(localized: "changedMyMind", table: "GeneralSettings", bundle: language.bundle)
            case .flipHorizontally:
                String(localized: "flipHorizontally", table: "GeneralSettings", bundle: language.bundle)
            case .invertSpeed:
                String(localized: "invertSpeed", table: "GeneralSettings", bundle: language.bundle)
            case .launch:
                String(localized: "launch", table: "GeneralSettings", bundle: language.bundle)
            case .launchAtLogin:
                String(localized: "launchAtLogin", table: "GeneralSettings", bundle: language.bundle)
            case .onlyMonochromeRunners:
                String(localized: "onlyMonochromeRunners", table: "GeneralSettings", bundle: language.bundle)
            case .runner:
                String(localized: "runner", table: "GeneralSettings", bundle: language.bundle)
            case .selectAutomatically:
                String(localized: "selectAutomatically", table: "GeneralSettings", bundle: language.bundle)
            case .stop:
                String(localized: "stop", table: "GeneralSettings", bundle: language.bundle)
            case .stopRunner:
                String(localized: "stopRunner", table: "GeneralSettings", bundle: language.bundle)
            case .stopRunnerMessage:
                String(localized: "stopRunnerMessage", table: "GeneralSettings", bundle: language.bundle)
            case .stopRunnerTitle:
                String(localized: "stopRunnerTitle", table: "GeneralSettings", bundle: language.bundle)
            case .useAccentColor:
                String(localized: "useAccentColor", table: "GeneralSettings", bundle: language.bundle)
            }
        }
    }

    public enum Others: String, Identifiable, CaseIterable {
        case queryLang
        case generalTab
        case mailEnvironment
        case mailExpectedResult
        case mailIssueReport
        case mailReproduceIssue
        case mailShortDescription
        case mailWhatYouTried
        case support
        case systemInfoTab

        public var id: String { rawValue }

        public func string(_ language: RCLLanguage = .automatic, _ items: String...) -> String {
            return switch self {
            case .queryLang:
                String(localized: "\(items[0])queryLang", table: "Others", bundle: language.bundle)
            case .generalTab:
                String(localized: "generalTab", table: "Others", bundle: language.bundle)
            case .mailEnvironment:
                String(localized: "mailEnvironment\(items[0])\(items[1])\(items[2])", table: "Others", bundle: language.bundle)
            case .mailExpectedResult:
                String(localized: "mailExpectedResult", table: "Others", bundle: language.bundle)
            case .mailIssueReport:
                String(localized: "mailIssueReport", table: "Others", bundle: language.bundle)
            case .mailReproduceIssue:
                String(localized: "mailReproduceIssue", table: "Others", bundle: language.bundle)
            case .mailShortDescription:
                String(localized: "mailShortDescription", table: "Others", bundle: language.bundle)
            case .mailWhatYouTried:
                String(localized: "mailWhatYouTried", table: "Others", bundle: language.bundle)
            case .support:
                String(localized: "support", table: "Others", bundle: language.bundle)
            case .systemInfoTab:
                String(localized: "systemInfoTab", table: "Others", bundle: language.bundle)
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

        public func string(_ language: RCLLanguage = .automatic, _ items: String...) -> String {
            return switch self {
            case .b_cat:
                String(localized: "b_cat", table: "RunnerName", bundle: language.bundle)
            case .bird:
                String(localized: "bird", table: "RunnerName", bundle: language.bundle)
            case .bonfire:
                String(localized: "bonfire", table: "RunnerName", bundle: language.bundle)
            case .butterfly:
                String(localized: "butterfly", table: "RunnerName", bundle: language.bundle)
            case .c_cat:
                String(localized: "c_cat", table: "RunnerName", bundle: language.bundle)
            case .cat:
                String(localized: "cat", table: "RunnerName", bundle: language.bundle)
            case .cat_cluster_metal:
                String(localized: "cat_cluster_metal", table: "RunnerName", bundle: language.bundle)
            case .cat_flash:
                String(localized: "cat_flash", table: "RunnerName", bundle: language.bundle)
            case .cat_golden:
                String(localized: "cat_golden", table: "RunnerName", bundle: language.bundle)
            case .cat_nyan_mock:
                String(localized: "cat_nyan_mock", table: "RunnerName", bundle: language.bundle)
            case .chameleon:
                String(localized: "chameleon", table: "RunnerName", bundle: language.bundle)
            case .cheetah:
                String(localized: "cheetah", table: "RunnerName", bundle: language.bundle)
            case .chicken:
                String(localized: "chicken", table: "RunnerName", bundle: language.bundle)
            case .chime_wind:
                String(localized: "chime_wind", table: "RunnerName", bundle: language.bundle)
            case .city:
                String(localized: "city", table: "RunnerName", bundle: language.bundle)
            case .coffee:
                String(localized: "coffee", table: "RunnerName", bundle: language.bundle)
            case .cogwheel:
                String(localized: "cogwheel", table: "RunnerName", bundle: language.bundle)
            case .corgi_welsh:
                String(localized: "corgi_welsh", table: "RunnerName", bundle: language.bundle)
            case .cradle:
                String(localized: "cradle", table: "RunnerName", bundle: language.bundle)
            case .curve_sine:
                String(localized: "curve_sine", table: "RunnerName", bundle: language.bundle)
            case .dinosaur:
                String(localized: "dinosaur", table: "RunnerName", bundle: language.bundle)
            case .dog:
                String(localized: "dog", table: "RunnerName", bundle: language.bundle)
            case .dogeza:
                String(localized: "dogeza", table: "RunnerName", bundle: language.bundle)
            case .dolphin:
                String(localized: "dolphin", table: "RunnerName", bundle: language.bundle)
            case .dots:
                String(localized: "dots", table: "RunnerName", bundle: language.bundle)
            case .dragon:
                String(localized: "dragon", table: "RunnerName", bundle: language.bundle)
            case .drink_tapioca:
                String(localized: "drink_tapioca", table: "RunnerName", bundle: language.bundle)
            case .drop:
                String(localized: "drop", table: "RunnerName", bundle: language.bundle)
            case .duck_rubber:
                String(localized: "duck_rubber", table: "RunnerName", bundle: language.bundle)
            case .earth:
                String(localized: "earth", table: "RunnerName", bundle: language.bundle)
            case .engine:
                String(localized: "engine", table: "RunnerName", bundle: language.bundle)
            case .entaku:
                String(localized: "entaku", table: "RunnerName", bundle: language.bundle)
            case .factory:
                String(localized: "factory", table: "RunnerName", bundle: language.bundle)
            case .fishman:
                String(localized: "fishman", table: "RunnerName", bundle: language.bundle)
            case .fox:
                String(localized: "fox", table: "RunnerName", bundle: language.bundle)
            case .frog:
                String(localized: "frog", table: "RunnerName", bundle: language.bundle)
            case .frypan:
                String(localized: "frypan", table: "RunnerName", bundle: language.bundle)
            case .ghost:
                String(localized: "ghost", table: "RunnerName", bundle: language.bundle)
            case .greyhound:
                String(localized: "greyhound", table: "RunnerName", bundle: language.bundle)
            case .hedgehog:
                String(localized: "hedgehog", table: "RunnerName", bundle: language.bundle)
            case .horse:
                String(localized: "horse", table: "RunnerName", bundle: language.bundle)
            case .human:
                String(localized: "human", table: "RunnerName", bundle: language.bundle)
            case .lantern_o_jack:
                String(localized: "lantern_o_jack", table: "RunnerName", bundle: language.bundle)
            case .locomotive_steam:
                String(localized: "locomotive_steam", table: "RunnerName", bundle: language.bundle)
            case .made_self:
                String(localized: "made_self", table: "RunnerName", bundle: language.bundle)
            case .mochi:
                String(localized: "mochi", table: "RunnerName", bundle: language.bundle)
            case .mouse:
                String(localized: "mouse", table: "RunnerName", bundle: language.bundle)
            case .neko_maneki:
                String(localized: "neko_maneki", table: "RunnerName", bundle: language.bundle)
            case .octopus:
                String(localized: "octopus", table: "RunnerName", bundle: language.bundle)
            case .otter:
                String(localized: "otter", table: "RunnerName", bundle: language.bundle)
            case .owl:
                String(localized: "owl", table: "RunnerName", bundle: language.bundle)
            case .parrot:
                String(localized: "parrot", table: "RunnerName", bundle: language.bundle)
            case .pendulum:
                String(localized: "pendulum", table: "RunnerName", bundle: language.bundle)
            case .penguin:
                String(localized: "penguin", table: "RunnerName", bundle: language.bundle)
            case .penguin2:
                String(localized: "penguin2", table: "RunnerName", bundle: language.bundle)
            case .people_party:
                String(localized: "people_party", table: "RunnerName", bundle: language.bundle)
            case .pig:
                String(localized: "pig", table: "RunnerName", bundle: language.bundle)
            case .pulse:
                String(localized: "pulse", table: "RunnerName", bundle: language.bundle)
            case .puppy:
                String(localized: "puppy", table: "RunnerName", bundle: language.bundle)
            case .rabbit:
                String(localized: "rabbit", table: "RunnerName", bundle: language.bundle)
            case .reactor:
                String(localized: "reactor", table: "RunnerName", bundle: language.bundle)
            case .rocket:
                String(localized: "rocket", table: "RunnerName", bundle: language.bundle)
            case .runners_all:
                String(localized: "runners_all", table: "RunnerName", bundle: language.bundle)
            case .sausage:
                String(localized: "sausage", table: "RunnerName", bundle: language.bundle)
            case .sheep:
                String(localized: "sheep", table: "RunnerName", bundle: language.bundle)
            case .sleigh_reindeer:
                String(localized: "sleigh_reindeer", table: "RunnerName", bundle: language.bundle)
            case .slime:
                String(localized: "slime", table: "RunnerName", bundle: language.bundle)
            case .snowman:
                String(localized: "snowman", table: "RunnerName", bundle: language.bundle)
            case .sparkler:
                String(localized: "sparkler", table: "RunnerName", bundle: language.bundle)
            case .squirrel:
                String(localized: "squirrel", table: "RunnerName", bundle: language.bundle)
            case .sushi:
                String(localized: "sushi", table: "RunnerName", bundle: language.bundle)
            case .sushi_rotating:
                String(localized: "sushi_rotating", table: "RunnerName", bundle: language.bundle)
            case .tail_cat:
                String(localized: "tail_cat", table: "RunnerName", bundle: language.bundle)
            case .terrier:
                String(localized: "terrier", table: "RunnerName", bundle: language.bundle)
            case .triforce:
                String(localized: "triforce", table: "RunnerName", bundle: language.bundle)
            case .uhooi:
                String(localized: "uhooi", table: "RunnerName", bundle: language.bundle)
            case .up_push:
                String(localized: "up_push", table: "RunnerName", bundle: language.bundle)
            case .up_sit:
                String(localized: "up_sit", table: "RunnerName", bundle: language.bundle)
            case .whale:
                String(localized: "whale", table: "RunnerName", bundle: language.bundle)
            case .wheel_hamster:
                String(localized: "wheel_hamster", table: "RunnerName", bundle: language.bundle)
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

        public func string(_ language: RCLLanguage = .automatic, _ items: String...) -> String {
            return switch self {
            case .categoryAnimal:
                String(localized: "categoryAnimal", table: "RunnersStore", bundle: language.bundle)
            case .categoryInanimate:
                String(localized: "categoryInanimate", table: "RunnersStore", bundle: language.bundle)
            case .categoryRecommended:
                String(localized: "categoryRecommended", table: "RunnersStore", bundle: language.bundle)
            case .categorySeasonal:
                String(localized: "categorySeasonal", table: "RunnersStore", bundle: language.bundle)
            case .categorySpecial:
                String(localized: "categorySpecial", table: "RunnersStore", bundle: language.bundle)
            case .failedVerification:
                String(localized: "failedVerification", table: "RunnersStore", bundle: language.bundle)
            case .pending:
                String(localized: "pending", table: "RunnersStore", bundle: language.bundle)
            case .productNotFound:
                String(localized: "productNotFound", table: "RunnersStore", bundle: language.bundle)
            case .productNotFoundSuggestion:
                String(localized: "productNotFoundSuggestion", table: "RunnersStore", bundle: language.bundle)
            case .productUnavailable:
                String(localized: "productUnavailable", table: "RunnersStore", bundle: language.bundle)
            case .purchase:
                String(localized: "purchase", table: "RunnersStore", bundle: language.bundle)
            case .purchaseErrorTitle:
                String(localized: "purchaseErrorTitle", table: "RunnersStore", bundle: language.bundle)
            case .purchaseNotAllowed:
                String(localized: "purchaseNotAllowed", table: "RunnersStore", bundle: language.bundle)
            case .purchaseNotAllowedSuggestion:
                String(localized: "purchaseNotAllowedSuggestion", table: "RunnersStore", bundle: language.bundle)
            case .restore:
                String(localized: "restore", table: "RunnersStore", bundle: language.bundle)
            case .restoreTitle:
                String(localized: "restoreTitle", table: "RunnersStore", bundle: language.bundle)
            case .runnersStoreTitle:
                String(localized: "runnersStoreTitle", table: "RunnersStore", bundle: language.bundle)
            case .unknownError:
                String(localized: "unknownError", table: "RunnersStore", bundle: language.bundle)
            case .userCancelled:
                String(localized: "userCancelled", table: "RunnersStore", bundle: language.bundle)
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

        public func string(_ language: RCLLanguage = .automatic, _ items: String...) -> String {
            return switch self {
            case .color:
                String(localized: "color", table: "SelfMadeRunners", bundle: language.bundle)
            case .conflictName:
                String(localized: "conflictName", table: "SelfMadeRunners", bundle: language.bundle)
            case .formatPrecondition:
                String(localized: "formatPrecondition", table: "SelfMadeRunners", bundle: language.bundle)
            case .frames:
                String(localized: "frames", table: "SelfMadeRunners", bundle: language.bundle)
            case .heightPrecondition:
                String(localized: "heightPrecondition", table: "SelfMadeRunners", bundle: language.bundle)
            case .preconditions:
                String(localized: "preconditions", table: "SelfMadeRunners", bundle: language.bundle)
            case .preview:
                String(localized: "preview", table: "SelfMadeRunners", bundle: language.bundle)
            case .register:
                String(localized: "register", table: "SelfMadeRunners", bundle: language.bundle)
            case .registerErrorTitle:
                String(localized: "registerErrorTitle", table: "SelfMadeRunners", bundle: language.bundle)
            case .registeredRunners:
                String(localized: "registeredRunners", table: "SelfMadeRunners", bundle: language.bundle)
            case .runnerName:
                String(localized: "runnerName", table: "SelfMadeRunners", bundle: language.bundle)
            case .selfMadeRunnersTitle:
                String(localized: "selfMadeRunnersTitle", table: "SelfMadeRunners", bundle: language.bundle)
            case .toRegister:
                String(localized: "toRegister", table: "SelfMadeRunners", bundle: language.bundle)
            case .useOriginalColor:
                String(localized: "useOriginalColor", table: "SelfMadeRunners", bundle: language.bundle)
            case .violatePrecondition:
                String(localized: "violatePrecondition", table: "SelfMadeRunners", bundle: language.bundle)
            case .violateUpperLimit:
                String(localized: "violateUpperLimit", table: "SelfMadeRunners", bundle: language.bundle)
            case .widthPrecondition:
                String(localized: "widthPrecondition", table: "SelfMadeRunners", bundle: language.bundle)
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

        public func string(_ language: RCLLanguage = .automatic, _ items: String...) -> String {
            return switch self {
            case .available:
                String(localized: "available", table: "SystemInfoBar", bundle: language.bundle)
            case .barGraph:
                String(localized: "barGraph", table: "SystemInfoBar", bundle: language.bundle)
            case .onlyIcon:
                String(localized: "onlyIcon", table: "SystemInfoBar", bundle: language.bundle)
            case .percentage:
                String(localized: "percentage", table: "SystemInfoBar", bundle: language.bundle)
            case .pieChart:
                String(localized: "pieChart", table: "SystemInfoBar", bundle: language.bundle)
            case .showBatteryState:
                String(localized: "showBatteryState", table: "SystemInfoBar", bundle: language.bundle)
            case .showCPUUsage:
                String(localized: "showCPUUsage", table: "SystemInfoBar", bundle: language.bundle)
            case .showMemoryPerformance:
                String(localized: "showMemoryPerformance", table: "SystemInfoBar", bundle: language.bundle)
            case .showNetworkSpeed:
                String(localized: "showNetworkSpeed", table: "SystemInfoBar", bundle: language.bundle)
            case .showStorageCapacity:
                String(localized: "showStorageCapacity", table: "SystemInfoBar", bundle: language.bundle)
            case .used:
                String(localized: "used", table: "SystemInfoBar", bundle: language.bundle)
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

        public func string(_ language: RCLLanguage = .automatic, _ items: String...) -> String {
            return switch self {
            case .activate:
                String(localized: "activate", table: "SystemInfoSettings", bundle: language.bundle)
            case .activateSystemInfoBarMessage:
                String(localized: "activateSystemInfoBarMessage", table: "SystemInfoSettings", bundle: language.bundle)
            case .activateSystemInfoBarTitle:
                String(localized: "activateSystemInfoBarTitle", table: "SystemInfoSettings", bundle: language.bundle)
            case .batteryState:
                String(localized: "batteryState", table: "SystemInfoSettings", bundle: language.bundle)
            case .changedMyMind:
                String(localized: "changedMyMind", table: "SystemInfoSettings", bundle: language.bundle)
            case .experimentalFeature:
                String(localized: "experimentalFeature", table: "SystemInfoSettings", bundle: language.bundle)
            case .memoryPerformance:
                String(localized: "memoryPerformance", table: "SystemInfoSettings", bundle: language.bundle)
            case .monitoring:
                String(localized: "monitoring", table: "SystemInfoSettings", bundle: language.bundle)
            case .networkConnection:
                String(localized: "networkConnection", table: "SystemInfoSettings", bundle: language.bundle)
            case .storageCapacity:
                String(localized: "storageCapacity", table: "SystemInfoSettings", bundle: language.bundle)
            case .systemInfoBar:
                String(localized: "systemInfoBar", table: "SystemInfoSettings", bundle: language.bundle)
            }
        }
    }
}