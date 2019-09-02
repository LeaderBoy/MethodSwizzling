import XCTest
@testable import MethodSwizzling

final class MethodSwizzlingTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MethodSwizzling().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
