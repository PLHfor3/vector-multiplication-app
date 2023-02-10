//
//  DotProduct.swift
//  andrew mac vectors app
//
//  Created by Preston Higginbotham on 2/4/23.
//

import Foundation

class DotProduct
{
    var ui: Double = 0
    var uj: Double = 0
    var vi: Double = 0
    var vj: Double = 0
    
    func calculate () -> Double {
        return (ui * vi) + (uj * vj)
    }
}
