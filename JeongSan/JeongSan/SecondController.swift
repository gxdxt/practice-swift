//
//  SecondController.swift
//  JeongSan
//
//  Created by 유승태 on 2021/07/09.
//
import UIKit
import Foundation

class SecondController: UIViewController {
    
    @IBOutlet weak var personTableView: UITableView!
    @IBOutlet weak var printTotal: UILabel!
    var receivedTotal: String = ""
    
    override func viewDidLoad(){
        super.viewDidLoad()
        print("total: \(receivedTotal)")
        self.printTotal.text = receivedTotal
        
    }
    
    
}

extension SecondController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("\(receivedTotal)")
        return Int(receivedTotal) ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "eachCell", for: indexPath) as? eachCell else { return UITableViewCell() }

           return cell

       }
    
    
}
