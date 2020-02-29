//
//  LIneChartUITests.swift
//  LIneChartUITests
//
//  Created by Vitaly Kozlov on 09.02.2020.
//  Copyright © 2020 Vitaly Kozlov. All rights reserved.
//

import XCTest

class LIneChartUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        super.setUp()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
      //  app.textViews.staticTexts["IsinInputText"].tap()
       // app.typeText("rtrb")
        
        app.buttons["Show"].tap()
        app.buttons["1M"].tap()
        app.buttons["3M"].tap()
        app.buttons["Price"].tap()
        app.buttons["1W"].tap()
        app.buttons["1M"].tap()
        app.buttons["IELD"].tap()
        app.buttons["1W"].tap()
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
