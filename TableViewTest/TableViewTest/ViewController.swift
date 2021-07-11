//
//  ViewController.swift
//  TableViewTest
//
//  Created by 유승태 on 2021/07/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TestViewTableCell", for: indexPath) as? TestViewTableCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
    
    
}

