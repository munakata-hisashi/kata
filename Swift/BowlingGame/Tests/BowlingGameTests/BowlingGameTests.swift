import XCTest
import class Foundation.Bundle
@testable import BowlingGame
final class BowlingGameTests: XCTestCase {
    var g: BowlingGame!
    
    override func setUp() {
        super.setUp()
        self.g = BowlingGame()
    }
    
    private func rollMany(_ n: Int, _ pins: Int) {
        for _ in (0..<n){
            g.roll(pins)
        }
    }
    
    func testGutterGame() throws {
        rollMany(20, 0)
        XCTAssertEqual(0, g.score())
    }
    
 
    
    func testAllOnes() throws {
        rollMany(20, 1)
        XCTAssertEqual(20, g.score())
    }
    
    func testOneSpare() throws {
        rollSpare()
        g.roll(3)
        rollMany(17, 0)
        XCTAssertEqual(16, g.score())
    }
    
    func testOneStrike() throws {
        rollStrike()
        g.roll(3)
        g.roll(4)
        rollMany(16, 0)
        XCTAssertEqual(24, g.score())
    }
    
    func testPerfectGame() throws {
        rollMany(12, 10)
        XCTAssertEqual(300, g.score())
    }
    
    private func rollStrike() {
        g.roll(10)
    }
    
    private func rollSpare() {
        g.roll(5)
        g.roll(5)
    }
    
}
