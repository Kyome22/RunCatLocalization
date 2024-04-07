extension String {
    func lowerCamelCased() -> String {
        self.prefix(1).lowercased() + self.dropFirst()
    }

    func nested() -> String {
        self.components(separatedBy: .newlines)
            .map { $0.isEmpty ? "" : "    \($0)" }
            .joined(separator: "\n")
    }
}
