import XCTest

extension CSRFTests {
    static let __allTests = [
        ("testThadCSRFMiddlewareBlockInvalidToken", testThadCSRFMiddlewareBlockInvalidToken),
        ("testThadCSRFMiddlewareBlockNoToken", testThadCSRFMiddlewareBlockNoToken),
        ("testThatCSRFMiddlewareFailsWithNoSession", testThatCSRFMiddlewareFailsWithNoSession),
        ("testThatCSRFMiddlewareReturnsToken", testThatCSRFMiddlewareReturnsToken),
        ("testTokenRoundTripUsingHeader", testTokenRoundTripUsingHeader),
        ("testTokenRoundTripUsingJSONBody", testTokenRoundTripUsingJSONBody),
        ("testTokenRoundTripUsingMultipartBody", testTokenRoundTripUsingMultipartBody),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CSRFTests.__allTests),
    ]
}
#endif
