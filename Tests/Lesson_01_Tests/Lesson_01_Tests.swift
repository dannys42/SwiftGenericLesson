import XCTest
@testable import Lesson_01

final class Lesson_01_Tests: XCTestCase {
    func testLesson() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let lesson = Lesson_01()
        lesson.subscribing()
        lesson.publishing()
//        XCTAssertEqual(().text, "Hello, World!")
    }
}
