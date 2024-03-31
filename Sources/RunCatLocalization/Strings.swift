public protocol RCLStrings: Hashable, Identifiable, CaseIterable {
    var localizedString: String { get }
}

public enum RCL {
    public enum Dashboard: String, RCLStrings {
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
        case more
        case reportAnIssue
        case runners
        case selfMade
        case settings
        case store
        case terminateApp
        
        public var id: String { rawValue }
        
        public var localizedString: String {
            return switch self {
                case .aboutApp:
                    String(localized: "aboutApp", table: "Dashboard", bundle: .module)
                case .activityMonitor:
                    String(localized: "activityMonitor", table: "Dashboard", bundle: .module)
                case .back:
                    String(localized: "back", table: "Dashboard", bundle: .module)
                case .categoryAnimal:
                    String(localized: "categoryAnimal", table: "Dashboard", bundle: .module)
                case .categoryDefault:
                    String(localized: "categoryDefault", table: "Dashboard", bundle: .module)
                case .categoryInanimate:
                    String(localized: "categoryInanimate", table: "Dashboard", bundle: .module)
                case .categorySeasonal:
                    String(localized: "categorySeasonal", table: "Dashboard", bundle: .module)
                case .categorySelfMade:
                    String(localized: "categorySelfMade", table: "Dashboard", bundle: .module)
                case .categorySpecial:
                    String(localized: "categorySpecial", table: "Dashboard", bundle: .module)
                case .debugSleep:
                    String(localized: "debugSleep", table: "Dashboard", bundle: .module)
                case .debugWakeUp:
                    String(localized: "debugWakeUp", table: "Dashboard", bundle: .module)
                case .help:
                    String(localized: "help", table: "Dashboard", bundle: .module)
                case .more:
                    String(localized: "more", table: "Dashboard", bundle: .module)
                case .reportAnIssue:
                    String(localized: "reportAnIssue", table: "Dashboard", bundle: .module)
                case .runners:
                    String(localized: "runners", table: "Dashboard", bundle: .module)
                case .selfMade:
                    String(localized: "selfMade", table: "Dashboard", bundle: .module)
                case .settings:
                    String(localized: "settings", table: "Dashboard", bundle: .module)
                case .store:
                    String(localized: "store", table: "Dashboard", bundle: .module)
                case .terminateApp:
                    String(localized: "terminateApp", table: "Dashboard", bundle: .module)
            }
        }
    }
    
    public enum GeneralSettings: String, RCLStrings {
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
        
        public var localizedString: String {
            return switch self {
                case .allRunners:
                    String(localized: "allRunners", table: "GeneralSettings", bundle: .module)
                case .changedMyMind:
                    String(localized: "changedMyMind", table: "GeneralSettings", bundle: .module)
                case .flipHorizontally:
                    String(localized: "flipHorizontally", table: "GeneralSettings", bundle: .module)
                case .invertSpeed:
                    String(localized: "invertSpeed", table: "GeneralSettings", bundle: .module)
                case .launch:
                    String(localized: "launch", table: "GeneralSettings", bundle: .module)
                case .launchAtLogin:
                    String(localized: "launchAtLogin", table: "GeneralSettings", bundle: .module)
                case .onlyMonochromeRunners:
                    String(localized: "onlyMonochromeRunners", table: "GeneralSettings", bundle: .module)
                case .runner:
                    String(localized: "runner", table: "GeneralSettings", bundle: .module)
                case .selectAutomatically:
                    String(localized: "selectAutomatically", table: "GeneralSettings", bundle: .module)
                case .stop:
                    String(localized: "stop", table: "GeneralSettings", bundle: .module)
                case .stopRunner:
                    String(localized: "stopRunner", table: "GeneralSettings", bundle: .module)
                case .stopRunnerMessage:
                    String(localized: "stopRunnerMessage", table: "GeneralSettings", bundle: .module)
                case .stopRunnerTitle:
                    String(localized: "stopRunnerTitle", table: "GeneralSettings", bundle: .module)
                case .useAccentColor:
                    String(localized: "useAccentColor", table: "GeneralSettings", bundle: .module)
            }
        }
    }
    
    public enum Others: String, RCLStrings {
        case generalTab
        case helpFAQ
        case helpHowToRegister
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
        
