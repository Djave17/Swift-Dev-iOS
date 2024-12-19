//
//  uitestelements1UITests.swift
//  uitestelements1UITests
//
//  Created by Roberto Carmona on 25/10/24.
//

import XCTest

final class uitestelements1UITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
    
    func testStaticTextLabel() {
        let staticTextLabel = app.staticTexts["uiTextLabel"]
        XCTAssertTrue(staticTextLabel.exists, "El elemento exite")
        XCTAssertEqual(staticTextLabel.label, "Bienvenido", "El texto es 'Bienvenido'")
    }
    
    func testNameTextField() {
        let nameTextField = app.textFields["uiTextField"]
        XCTAssertTrue(nameTextField.exists, "El elemento exite")
        
        nameTextField.tap()
        nameTextField.typeText("John Doe")
        XCTAssertEqual(nameTextField.value as! String, "John Doe", "The name text field should contain the text 'John Doe'")
    }
    
    func testPasswordTextField() {
        let passwordTextField = app.secureTextFields["uiPasswordTextField"]
        XCTAssertTrue(passwordTextField.exists, "El elemento exite")
        
        passwordTextField.tap()
        passwordTextField.typeText("Password123")
        XCTAssertNotEqual(passwordTextField.value as! String, "Password123", "The password should be hidden")
    }
    
    func testSubmitButton() {
        let submitButton = app.buttons["uiButton"]
        XCTAssertTrue(submitButton.exists, "The submit button should exist")
    }
}
