//
//  Modulo13ProjectImplementUITests.swift
//  Modulo13ProjectImplementUITests
//
//  Created by Daniel Mateos on 20/10/23.
//

import XCTest

final class Modulo13ProjectImplementUITests: XCTestCase {

    override func setUpWithError() throws {
        
        continueAfterFailure = false

    }

    func test_tipCalculation_whenTreeNumberargiven_andButtonPress_ShouldPass() throws {
        
        let app = XCUIApplication()
        app.launch()
        
        
        let labelTitle = app.staticTexts["TIP CALCULATOR"]
        XCTAssert(labelTitle.exists, "No existe un titulo")
        
        let textFieldCuenta = app.textFields[" Total de la cuenta? "]
        XCTAssertTrue(textFieldCuenta.exists, "Este textfield es necesario")  // Verificar que existe
//        XCTAssertTrue(textFieldUno.waitForExistence(timeout: 3000)) //Asincrono
        textFieldCuenta.tap()
        textFieldCuenta.typeText("200")
        
        
        let dPersonasTextField = app.textFields[" # de personas? "]
        XCTAssert(dPersonasTextField.exists, "No existe el textfield no. personas")
        dPersonasTextField.tap()
        dPersonasTextField.typeText("2")
        
        let dPropinaTextField = app.textFields[" % de propina?"]
        XCTAssert(dPropinaTextField.exists, "No existe el textfield % propina")
        dPropinaTextField.tap()
        dPropinaTextField.typeText("14")
        
        let buttonCaluclar = app.buttons["Calcular"]
        XCTAssert(buttonCaluclar.exists, "No existe el boton")
        buttonCaluclar.tap()
        
        
//        totalDeLaCuentaTextField.tap()
//        app.textFields[" # de personas? "].tap()
//        app.textFields[" % de propina?"].tap()
//        app/*@START_MENU_TOKEN@*/.staticTexts["Calcular"]/*[[".buttons[\"Calcular\"].staticTexts[\"Calcular\"]",".staticTexts[\"Calcular\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