        public var localizedString: String {
            return switch self {
                case .generalTab:
                    String(localized: "generalTab", table: "Others", bundle: .module)
                case .helpFAQ:
                    String(localized: "helpFAQ", table: "Others", bundle: .module)
                case .helpHowToRegister:
                    String(localized: "helpHowToRegister", table: "Others", bundle: .module)
                case .mailEnvironment:
                    String(localized: "mailEnvironment", table: "Others", bundle: .module)
                case .mailExpectedResult:
                    String(localized: "mailExpectedResult", table: "Others", bundle: .module)
                case .mailIssueReport:
                    String(localized: "mailIssueReport", table: "Others", bundle: .module)
                case .mailReproduceIssue:
                    String(localized: "mailReproduceIssue", table: "Others", bundle: .module)
                case .mailShortDescription:
                    String(localized: "mailShortDescription", table: "Others", bundle: .module)
                case .mailWhatYouTried:
                    String(localized: "mailWhatYouTried", table: "Others", bundle: .module)
                case .queryLang:
                    String(localized: "queryLang", table: "Others", bundle: .module)
                case .support:
                    String(localized: "support", table: "Others", bundle: .module)
                case .systemInfoTab:
                    String(localized: "systemInfoTab", table: "Others", bundle: .module)
            }
        }
    }
    
    public enum RunnerName: String, RCLStrings {
        case b_cat
        case bird
        case bonfire
        case butterfly
        case c_cat
        case cat
        case cat_cluster_metal
        case cat_flash
        case cat_gaming
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
        case parrot_party
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
        
