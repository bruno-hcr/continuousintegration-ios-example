//
//  CIExampleTests.swift
//  CIExampleTests
//
//  Created by Bruno Ramos on 05/05/18.
//  Copyright © 2018 Bruno Ramos. All rights reserved.
//

import XCTest
@testable import CIExample

class CIExampleTests: XCTestCase {
    
    var viewController: ViewController?
    
    override func setUp() {
        super.setUp()
        viewController = ViewController()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testValidSumWithValidResult() {
        let num1: Double = 4.0
        let num2: Double = 4.0
        
        let result: Double? = viewController?.sum(num1, with: num2)
        XCTAssertNotNil(result, "Verificando se o meu objeto Result não é nil")
        XCTAssertEqual(result, 8.0, "A soma dos dois valores deve ser igual a 8.0")
    }
    
    func testSumWithInvalidResult() {
        let num1: Double = 2.0
        let num2: Double = 7.0
        
        let result: Double? = viewController?.sum(num1, with: num2)
        XCTAssertNotNil(result, "Verificando se o meu objeto Result não é nil")
        XCTAssertNotEqual(result, 10.0, "A soma dos dois valores deve ser igual a 9.0")
    }
}
