//
//  uitestelements2UITests.swift
//  uitestelements2UITests
//
//  Created by Roberto Carmona on 25/10/24.
//

import XCTest

final class UITestExample: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
    
    func testToggleSwitch() {
        let toggleSwitch = app.switches["toggleSwitch"]
        XCTAssertTrue(toggleSwitch.exists, "El switch existe")
        
        toggleSwitch.tap()
        XCTAssertEqual(toggleSwitch.value as! String, "1", "El Switch debe estar encendido")
        
        toggleSwitch.tap()
        XCTAssertEqual(toggleSwitch.value as! String, "0", "El Switch debe estar apagado")
    }
    
    func testImageView() {
        let imageView = app.images["imageView"]
        XCTAssertTrue(imageView.exists, "La imagen existe")
    }
    
    func testTableView() {
        let tableView = app.tables["tableView"]
        XCTAssertTrue(tableView.exists, "La tableView existe")
        
        let cell = tableView.cells.element(boundBy: 0)
        XCTAssertTrue(cell.exists, "La primera celda de la tabla existe")
        XCTAssertEqual(cell.staticTexts.element.label, "Row 0", "La priemra celda muestra 'Row 0'")
    }
    
    func testCollectionView() {
        let collectionView = app.collectionViews["collectionView"]
        XCTAssertTrue(collectionView.exists, "La CollectionView existe")
        
        let cell = collectionView.cells.element(boundBy: 0)
        XCTAssertTrue(cell.exists, "La primera celda de la CollectionView existe")
    }
}

