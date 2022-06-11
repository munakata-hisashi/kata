import Foundation

struct ValidBraces {
    func validBraces(_ string: String) -> Bool {
        guard string.count % 2 == 0 else { return false }
        let braces: [Brace] = string.compactMap(Brace.create)
        guard braces.filter(\.isLeft).count == braces.filter({ !$0.isLeft }).count else { return false }
        var buffer: [Brace] = []
        var result: Bool = true
        braces.forEach{ b in
            if b.isLeft {
                buffer.append(b)
            } else {
                if let l = buffer.popLast(), l.isLeft, l.isEqualPattern(b) {
                    
                } else {
                    result = false
                }
            }
        }
        return result
    }
}

struct Brace {
    let isLeft: Bool
    let pattern: BracePattern
    
    static func create(c: Character) -> Brace? {
        switch c {
        case "(":
            return .init(isLeft: true, pattern: .parentheses)
        case ")":
            return .init(isLeft: false, pattern: .parentheses)
        case "[":
            return .init(isLeft: true, pattern: .bracket)
        case "]":
            return .init(isLeft: false, pattern: .bracket)
        case "{":
            return .init(isLeft: true, pattern: .curly)
        case "}":
            return .init(isLeft: false, pattern: .curly)
        default:
            return nil
        }
    }
    
    func isEqualPattern(_ other: Brace) -> Bool {
        self.pattern == other.pattern
    }
}

enum BracePattern {
    case parentheses
    case bracket
    case curly
}
