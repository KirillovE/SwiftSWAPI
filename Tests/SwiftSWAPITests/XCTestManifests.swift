import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SwiftSWAPITests.allTests),
        testCase(PersonTests.allTests),
        testCase(FilmTests.allTests),
        testCase(StarshipTests.allTests),
        testCase(VehicleTests.allTests),
        testCase(PlanetTests.allTests),
    ]
}
#endif
