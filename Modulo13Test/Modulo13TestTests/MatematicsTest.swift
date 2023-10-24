//
//  MatematicsTest.swift
//  Modulo13TestTests
//
//  Created by Daniel Mateos on 17/10/23.
//

//    TDD - Metodologia que usaremos
//    1 - Write a test to fail
//    2 - Make to pass
//    3 - Refactor - Make it better
    
//    Comando para correr pruebas CMD + U
    
//    To do : 3 Test Cases for one function
//    Suma -> Primer test
//    SUT -> System Under Test
//    OUT -> Object Under Test

import XCTest
@testable import Modulo13Test


// Una clase por cada funcionalidad de la app
final class MatematicsTest: XCTestCase {

////    Primer test Matematics

//    MARK: PASO 1 hacemos que falle
    func testSumOfTwoNumbers_WhenTwoNumbersAreGiven_ResultShouldBeFail () {
        
        //        Arrange -> Given, declarar los valores que necesitamos
        let num1 = 500.0
        let num2 = 100.0
        let matematicsOperation = MatematicsOperation()
        
        //        Act -> When, meter informacion a la funcion que se quiere probar
        let result = matematicsOperation.suma(num1: num1, num2: num2)
        
        //        Assert -> Then
        XCTAssertEqual(result, 500)
        
    }
    
//    MARK: PASO 2 Hacemos que pase
    
    //    Primer test Matematics (Suma)
        func testSumOfTwoNumbers_WhenTwoNumbersAreGiven_ResultShouldBePass () {
            
    //        Arrange -> Given, declarar los valores que necesitamos
            let num1 = 500.0
            let num2 = 100.0
            let matematicsOperation = MatematicsOperation()
            
    //        Act -> When, meter informacion a la funcion que se quiere probar
            let result = matematicsOperation.suma(num1: num1, num2: num2)
            
    //        Assert -> Then
            XCTAssertEqual(result, 600)
            
        }
    
    //    MARK: PASO 1 hacemos que falle
    func testRestOfTwoNumbers_WhenTwoNumbersAreGiven_ResultShouldBeFail () {
        
        //        Arrange -> Given, declarar los valores que necesitamos
        let num1 = 400.0
        let num2 = 200.0
        let matematicsOperation = MatematicsOperation()
        
        //        Act -> When, meter informacion a la funcion que se quiere probar
        let result = matematicsOperation.resta(num1: num1, num2: num2)
        
        //        Assert -> Then
        XCTAssertEqual(result, 500)
        
    }
    
    //    MARK: PASO 2 hacemos que pase
    func testRestOfTwoNumbers_WhenTwoNumbersAreGiven_ResultShouldBePass () {
        
        //        Arrange -> Given, declarar los valores que necesitamos
        let num1 = 400.0
        let num2 = 200.0
        let matematicsOperation = MatematicsOperation()
        
        //        Act -> When, meter informacion a la funcion que se quiere probar
        let result = matematicsOperation.resta(num1: num1, num2: num2)
        
        //        Assert -> Then
        XCTAssertEqual(result, 200)
        
    }
    
    //    MARK: PASO 1 hacemos que falle
    func testMultiOfTwoNumbers_WhenTwoNumbersAreGiven_ResultShouldBeFail () {
        
        //        Arrange -> Given, declarar los valores que necesitamos
        let num1 = 4.0
        let num2 = 2.0
        let matematicsOperation = MatematicsOperation()
        
        //        Act -> When, meter informacion a la funcion que se quiere probar
        let result = matematicsOperation.multi(num1: num1, num2: num2)
        
        //        Assert -> Then
        XCTAssertEqual(result, 6)
        
    }
    
    //    MARK: PASO 2 hacemos que pase
    func testMultiOfTwoNumbers_WhenTwoNumbersAreGiven_ResultShouldBePass () {
        
        //        Arrange -> Given, declarar los valores que necesitamos
        let num1 = 4.0
        let num2 = 2.0
        let matematicsOperation = MatematicsOperation()
        
        //        Act -> When, meter informacion a la funcion que se quiere probar
        let result = matematicsOperation.multi(num1: num1, num2: num2)
        
        //        Assert -> Then
        XCTAssertEqual(result, 8)
        
    }
    
}
