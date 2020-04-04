import XCTest
@testable import HelloWorld

class HelloWorldTests: XCTestCase {

    func testNoName() {
        let expected = "Hello, World!"
        XCTAssertEqual(HelloWorld.hello(), expected, "When given no name, we should greet the world!")
    }

    func testSampleName() {
        let expected = "Hello, Chat!"
        XCTAssertEqual(HelloWorld.hello("Chat"), expected, "When given 'Chat' we should greet Chat!")
    }

    func testOtherSampleName() {
        let expected = "Hello, theswiftkid!"
        XCTAssertEqual(HelloWorld.hello("theswiftkid"), expected, "When given 'theswiftkid' we should greet theswiftkid!")
    }

    func testNoStrangeName() {
        let expected = "Hello, !"
        XCTAssertEqual(HelloWorld.hello(""), expected, "When given an empty string, it is strange, but should have a space and punctuation")
    }

    static var allTests: [(String, (HelloWorldTests) -> () throws -> Void)] {
        return [
            ("testNoName", testNoName),
            ("testSampleName", testSampleName),
            ("testOtherSampleName", testOtherSampleName),
            ("testNoStrangeName", testNoStrangeName),
        ]
    }
}
