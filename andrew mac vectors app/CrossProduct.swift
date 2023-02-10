//
//  CrossProduct.swift
//  andrew mac vectors app
//
//  Created by Preston Higginbotham on 2/4/23.
//

import Foundation

class CrossProduct
{
    var ui: Double = 0
    var uj: Double = 0
    var uk: Double = 0
    var vi: Double = 0
    var vj: Double = 0
    var vk: Double = 0
    // u x v = i (uj * vk - uk * vj) - j (ui * vk - uk * vi) + k (ui * vj - uj * vi)
    func calculate () -> Double {
        return ( ((uj * vk) - (uk * vj)) - ((ui * vk) - (uk * vi)) + ((ui * vj) - (uj * vi)))
    }
    
}
