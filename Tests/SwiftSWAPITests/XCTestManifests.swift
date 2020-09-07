import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SwiftSWAPITests.allTests),
        testCase(EntityTests.allTests)
    ]
}
#endif
