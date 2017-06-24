//
//  RomanToArabicTests.swift
//  RomanToArabicTests
//
//  Created by User on 6/23/17.
//  Copyright © 2017 riis. All rights reserved.
//

import XCTest
@testable import RomanToArabic

class RomanToArabicTests: XCTestCase {
    
    var testClass : RomanNumeral!
    
    override func setUp() {
        super.setUp()
        testClass = RomanNumeral()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testRoman() {
        XCTAssertEqual(testClass?.toRoman(arabic: 1), "I","Unable to convert")
    }
    
    func testArabic() {
        XCTAssertEqual(testClass?.toArabic(roman: "MLXVI"), 1066, "Unable to convert")
    }
    /*
    XCTAssertEqual(testClass?.convertArabicToRoman(1), "I","Unable to convert")
    XCTAssertEqual(testClass?.convertArabicToRoman(3), "III", "Unable to convert")
    XCTAssertEqual(testClass?.convertArabicToRoman(9), "IX", "Unable to convert")
    XCTAssertEqual(testClass?.convertArabicToRoman(1066), "MLXVI", "Unable to convert")
    XCTAssertEqual(testClass?.convertArabicToRoman(1989), "MCMLXXXIX", "Unable to convert")
    //Test case to validate negative number
    XCTAssertEqual(testClass?.convertArabicToRoman(-1), "-1", "Negative number converted")
    */
}
