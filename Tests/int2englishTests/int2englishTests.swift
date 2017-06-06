import XCTest
@testable import int2english

class int2englishTests: XCTestCase {
    func testGeneratePositiveTwoDigitInteger() {
        XCTAssertEqual(42.toEnglish(), "forty-two")
    }
    
    func testGenerateNegativeTwoDigitInteger() {
        XCTAssertEqual((-42).toEnglish(), "negative forty-two")
    }
    
    func testGeneratePositiveOverABillion() {
        XCTAssertEqual((1_234_567_890).toEnglish(), "one billion, two hundred, thirty-four million, five hundred, sixty-seven thousand, eight hundred, ninety")
    }

    static var allTests = [
        ("testGeneratePositiveTwoDigitInteger", testGeneratePositiveTwoDigitInteger),
    ]
}
