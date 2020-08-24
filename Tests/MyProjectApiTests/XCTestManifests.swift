import XCTest
//Push.
#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(MyProjectApiTests.allTests),
    ]
}
#endif
