import XCTest

import MethodSwizzlingTests

var tests = [XCTestCaseEntry]()
tests += MethodSwizzlingTests.allTests()
XCTMain(tests)
