//
//  Pruebas_Unitarias__DavidSanchezUITestsLaunchTests.swift
//  Pruebas_Unitarias_ DavidSanchezUITests
//
//  Created by David Sanchez on 14/10/24.
//

import XCTest

final class Pruebas_Unitarias__DavidSanchezUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