        public var localizedString: String {
            return switch self {
                case .b_cat:
                    String(localized: "b_cat", table: "RunnerName", bundle: .module)
                case .bird:
                    String(localized: "bird", table: "RunnerName", bundle: .module)
                case .bonfire:
                    String(localized: "bonfire", table: "RunnerName", bundle: .module)
                case .butterfly:
                    String(localized: "butterfly", table: "RunnerName", bundle: .module)
                case .c_cat:
                    String(localized: "c_cat", table: "RunnerName", bundle: .module)
                case .cat:
                    String(localized: "cat", table: "RunnerName", bundle: .module)
                case .cat_cluster_metal:
                    String(localized: "cat_cluster_metal", table: "RunnerName", bundle: .module)
                case .cat_flash:
                    String(localized: "cat_flash", table: "RunnerName", bundle: .module)
                case .cat_gaming:
                    String(localized: "cat_gaming", table: "RunnerName", bundle: .module)
                case .cat_golden:
                    String(localized: "cat_golden", table: "RunnerName", bundle: .module)
                case .cat_nyan_mock:
                    String(localized: "cat_nyan_mock", table: "RunnerName", bundle: .module)
                case .chameleon:
                    String(localized: "chameleon", table: "RunnerName", bundle: .module)
                case .cheetah:
                    String(localized: "cheetah", table: "RunnerName", bundle: .module)
                case .chicken:
                    String(localized: "chicken", table: "RunnerName", bundle: .module)
                case .chime_wind:
                    String(localized: "chime_wind", table: "RunnerName", bundle: .module)
                case .city:
                    String(localized: "city", table: "RunnerName", bundle: .module)
                case .coffee:
                    String(localized: "coffee", table: "RunnerName", bundle: .module)
                case .cogwheel:
                    String(localized: "cogwheel", table: "RunnerName", bundle: .module)
                case .corgi_welsh:
                    String(localized: "corgi_welsh", table: "RunnerName", bundle: .module)
                case .cradle:
                    String(localized: "cradle", table: "RunnerName", bundle: .module)
                case .curve_sine:
                    String(localized: "curve_sine", table: "RunnerName", bundle: .module)
                case .dinosaur:
                    String(localized: "dinosaur", table: "RunnerName", bundle: .module)
                case .dog:
                    String(localized: "dog", table: "RunnerName", bundle: .module)
                case .dogeza:
                    String(localized: "dogeza", table: "RunnerName", bundle: .module)
                case .dolphin:
                    String(localized: "dolphin", table: "RunnerName", bundle: .module)
                case .dots:
                    String(localized: "dots", table: "RunnerName", bundle: .module)
                case .dragon:
                    String(localized: "dragon", table: "RunnerName", bundle: .module)
                case .drink_tapioca:
                    String(localized: "drink_tapioca", table: "RunnerName", bundle: .module)
                case .drop:
                    String(localized: "drop", table: "RunnerName", bundle: .module)
                case .duck_rubber:
                    String(localized: "duck_rubber", table: "RunnerName", bundle: .module)
                case .earth:
                    String(localized: "earth", table: "RunnerName", bundle: .module)
                case .engine:
                    String(localized: "engine", table: "RunnerName", bundle: .module)
                case .entaku:
                    String(localized: "entaku", table: "RunnerName", bundle: .module)
                case .factory:
                    String(localized: "factory", table: "RunnerName", bundle: .module)
                case .fishman:
                    String(localized: "fishman", table: "RunnerName", bundle: .module)
                case .fox:
                    String(localized: "fox", table: "RunnerName", bundle: .module)
                case .frog:
                    String(localized: "frog", table: "RunnerName", bundle: .module)
                case .frypan:
                    String(localized: "frypan", table: "RunnerName", bundle: .module)
                case .ghost:
                    String(localized: "ghost", table: "RunnerName", bundle: .module)
                case .greyhound:
                    String(localized: "greyhound", table: "RunnerName", bundle: .module)
                case .hedgehog:
                    String(localized: "hedgehog", table: "RunnerName", bundle: .module)
                case .horse:
                    String(localized: "horse", table: "RunnerName", bundle: .module)
                case .human:
                    String(localized: "human", table: "RunnerName", bundle: .module)
                case .lantern_o_jack:
                    String(localized: "lantern_o_jack", table: "RunnerName", bundle: .module)
                case .locomotive_steam:
                    String(localized: "locomotive_steam", table: "RunnerName", bundle: .module)
                case .made_self:
                    String(localized: "made_self", table: "RunnerName", bundle: .module)
                case .mochi:
                    String(localized: "mochi", table: "RunnerName", bundle: .module)
                case .mouse:
                    String(localized: "mouse", table: "RunnerName", bundle: .module)
                case .neko_maneki:
                    String(localized: "neko_maneki", table: "RunnerName", bundle: .module)
                case .octopus:
                    String(localized: "octopus", table: "RunnerName", bundle: .module)
                case .otter:
                    String(localized: "otter", table: "RunnerName", bundle: .module)
                case .owl:
                    String(localized: "owl", table: "RunnerName", bundle: .module)
                case .parrot:
                    String(localized: "parrot", table: "RunnerName", bundle: .module)
                case .parrot_party:
                    String(localized: "parrot_party", table: "RunnerName", bundle: .module)
                case .pendulum:
                    String(localized: "pendulum", table: "RunnerName", bundle: .module)
                case .penguin:
                    String(localized: "penguin", table: "RunnerName", bundle: .module)
                case .penguin2:
                    String(localized: "penguin2", table: "RunnerName", bundle: .module)
                case .people_party:
                    String(localized: "people_party", table: "RunnerName", bundle: .module)
                case .pig:
                    String(localized: "pig", table: "RunnerName", bundle: .module)
                case .pulse:
                    String(localized: "pulse", table: "RunnerName", bundle: .module)
                case .puppy:
                    String(localized: "puppy", table: "RunnerName", bundle: .module)
                case .rabbit:
                    String(localized: "rabbit", table: "RunnerName", bundle: .module)
                case .reactor:
                    String(localized: "reactor", table: "RunnerName", bundle: .module)
                case .rocket:
                    String(localized: "rocket", table: "RunnerName", bundle: .module)
                case .runners_all:
                    String(localized: "runners_all", table: "RunnerName", bundle: .module)
                case .sausage:
                    String(localized: "sausage", table: "RunnerName", bundle: .module)
                case .sheep:
                    String(localized: "sheep", table: "RunnerName", bundle: .module)
                case .sleigh_reindeer:
                    String(localized: "sleigh_reindeer", table: "RunnerName", bundle: .module)
                case .slime:
                    String(localized: "slime", table: "RunnerName", bundle: .module)
                case .snowman:
                    String(localized: "snowman", table: "RunnerName", bundle: .module)
                case .sparkler:
                    String(localized: "sparkler", table: "RunnerName", bundle: .module)
                case .squirrel:
                    String(localized: "squirrel", table: "RunnerName", bundle: .module)
                case .sushi:
                    String(localized: "sushi", table: "RunnerName", bundle: .module)
                case .sushi_rotating:
                    String(localized: "sushi_rotating", table: "RunnerName", bundle: .module)
                case .tail_cat:
                    String(localized: "tail_cat", table: "RunnerName", bundle: .module)
                case .terrier:
                    String(localized: "terrier", table: "RunnerName", bundle: .module)
                case .triforce:
                    String(localized: "triforce", table: "RunnerName", bundle: .module)
                case .uhooi:
                    String(localized: "uhooi", table: "RunnerName", bundle: .module)
                case .up_push:
                    String(localized: "up_push", table: "RunnerName", bundle: .module)
                case .up_sit:
                    String(localized: "up_sit", table: "RunnerName", bundle: .module)
                case .whale:
                    String(localized: "whale", table: "RunnerName", bundle: .module)
                case .wheel_hamster:
                    String(localized: "wheel_hamster", table: "RunnerName", bundle: .module)
            }
        }
    }
    
