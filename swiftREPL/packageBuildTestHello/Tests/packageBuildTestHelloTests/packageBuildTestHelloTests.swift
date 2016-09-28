import XCTest
@testable import packageBuildTestHello

class packageBuildTestHelloTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(packageBuildTestHello().text, "Hello, World!")
    }


    static var allTests : [(String, (packageBuildTestHelloTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
