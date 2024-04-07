extension String {
    func formatRemoved() -> String {
        self.replacingOccurrences(of: "%@", with: "")
    }

    func formatted() -> String {
        var text = self
        var count = 0
        while let range = text.range(of: "%@") {
            text = text.replacingCharacters(in: range, with: "\\(items[\(count)])")
            count += 1
        }
        return text
    }

    func nested() -> String {
        self.components(separatedBy: .newlines)
            .map { $0.isEmpty ? "" : "    \($0)" }
            .joined(separator: "\n")
    }
}
