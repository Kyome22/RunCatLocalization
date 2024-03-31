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
        case more
        case reportAnIssue
        case runners
        case selfMade
        case settings
        case store
        case terminateApp
        
        public var id: String { rawValue }
        
        public var localizedText: Text {
            return switch self {
            case .aboutApp:
                Text("aboutApp", tableName: "Dashboard", bundle: .module)
            case .activityMonitor:
                Text("activityMonitor", tableName: "Dashboard", bundle: .module)
            case .back:
                Text("back", tableName: "Dashboard", bundle: .module)
            case .categoryAnimal:
                Text("categoryAnimal", tableName: "Dashboard", bundle: .module)
            case .categoryDefault:
                Text("categoryDefault", tableName: "Dashboard", bundle: .module)
            case .categoryInanimate:
                Text("categoryInanimate", tableName: "Dashboard", bundle: .module)
            case .categorySeasonal:
                Text("categorySeasonal", tableName: "Dashboard", bundle: .module)
            case .categorySelfMade:
                Text("categorySelfMade", tableName: "Dashboard", bundle: .module)
            case .categorySpecial:
                Text("categorySpecial", tableName: "Dashboard", bundle: .module)
            case .debugSleep:
                Text("debugSleep", tableName: "Dashboard", bundle: .module)
            case .debugWakeUp:
                Text("debugWakeUp", tableName: "Dashboard", bundle: .module)
            case .help:
                Text("help", tableName: "Dashboard", bundle: .module)
            case .more:
                Text("more", tableName: "Dashboard", bundle: .module)
            case .reportAnIssue:
                Text("reportAnIssue", tableName: "Dashboard", bundle: .module)
            case .runners:
                Text("runners", tableName: "Dashboard", bundle: .module)
            case .selfMade:
                Text("selfMade", tableName: "Dashboard", bundle: .module)
            case .settings:
                Text("settings", tableName: "Dashboard", bundle: .module)
            case .store:
                Text("store", tableName: "Dashboard", bundle: .module)
            case .terminateApp:
                Text("terminateApp", tableName: "Dashboard", bundle: .module)
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
        
        public var localizedText: Text {
            return switch self {
            case .allRunners:
                Text("allRunners", tableName: "GeneralSettings", bundle: .module)
            case .changedMyMind:
                Text("changedMyMind", tableName: "GeneralSettings", bundle: .module)
            case .flipHorizontally:
                Text("flipHorizontally", tableName: "GeneralSettings", bundle: .module)
            case .invertSpeed:
                Text("invertSpeed", tableName: "GeneralSettings", bundle: .module)
            case .launch:
                Text("launch", tableName: "GeneralSettings", bundle: .module)
            case .launchAtLogin:
                Text("launchAtLogin", tableName: "GeneralSettings", bundle: .module)
            case .onlyMonochromeRunners:
                Text("onlyMonochromeRunners", tableName: "GeneralSettings", bundle: .module)
            case .runner:
                Text("runner", tableName: "GeneralSettings", bundle: .module)
            case .selectAutomatically:
                Text("selectAutomatically", tableName: "GeneralSettings", bundle: .module)
            case .stop:
                Text("stop", tableName: "GeneralSettings", bundle: .module)
            case .stopRunner:
                Text("stopRunner", tableName: "GeneralSettings", bundle: .module)
            case .stopRunnerMessage:
                Text("stopRunnerMessage", tableName: "GeneralSettings", bundle: .module)
            case .stopRunnerTitle:
                Text("stopRunnerTitle", tableName: "GeneralSettings", bundle: .module)
            case .useAccentColor:
                Text("useAccentColor", tableName: "GeneralSettings", bundle: .module)
            }
        }
    }
    
    public enum Others: String, Identifiable, CaseIterable {
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
        
        public var localizedText: Text {
            return switch self {
            case .generalTab:
                Text("generalTab", tableName: "Others", bundle: .module)
            case .helpFAQ:
                Text("helpFAQ", tableName: "Others", bundle: .module)
            case .helpHowToRegister:
                Text("helpHowToRegister", tableName: "Others", bundle: .module)
            case .mailEnvironment:
                Text("mailEnvironment", tableName: "Others", bundle: .module)
            case .mailExpectedResult:
                Text("mailExpectedResult", tableName: "Others", bundle: .module)
            case .mailIssueReport:
                Text("mailIssueReport", tableName: "Others", bundle: .module)
            case .mailReproduceIssue:
                Text("mailReproduceIssue", tableName: "Others", bundle: .module)
            case .mailShortDescription:
                Text("mailShortDescription", tableName: "Others", bundle: .module)
            case .mailWhatYouTried:
                Text("mailWhatYouTried", tableName: "Others", bundle: .module)
            case .queryLang:
                Text("queryLang", tableName: "Others", bundle: .module)
            case .support:
                Text("support", tableName: "Others", bundle: .module)
            case .systemInfoTab:
                Text("systemInfoTab", tableName: "Others", bundle: .module)
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
        
        public var localizedText: Text {
            return switch self {
            case .b_cat:
                Text("b_cat", tableName: "RunnerName", bundle: .module)
            case .bird:
                Text("bird", tableName: "RunnerName", bundle: .module)
            case .bonfire:
                Text("bonfire", tableName: "RunnerName", bundle: .module)
            case .butterfly:
                Text("butterfly", tableName: "RunnerName", bundle: .module)
            case .c_cat:
                Text("c_cat", tableName: "RunnerName", bundle: .module)
            case .cat:
                Text("cat", tableName: "RunnerName", bundle: .module)
            case .cat_cluster_metal:
                Text("cat_cluster_metal", tableName: "RunnerName", bundle: .module)
            case .cat_flash:
                Text("cat_flash", tableName: "RunnerName", bundle: .module)
            case .cat_gaming:
                Text("cat_gaming", tableName: "RunnerName", bundle: .module)
            case .cat_golden:
                Text("cat_golden", tableName: "RunnerName", bundle: .module)
            case .cat_nyan_mock:
                Text("cat_nyan_mock", tableName: "RunnerName", bundle: .module)
            case .chameleon:
                Text("chameleon", tableName: "RunnerName", bundle: .module)
            case .cheetah:
                Text("cheetah", tableName: "RunnerName", bundle: .module)
            case .chicken:
                Text("chicken", tableName: "RunnerName", bundle: .module)
            case .chime_wind:
                Text("chime_wind", tableName: "RunnerName", bundle: .module)
            case .city:
                Text("city", tableName: "RunnerName", bundle: .module)
            case .coffee:
                Text("coffee", tableName: "RunnerName", bundle: .module)
            case .cogwheel:
                Text("cogwheel", tableName: "RunnerName", bundle: .module)
            case .corgi_welsh:
                Text("corgi_welsh", tableName: "RunnerName", bundle: .module)
            case .cradle:
                Text("cradle", tableName: "RunnerName", bundle: .module)
            case .curve_sine:
                Text("curve_sine", tableName: "RunnerName", bundle: .module)
            case .dinosaur:
                Text("dinosaur", tableName: "RunnerName", bundle: .module)
            case .dog:
                Text("dog", tableName: "RunnerName", bundle: .module)
            case .dogeza:
                Text("dogeza", tableName: "RunnerName", bundle: .module)
            case .dolphin:
                Text("dolphin", tableName: "RunnerName", bundle: .module)
            case .dots:
                Text("dots", tableName: "RunnerName", bundle: .module)
            case .dragon:
                Text("dragon", tableName: "RunnerName", bundle: .module)
            case .drink_tapioca:
                Text("drink_tapioca", tableName: "RunnerName", bundle: .module)
            case .drop:
                Text("drop", tableName: "RunnerName", bundle: .module)
            case .duck_rubber:
                Text("duck_rubber", tableName: "RunnerName", bundle: .module)
            case .earth:
                Text("earth", tableName: "RunnerName", bundle: .module)
            case .engine:
                Text("engine", tableName: "RunnerName", bundle: .module)
            case .entaku:
                Text("entaku", tableName: "RunnerName", bundle: .module)
            case .factory:
                Text("factory", tableName: "RunnerName", bundle: .module)
            case .fishman:
                Text("fishman", tableName: "RunnerName", bundle: .module)
            case .fox:
                Text("fox", tableName: "RunnerName", bundle: .module)
            case .frog:
                Text("frog", tableName: "RunnerName", bundle: .module)
            case .frypan:
                Text("frypan", tableName: "RunnerName", bundle: .module)
            case .ghost:
                Text("ghost", tableName: "RunnerName", bundle: .module)
            case .greyhound:
                Text("greyhound", tableName: "RunnerName", bundle: .module)
            case .hedgehog:
                Text("hedgehog", tableName: "RunnerName", bundle: .module)
            case .horse:
                Text("horse", tableName: "RunnerName", bundle: .module)
            case .human:
                Text("human", tableName: "RunnerName", bundle: .module)
            case .lantern_o_jack:
                Text("lantern_o_jack", tableName: "RunnerName", bundle: .module)
            case .locomotive_steam:
                Text("locomotive_steam", tableName: "RunnerName", bundle: .module)
            case .made_self:
                Text("made_self", tableName: "RunnerName", bundle: .module)
            case .mochi:
                Text("mochi", tableName: "RunnerName", bundle: .module)
            case .mouse:
                Text("mouse", tableName: "RunnerName", bundle: .module)
            case .neko_maneki:
                Text("neko_maneki", tableName: "RunnerName", bundle: .module)
            case .octopus:
                Text("octopus", tableName: "RunnerName", bundle: .module)
            case .otter:
                Text("otter", tableName: "RunnerName", bundle: .module)
            case .owl:
                Text("owl", tableName: "RunnerName", bundle: .module)
            case .parrot:
                Text("parrot", tableName: "RunnerName", bundle: .module)
            case .parrot_party:
                Text("parrot_party", tableName: "RunnerName", bundle: .module)
            case .pendulum:
                Text("pendulum", tableName: "RunnerName", bundle: .module)
            case .penguin:
                Text("penguin", tableName: "RunnerName", bundle: .module)
            case .penguin2:
                Text("penguin2", tableName: "RunnerName", bundle: .module)
            case .people_party:
                Text("people_party", tableName: "RunnerName", bundle: .module)
            case .pig:
                Text("pig", tableName: "RunnerName", bundle: .module)
            case .pulse:
                Text("pulse", tableName: "RunnerName", bundle: .module)
            case .puppy:
                Text("puppy", tableName: "RunnerName", bundle: .module)
            case .rabbit:
                Text("rabbit", tableName: "RunnerName", bundle: .module)
            case .reactor:
                Text("reactor", tableName: "RunnerName", bundle: .module)
            case .rocket:
                Text("rocket", tableName: "RunnerName", bundle: .module)
            case .runners_all:
                Text("runners_all", tableName: "RunnerName", bundle: .module)
            case .sausage:
                Text("sausage", tableName: "RunnerName", bundle: .module)
            case .sheep:
                Text("sheep", tableName: "RunnerName", bundle: .module)
            case .sleigh_reindeer:
                Text("sleigh_reindeer", tableName: "RunnerName", bundle: .module)
            case .slime:
                Text("slime", tableName: "RunnerName", bundle: .module)
            case .snowman:
                Text("snowman", tableName: "RunnerName", bundle: .module)
            case .sparkler:
                Text("sparkler", tableName: "RunnerName", bundle: .module)
            case .squirrel:
                Text("squirrel", tableName: "RunnerName", bundle: .module)
            case .sushi:
                Text("sushi", tableName: "RunnerName", bundle: .module)
            case .sushi_rotating:
                Text("sushi_rotating", tableName: "RunnerName", bundle: .module)
            case .tail_cat:
                Text("tail_cat", tableName: "RunnerName", bundle: .module)
            case .terrier:
                Text("terrier", tableName: "RunnerName", bundle: .module)
            case .triforce:
                Text("triforce", tableName: "RunnerName", bundle: .module)
            case .uhooi:
                Text("uhooi", tableName: "RunnerName", bundle: .module)
            case .up_push:
                Text("up_push", tableName: "RunnerName", bundle: .module)
            case .up_sit:
                Text("up_sit", tableName: "RunnerName", bundle: .module)
            case .whale:
                Text("whale", tableName: "RunnerName", bundle: .module)
            case .wheel_hamster:
                Text("wheel_hamster", tableName: "RunnerName", bundle: .module)
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
        
        public var localizedText: Text {
            return switch self {
            case .categoryAnimal:
                Text("categoryAnimal", tableName: "RunnersStore", bundle: .module)
            case .categoryInanimate:
                Text("categoryInanimate", tableName: "RunnersStore", bundle: .module)
            case .categoryRecommended:
                Text("categoryRecommended", tableName: "RunnersStore", bundle: .module)
            case .categorySeasonal:
                Text("categorySeasonal", tableName: "RunnersStore", bundle: .module)
            case .categorySpecial:
                Text("categorySpecial", tableName: "RunnersStore", bundle: .module)
            case .failedVerification:
                Text("failedVerification", tableName: "RunnersStore", bundle: .module)
            case .pending:
                Text("pending", tableName: "RunnersStore", bundle: .module)
            case .productNotFound:
                Text("productNotFound", tableName: "RunnersStore", bundle: .module)
            case .productNotFoundSuggestion:
                Text("productNotFoundSuggestion", tableName: "RunnersStore", bundle: .module)
            case .productUnavailable:
                Text("productUnavailable", tableName: "RunnersStore", bundle: .module)
            case .purchase:
                Text("purchase", tableName: "RunnersStore", bundle: .module)
            case .purchaseErrorTitle:
                Text("purchaseErrorTitle", tableName: "RunnersStore", bundle: .module)
            case .purchaseNotAllowed:
                Text("purchaseNotAllowed", tableName: "RunnersStore", bundle: .module)
            case .purchaseNotAllowedSuggestion:
                Text("purchaseNotAllowedSuggestion", tableName: "RunnersStore", bundle: .module)
            case .restore:
                Text("restore", tableName: "RunnersStore", bundle: .module)
            case .restoreTitle:
                Text("restoreTitle", tableName: "RunnersStore", bundle: .module)
            case .runnersStoreTitle:
                Text("runnersStoreTitle", tableName: "RunnersStore", bundle: .module)
            case .unknownError:
                Text("unknownError", tableName: "RunnersStore", bundle: .module)
            case .userCancelled:
                Text("userCancelled", tableName: "RunnersStore", bundle: .module)
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
        
        public var localizedText: Text {
            return switch self {
            case .color:
                Text("color", tableName: "SelfMadeRunners", bundle: .module)
            case .conflictName:
                Text("conflictName", tableName: "SelfMadeRunners", bundle: .module)
            case .formatPrecondition:
                Text("formatPrecondition", tableName: "SelfMadeRunners", bundle: .module)
            case .frames:
                Text("frames", tableName: "SelfMadeRunners", bundle: .module)
            case .heightPrecondition:
                Text("heightPrecondition", tableName: "SelfMadeRunners", bundle: .module)
            case .preconditions:
                Text("preconditions", tableName: "SelfMadeRunners", bundle: .module)
            case .preview:
                Text("preview", tableName: "SelfMadeRunners", bundle: .module)
            case .register:
                Text("register", tableName: "SelfMadeRunners", bundle: .module)
            case .registerErrorTitle:
                Text("registerErrorTitle", tableName: "SelfMadeRunners", bundle: .module)
            case .registeredRunners:
                Text("registeredRunners", tableName: "SelfMadeRunners", bundle: .module)
            case .runnerName:
                Text("runnerName", tableName: "SelfMadeRunners", bundle: .module)
            case .selfMadeRunnersTitle:
                Text("selfMadeRunnersTitle", tableName: "SelfMadeRunners", bundle: .module)
            case .toRegister:
                Text("toRegister", tableName: "SelfMadeRunners", bundle: .module)
            case .useOriginalColor:
                Text("useOriginalColor", tableName: "SelfMadeRunners", bundle: .module)
            case .violatePrecondition:
                Text("violatePrecondition", tableName: "SelfMadeRunners", bundle: .module)
            case .violateUpperLimit:
                Text("violateUpperLimit", tableName: "SelfMadeRunners", bundle: .module)
            case .widthPrecondition:
                Text("widthPrecondition", tableName: "SelfMadeRunners", bundle: .module)
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
        
        public var localizedText: Text {
            return switch self {
            case .available:
                Text("available", tableName: "SystemInfoBar", bundle: .module)
            case .barGraph:
                Text("barGraph", tableName: "SystemInfoBar", bundle: .module)
            case .onlyIcon:
                Text("onlyIcon", tableName: "SystemInfoBar", bundle: .module)
            case .percentage:
                Text("percentage", tableName: "SystemInfoBar", bundle: .module)
            case .pieChart:
                Text("pieChart", tableName: "SystemInfoBar", bundle: .module)
            case .showBatteryState:
                Text("showBatteryState", tableName: "SystemInfoBar", bundle: .module)
            case .showCPUUsage:
                Text("showCPUUsage", tableName: "SystemInfoBar", bundle: .module)
            case .showMemoryPerformance:
                Text("showMemoryPerformance", tableName: "SystemInfoBar", bundle: .module)
            case .showNetworkSpeed:
                Text("showNetworkSpeed", tableName: "SystemInfoBar", bundle: .module)
            case .showStorageCapacity:
                Text("showStorageCapacity", tableName: "SystemInfoBar", bundle: .module)
            case .used:
                Text("used", tableName: "SystemInfoBar", bundle: .module)
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
        
        public var localizedText: Text {
            return switch self {
            case .activate:
                Text("activate", tableName: "SystemInfoSettings", bundle: .module)
            case .activateSystemInfoBarMessage:
                Text("activateSystemInfoBarMessage", tableName: "SystemInfoSettings", bundle: .module)
            case .activateSystemInfoBarTitle:
                Text("activateSystemInfoBarTitle", tableName: "SystemInfoSettings", bundle: .module)
            case .batteryState:
                Text("batteryState", tableName: "SystemInfoSettings", bundle: .module)
            case .changedMyMind:
                Text("changedMyMind", tableName: "SystemInfoSettings", bundle: .module)
            case .experimentalFeature:
                Text("experimentalFeature", tableName: "SystemInfoSettings", bundle: .module)
            case .memoryPerformance:
                Text("memoryPerformance", tableName: "SystemInfoSettings", bundle: .module)
            case .monitoring:
                Text("monitoring", tableName: "SystemInfoSettings", bundle: .module)
            case .networkConnection:
                Text("networkConnection", tableName: "SystemInfoSettings", bundle: .module)
            case .storageCapacity:
                Text("storageCapacity", tableName: "SystemInfoSettings", bundle: .module)
            case .systemInfoBar:
                Text("systemInfoBar", tableName: "SystemInfoSettings", bundle: .module)
            }
        }
    }
}