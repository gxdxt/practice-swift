//
//  TestViewTableCell.swift
//  TableViewTest
//
//  Created by 유승태 on 2021/07/12.
//

import Foundation
import UIKit

class TestViewTableCell: UITableViewCell {
    
    
    @IBOutlet weak var TestLabel: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
