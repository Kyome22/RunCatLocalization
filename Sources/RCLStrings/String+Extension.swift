extension String {
    func nest() -> String {
        return self.components(separatedBy: .newlines)
            .map { $0.isEmpty ? "" : "    \($0)" }
            .joined(separator: "\n")
    }
}