import XCTest
import class Foundation.Bundle
@testable import FizzBuzz

final class FizzBuzzTests: XCTestCase {
    func testFizzBuzz() {
        let expected = ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16", "17", "Fizz", "19", "Buzz"]
        let actual = FizzBuzz20220430.fizzBuzz(20)
        XCTAssertEqual(expected, actual)
    }
}
