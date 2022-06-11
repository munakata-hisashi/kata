import XCTest
import Codewars
@testable import Codewars

class GoodVsEvilTests: XCTestCase {
    var goodVsEvil: GoodVsEvil!
    
    override func setUp() {
        super.setUp()
        self.goodVsEvil = GoodVsEvil()
    }
    
    static var allTests = [
        ("EvilShouldWin", testEvilShouldWin),
        ("GoodShouldTriumph", testGoodShouldTriumph),
        ("ShouldBeATie", testShouldBeATie)
    ]
    
    func testEvilShouldWin() {
        XCTAssertEqual("Battle Result: Evil eradicates all trace of Good", goodVsEvil.evaluate(good: "1 1 1 1 1 1", vsEvil: "1 1 1 1 1 1 1"))
    }
  
    func testGoodShouldTriumph() {
        XCTAssertEqual("Battle Result: Good triumphs over Evil", goodVsEvil.evaluate(good: "0 0 0 0 0 10", vsEvil: "0 1 1 1 1 0 0"))
    }
  
    func testShouldBeATie() {
        XCTAssertEqual("Battle Result: No victor on this battle field", goodVsEvil.evaluate(good: "1 0 0 0 0 0", vsEvil: "1 0 0 0 0 0 0"))
    }
}

