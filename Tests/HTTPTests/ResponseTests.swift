// This source file is part of the Swift.org Server APIs open source project
//
// Copyright (c) 2017 Swift Server API project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
//

import XCTest

@testable import HTTP

class ResponseTests: XCTestCase {

    func testOkay() {
        let okay = HTTPResponseStatus.ok
        XCTAssertEqual(200, okay.code)
        XCTAssertEqual("OK", okay.reasonPhrase)
        XCTAssertEqual("\(okay)", "200 OK")
    }

    func testContinue() {
        XCTAssertEqual("Continue", HTTPResponseStatus.continue.reasonPhrase)
    }

    func testNotFound() {
        XCTAssertEqual(HTTPResponseStatus.notFound, HTTPResponseStatus(code: 404))
        let notFound: HTTPResponseStatus = 404
        XCTAssertEqual(notFound, HTTPResponseStatus.notFound)
    }

    static var allTests = [
        ("testOkay", testOkay),
        ("testContinue", testContinue),
        ("testNotFound", testNotFound),
    ]
}
