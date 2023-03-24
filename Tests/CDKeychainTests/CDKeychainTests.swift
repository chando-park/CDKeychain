import XCTest
@testable import CDKeychain

final class CDKeychainTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CDKeychain().text, "Hello, World!")
    }
}
