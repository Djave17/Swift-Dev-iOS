//
//  uitestelements3UITests.swift
//  uitestelements3UITests
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
    
    func testSwipeUpAndSwipeDown() {
        let tableView = app.tables["tableView"]
        XCTAssertTrue(tableView.exists, "La TableView existe")
        
        let firstCell = tableView.cells.element(boundBy: 0)
        XCTAssertTrue(firstCell.exists, "La primera celda existe")
        
        tableView.swipeUp()
        
        let lastCell = tableView.cells.element(boundBy: 19)
        XCTAssertTrue(lastCell.exists, "La ultima celda es visible")
        
        tableView.swipeDown()
        
        XCTAssertTrue(firstCell.exists, "La primera celda es visible")
    }
    
    func testSwipeLeftToDelete() {
        let tableView = app.tables["tableView"]
        XCTAssertTrue(tableView.exists, "La TableView existe")
        
        let cell = tableView.cells.element(boundBy: 0)
        XCTAssertTrue(cell.exists, "La primera celda existe")
        
        cell.swipeLeft()
        
        let deleteButton = cell.buttons["Delete"]
        XCTAssertTrue(deleteButton.exists, "Se debe mostrar el boton de eliminar")
        
        deleteButton.tap()
    }
    
    func testSwipeRightOnCell() {
        let tableView = app.tables["tableView"]
        XCTAssertTrue(tableView.exists, "La TableView existe")
        
        let cell = tableView.cells.element(boundBy: 0)
        XCTAssertTrue(cell.exists, "La primera celda existe")
        
        cell.swipeRight()
        
        XCTAssertTrue(cell.exists, "La celda todavia es visible")
    }
}
