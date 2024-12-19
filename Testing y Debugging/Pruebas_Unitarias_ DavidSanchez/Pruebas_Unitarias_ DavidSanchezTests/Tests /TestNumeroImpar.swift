//
//  TestNumeroImpar.swift
//  Pruebas_Unitarias_ DavidSanchez
//
//  Created by David Sanchez on 14/10/24.
//

import XCTest
import Foundation

final class TestNumeroImpar: XCTestCase {
    func testNumeroImpar() {
        let numeroImpar = NumeroImpar()
        XCTAssertTrue(numeroImpar.calcularNumeroImpar(10))
    }
}
