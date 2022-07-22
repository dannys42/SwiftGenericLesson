import XCTest
@testable import Lesson_02

final class Lesson_02_Tests: XCTestCase {
    func testLesson() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let lesson = Lesson_02()
        lesson.subscribing()
        lesson.publishing()
//        XCTAssertEqual(().text, "Hello, World!")
    }
}
