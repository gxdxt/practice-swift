//
//  PersonCell.swift
//  JeongSan
//
//  Created by 유승태 on 2021/07/12.
//

import Foundation
import UIKit

class PersonCell: UITableViewCell {
    
    @IBOutlet weak var PersonName: UILabel!
    @IBOutlet weak var PersonPrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
