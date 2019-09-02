import XCTest
@testable import MethodSwizzling

final class MethodSwizzlingTests: XCTestCase {
    func testExample() {
        exchange(originMethod:#selector(aMethod),with :#selector(bMethod), classInstance: self.classForCoder)
        XCTAssertEqual(aMethod(), "B")
    }
    
    @objc dynamic func aMethod() -> String {
        return "A"
    }
    
    @objc dynamic func bMethod() -> String {
        return "B"
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
