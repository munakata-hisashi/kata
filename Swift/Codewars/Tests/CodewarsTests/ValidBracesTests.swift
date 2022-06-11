import XCTest
@testable import Codewars
class ValidBracesTests: XCTestCase {
    var v: ValidBraces!
    override func setUp() {
        super.setUp()
        self.v = ValidBraces()
    }
    static var allTests = [
        ("testNonNested", testNonNested),
        ("testNested", testNested),
    ]

    func testNonNested() {
        XCTAssertTrue(v.validBraces("()"))
        XCTAssertTrue(v.validBraces("[]"))
        XCTAssertTrue(v.validBraces("{}"))
        XCTAssertTrue(v.validBraces("(){}[]"))
    }
    
    func testNested() {
        XCTAssertTrue(v.validBraces("([{}])"))
        XCTAssertFalse(v.validBraces("(}"))
        XCTAssertFalse(v.validBraces("[(])"))
        XCTAssertTrue(v.validBraces("({})[({})]"))
        XCTAssertFalse(v.validBraces("(})"))
        XCTAssertTrue(v.validBraces("(({{[[]]}}))"))
        XCTAssertTrue(v.validBraces("{}({})[]"))
        XCTAssertFalse(v.validBraces(")(}{]["))
        XCTAssertFalse(v.validBraces("())({}}{()][]["))
        XCTAssertFalse(v.validBraces("(((({{"))
        XCTAssertFalse(v.validBraces("}}]]))}])"))
    }
}