    public enum RunnersStore: String, RCLStrings {
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
        
        public var localizedString: String {
            return switch self {
                case .categoryAnimal:
                    String(localized: "categoryAnimal", table: "RunnersStore", bundle: .module)
                case .categoryInanimate:
                    String(localized: "categoryInanimate", table: "RunnersStore", bundle: .module)
                case .categoryRecommended:
                    String(localized: "categoryRecommended", table: "RunnersStore", bundle: .module)
                case .categorySeasonal:
                    String(localized: "categorySeasonal", table: "RunnersStore", bundle: .module)
                case .categorySpecial:
                    String(localized: "categorySpecial", table: "RunnersStore", bundle: .module)
                case .failedVerification:
                    String(localized: "failedVerification", table: "RunnersStore", bundle: .module)
                case .pending:
                    String(localized: "pending", table: "RunnersStore", bundle: .module)
                case .productNotFound:
                    String(localized: "productNotFound", table: "RunnersStore", bundle: .module)
                case .productNotFoundSuggestion:
                    String(localized: "productNotFoundSuggestion", table: "RunnersStore", bundle: .module)
                case .productUnavailable:
                    String(localized: "productUnavailable", table: "RunnersStore", bundle: .module)
                case .purchase:
                    String(localized: "purchase", table: "RunnersStore", bundle: .module)
                case .purchaseErrorTitle:
                    String(localized: "purchaseErrorTitle", table: "RunnersStore", bundle: .module)
                case .purchaseNotAllowed:
                    String(localized: "purchaseNotAllowed", table: "RunnersStore", bundle: .module)
                case .purchaseNotAllowedSuggestion:
                    String(localized: "purchaseNotAllowedSuggestion", table: "RunnersStore", bundle: .module)
                case .restore:
                    String(localized: "restore", table: "RunnersStore", bundle: .module)
                case .restoreTitle:
                    String(localized: "restoreTitle", table: "RunnersStore", bundle: .module)
                case .runnersStoreTitle:
                    String(localized: "runnersStoreTitle", table: "RunnersStore", bundle: .module)
                case .unknownError:
                    String(localized: "unknownError", table: "RunnersStore", bundle: .module)
                case .userCancelled:
                    String(localized: "userCancelled", table: "RunnersStore", bundle: .module)
            }
        }
    }
    
    public enum SelfMadeRunners: String, RCLStrings {
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
        
