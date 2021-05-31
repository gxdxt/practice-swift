//
//  BountyInfo.swift
//  BountyList
//
//  Created by 유승태 on 2021/05/31.
//

import UIKit

//MVVM 시작
struct BountyInfo {
    let brand: String
    let designerName: String
    
    var image: UIImage? {
        return UIImage(named: "\(brand).jpeg")
    }
    
    init(brand: String, designerName: String) {
        self.brand = brand
        self.designerName = designerName
    }

}
