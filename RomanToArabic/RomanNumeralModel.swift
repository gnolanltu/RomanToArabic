//
//  Roman.swift
//  RomanToArabic
//
//  Created by User on 6/23/17.
//  Copyright © 2017 riis. All rights reserved.
//

import Foundation

class RomanNumeral {
    
    func toRoman(arabic: Int) -> String? {
        var number = arabic
        
        guard number > 0 else {
            return nil
        }
        
        let values = [("M", 1000), ("CM", 900), ("D", 500), ("CD", 400), ("C",100), ("XC", 90), ("L",50), ("XL",40), ("X",10), ("IX", 9), ("V",5),("IV",4), ("I",1)]
        
        var result = ""
        
        for (romanChar, arabicValue) in values {
            let count = number / arabicValue
            
            if count == 0 { continue }
            
            for _ in 1...count
            {
                result += romanChar
                number -= arabicValue
            }
        }
        
        return result
    }
    
    func toArabic(roman: String) -> Int? {
        var string = roman
        
        let values = [("M", 1000), ("CM", 900), ("D", 500), ("CD", 400), ("C",100), ("XC", 90), ("L",50), ("XL",40), ("X",10), ("IX", 9), ("V",5),("IV",4), ("I",1)]
        
        var result = 0
        
        for (romanChars, arabicValue) in values {
            let range = romanChars.startIndex ..< romanChars.endIndex
            
            while string.hasPrefix(romanChars) {
                result = result + arabicValue
                
                #if swift(>=3.0)
                    string.removeSubrange(range)
                #else
                    string.removeRange(range)
                #endif
            }
        }
        
        if (string.isEmpty) {
            return result
        }
        
        return nil
    }
}

