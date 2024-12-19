//
//  DataFetcherExampleTests.swift
//  async_Cases
//
//  Created by David Sanchez on 19/10/24.
//
import XCTest
@testable import async_Cases

final class DataFetcherExampleTests: XCTestCase {
    
    func testFetchData1()
    {
        let expectation = self.expectation(description: "Data fetch should succeed")
        let dataFetcher = DataFetcherExample()
        
    //Llamar al metodo asincrono
        dataFetcher.fetchData { data, error in
            XCTAssertNotNil(data, "Los datos no deberian ser nulos")
            XCTAssertEqual(data, "Fetched Data", "Los datos devueltos no son los esperados")
            XCTAssertNil(error, "No deberian haber errores")
            
            expectation.fulfill()
            }
        wait(for: [expectation], timeout: 5.0)
    }
    func testFetchData2() async throws{
        let dataFetcher = DataFetcherExample()
        
        let data = try await dataFetcher.fetchData()
        
        XCTAssertEqual(data, "Fetched Data", "Los datos devueltos no son los esperados")
    }
    
}

