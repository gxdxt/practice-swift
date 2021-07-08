//
//  JSTableViewController.swift
//  JeongSan
//
//  Created by 유승태 on 2021/07/08.
//

import Foundation
import UIKit


class JSTableViewController: UIViewController {
    
    var countTotal: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension JSTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countTotal
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let personCell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        
        return personCell
    }
    
    
}

struct PersonCell {
    var name: String
    var price: Int
}

