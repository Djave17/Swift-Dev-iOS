//
//  Unit_Testing1Sesion12octTests.swift
//  Unit-Testing1Sesion12octTests
//
//  Created by David Sanchez on 12/10/24.
//

import XCTest
@testable import Unit_Testing1Sesion12oct

final class Unit_Testing1Sesion12octTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
        
    }
    func textExampleAssertTrue(){
        let boolValue = true
        XCTAssertTrue(boolValue, "El valor es verdadero")
        
    }
    func testExampleAssertFalse(){
        let boolValue = false
        XCTAssert(boolValue, "El valor es falso")
    }
    
    func testExampleAssertNil() {
        let optionalValue: String? = nil
        XCTAssertNil(optionalValue, "El valor debe ser nil")
    }
    // Verifica que un valor no sea nil.
    func testExampleAssertNotNil() {
        let optionalValue: String? = "Hola mundo!"
        XCTAssertNotNil(optionalValue, "El valor no debe ser nil")
    }

    func testExampleAssertGreaterThan() {
        let a = 5
        let b = 3
        XCTAssertGreaterThan(a, b, "a debe ser mayor que b")
    }
    // Verifica que un valor sea menor que otro.
    func testExampleAssertLessThan() {
        let a = 3
        let b = 5
        XCTAssertLessThan(a, b, "a debe ser menor que b")
    }
    func testExampleAssertGreaterThanOrEqual() {
        let a = 5
        let b = 5
        XCTAssertGreaterThanOrEqual(a, b, "a debe ser mayor o igual que b")
    }
    // Verifica que un valor sea menor o igual a otro.
    func testExampleAssertLessThanOrEqual() {
        let a = 3
        let b = 3
        XCTAssertLessThanOrEqual(a,b, "a debe ser menor igual que b")
    }
//
//    func testExampleFail(){
//        XCTFail("This test is meant to fail")
//    }
}
