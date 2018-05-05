//
//  CIExampleUITests.swift
//  CIExampleUITests
//
//  Created by Bruno Ramos on 05/05/18.
//  Copyright © 2018 Bruno Ramos. All rights reserved.
//

import XCTest

class CIExampleUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testFixedComponentsOnScreenExists() {
        let exists = NSPredicate(format: "exists == true")
        
        expectation(for: exists, evaluatedWith: app.staticTexts["Continuous Integration"]) { () -> Bool in
            return true
        }
        
        expectation(for: exists, evaluatedWith: app.buttons["Automating Everything"]) { () -> Bool in
            return true
        }
        
        waitForExpectations(timeout: 5.0) { (error) in
            XCTFail("Componentes não foram encontrados")
        }
    }
}
