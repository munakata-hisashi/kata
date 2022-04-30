import Foundation

struct FizzBuzz20220430 {
    static func fizzBuzz(_ n: Int) -> [String] {
        var result: [String] = .init(repeating: "", count: n)
        (1...n).forEach{ i in
            switch i {
            case i where i % 15 == 0:
                result[i - 1] = "FizzBuzz"
            case i where i % 5 == 0:
                result[i - 1] = "Buzz"
            case i where i % 3 == 0:
                result[i - 1] = "Fizz"
            default:
                result[i - 1] = "\(i)"
            }
        }
        return result
    }
    
    static func start(n: Int) {
        let result = fizzBuzz(n)
        result.forEach {
            print("\($0)")
        }
    }
}
