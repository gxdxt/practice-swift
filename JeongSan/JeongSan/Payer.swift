//
//  Payer.swift
//  JeongSan
//
//  Created by 유승태 on 2021/07/14.
//

import Foundation
import UIKit

class Payer {
    static let shared = Payer() //singleton
    
    var name: String?
    var price: Int?
    
    func printPayer(_ name: String, _ price: Int){
        return print("name: \(name), price: \(price) ")
    }
    
    private init() { }
}
