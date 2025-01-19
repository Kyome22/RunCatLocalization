public enum RCLCategory: String, Sendable, Identifiable, CaseIterable {
    case dashboard
    case systemInfoBar
    case runnerName
    case runnersStore
    case selfMadeRunners
    case generalSettings
    case systemInfoSettings
    case others

    public var id: String { rawValue }
}
