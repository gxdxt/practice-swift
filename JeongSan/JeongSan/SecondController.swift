//
//  SecondController.swift
//  JeongSan
//
//  Created by 유승태 on 2021/07/12.
//

import Foundation
import UIKit

class SecondController: UIViewController {

    @IBOutlet weak var resultTotal: UILabel!
    
    var receivedTotal: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultTotal.text = self.receivedTotal
        
    }

}

extension SecondController: UITableViewDelegate, UITableViewDataSource {
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath) as? PersonCell else { return UITableViewCell() }
        
        return cell
    }
    
        
    }

