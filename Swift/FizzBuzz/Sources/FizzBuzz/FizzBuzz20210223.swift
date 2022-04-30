import Foundation

struct FizzBuzz20210223 {
    static func start(n: Int) {
        (1...n).forEach{ n in
            if n % 15 == 0 {
                print("FizzBuzz")
            } else if n % 3 == 0{
                print("Fizz")
            } else if n % 5 == 0 {
                print("Buzz")
            } else {
                print("\(n)")
            }
        }
    }
}
