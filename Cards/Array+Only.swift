//
//  Array+Only.swift
//  Cards
//
//  Created by DARRELL A PAYNE on 8/19/20.
//

import Foundation

extension Array {
    
    // If array has only one element, return that element, otherwise return nil
    var only: Element? {
        count == 1 ? first : nil
    }
}