        public var localizedString: String {
            return switch self {
                case .color:
                    String(localized: "color", table: "SelfMadeRunners", bundle: .module)
                case .conflictName:
                    String(localized: "conflictName", table: "SelfMadeRunners", bundle: .module)
                case .formatPrecondition:
                    String(localized: "formatPrecondition", table: "SelfMadeRunners", bundle: .module)
                case .frames:
                    String(localized: "frames", table: "SelfMadeRunners", bundle: .module)
                case .heightPrecondition:
                    String(localized: "heightPrecondition", table: "SelfMadeRunners", bundle: .module)
                case .preconditions:
                    String(localized: "preconditions", table: "SelfMadeRunners", bundle: .module)
                case .preview:
                    String(localized: "preview", table: "SelfMadeRunners", bundle: .module)
                case .register:
                    String(localized: "register", table: "SelfMadeRunners", bundle: .module)
                case .registerErrorTitle:
                    String(localized: "registerErrorTitle", table: "SelfMadeRunners", bundle: .module)
                case .registeredRunners:
                    String(localized: "registeredRunners", table: "SelfMadeRunners", bundle: .module)
                case .runnerName:
                    String(localized: "runnerName", table: "SelfMadeRunners", bundle: .module)
                case .selfMadeRunnersTitle:
                    String(localized: "selfMadeRunnersTitle", table: "SelfMadeRunners", bundle: .module)
                case .toRegister:
                    String(localized: "toRegister", table: "SelfMadeRunners", bundle: .module)
                case .useOriginalColor:
                    String(localized: "useOriginalColor", table: "SelfMadeRunners", bundle: .module)
                case .violatePrecondition:
                    String(localized: "violatePrecondition", table: "SelfMadeRunners", bundle: .module)
                case .violateUpperLimit:
                    String(localized: "violateUpperLimit", table: "SelfMadeRunners", bundle: .module)
                case .widthPrecondition:
                    String(localized: "widthPrecondition", table: "SelfMadeRunners", bundle: .module)
            }
        }
    }
    
    public enum SystemInfoBar: String, RCLStrings {
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
        
        public var localizedString: String {
            return switch self {
                case .available:
                    String(localized: "available", table: "SystemInfoBar", bundle: .module)
                case .barGraph:
                    String(localized: "barGraph", table: "SystemInfoBar", bundle: .module)
                case .onlyIcon:
                    String(localized: "onlyIcon", table: "SystemInfoBar", bundle: .module)
                case .percentage:
                    String(localized: "percentage", table: "SystemInfoBar", bundle: .module)
                case .pieChart:
                    String(localized: "pieChart", table: "SystemInfoBar", bundle: .module)
                case .showBatteryState:
                    String(localized: "showBatteryState", table: "SystemInfoBar", bundle: .module)
                case .showCPUUsage:
                    String(localized: "showCPUUsage", table: "SystemInfoBar", bundle: .module)
                case .showMemoryPerformance:
                    String(localized: "showMemoryPerformance", table: "SystemInfoBar", bundle: .module)
                case .showNetworkSpeed:
                    String(localized: "showNetworkSpeed", table: "SystemInfoBar", bundle: .module)
                case .showStorageCapacity:
                    String(localized: "showStorageCapacity", table: "SystemInfoBar", bundle: .module)
                case .used:
                    String(localized: "used", table: "SystemInfoBar", bundle: .module)
            }
        }
    }
    
    public enum SystemInfoSettings: String, RCLStrings {
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
        
        public var localizedString: String {
            return switch self {
                case .activate:
                    String(localized: "activate", table: "SystemInfoSettings", bundle: .module)
                case .activateSystemInfoBarMessage:
                    String(localized: "activateSystemInfoBarMessage", table: "SystemInfoSettings", bundle: .module)
                case .activateSystemInfoBarTitle:
                    String(localized: "activateSystemInfoBarTitle", table: "SystemInfoSettings", bundle: .module)
                case .batteryState:
                    String(localized: "batteryState", table: "SystemInfoSettings", bundle: .module)
                case .changedMyMind:
                    String(localized: "changedMyMind", table: "SystemInfoSettings", bundle: .module)
                case .experimentalFeature:
                    String(localized: "experimentalFeature", table: "SystemInfoSettings", bundle: .module)
                case .memoryPerformance:
                    String(localized: "memoryPerformance", table: "SystemInfoSettings", bundle: .module)
                case .monitoring:
                    String(localized: "monitoring", table: "SystemInfoSettings", bundle: .module)
                case .networkConnection:
                    String(localized: "networkConnection", table: "SystemInfoSettings", bundle: .module)
                case .storageCapacity:
                    String(localized: "storageCapacity", table: "SystemInfoSettings", bundle: .module)
                case .systemInfoBar:
                    String(localized: "systemInfoBar", table: "SystemInfoSettings", bundle: .module)
            }
        }
    }
}
