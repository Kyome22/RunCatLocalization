import ArgumentParser
import Foundation

struct RCLStrings: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "strings",
        abstract: "A tool to parse xcstrings and output strings list.",
        version: "0.0.1"
    )

    @Option(
        name: [.customShort("r"), .customLong("resources-path")],
        help: "Path of the Resources directory"
    )
    var resourcesPath: String

    @Option(
        name: [.customShort("o"), .customLong("output-path")],
        help: "Path of the RCL.swift"
    )
    var outputPath: String

    mutating func run() throws {
        let xcstringsURLs = try getXCStringsURLs(resourcesPath)
        let xcstringsItems = try xcstringsURLs
            .map { url in
                var xcstrings = try getXCStrings(url)
                xcstrings.category = url.deletingPathExtension().lastPathComponent
                return xcstrings
            }
            .sorted { $0.category < $1.category }
        try output(outputPath, xcstringsItems)
    }

    private func getXCStringsURLs(_ path: String) throws -> [URL] {
        let fm = FileManager.default
        let contents = try fm.contentsOfDirectory(atPath: path)
        let resourcesURL = URL(fileURLWithPath: path)
        return contents
            .map { resourcesURL.appendingPathComponent($0) }
            .filter { $0.pathExtension == "xcstrings" }
    }

    private func getXCStrings(_ url: URL) throws -> XCStrings {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(XCStrings.self, from: data)
    }

    private func output(_ path: String, _ xcstringsItems: [XCStrings]) throws {
        guard !xcstringsItems.isEmpty else {
            throw RCLSError.empty
        }
        let outputURL = URL(fileURLWithPath: path)
        var text = xcstringsItems
            .map { xcstrings -> String in
                let keys = xcstrings.strings.sorted()
                var text = keys
                    .map {
                        """
                        case .\($0.removedFormat()):
                            String(localized: \"\($0.formatted())\", table: \"\(xcstrings.category)\", bundle: language.bundle)
                        """
                    }
                    .joined(separator: "\n")

                text = """
                    switch self {
                    \(text)
                    }
                    """

                let arguments = if let _ = keys.first(where: { $0.containsFormat() }) {
                    "_ language: RCLLanguage = .automatic, items: String..."
                } else {
                    "_ language: RCLLanguage = .automatic"
                }

                text = """
                    public var id: String { rawValue }
                    
                    public func string(\(arguments)) -> String {
                    \(text.nested())
                    }
                    """

                let caseText = keys
                    .map { "case \($0.removedFormat())" }
                    .joined(separator: "\n")

                text = """
                    \(caseText)
                    
                    \(text)
                    """

                text = """
                    public enum \(xcstrings.category): String, Sendable, Identifiable, CaseIterable {
                    \(text.nested())
                    }
                    """

                return text
            }
            .joined(separator: "\n\n")

        text = """
            import SwiftUI
            
            public enum RCL {
            \(text.nested())
            }
            """

        if FileManager.default.fileExists(atPath: outputURL.absoluteURL.path()) {
            try FileManager.default.removeItem(at: outputURL)
        }
        try text.data(using: .utf8)?.write(to: outputURL)
    }
}
