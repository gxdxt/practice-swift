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
    @IBOutlet weak var doJeongSan: UIButton!
    
    var receivedTotal: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultTotal.text = self.receivedTotal

        
    }
    
    @IBAction func moveResult(_ sender: Any) {
        
        var Payers: [Payer]?
        var Person: Payer?
        let total: Int = Int(receivedTotal)!
        
        for Index in 0...total {
            //let cell =
            //Person.name = cell[Index].InputPersonName.text
            //Person.price = cell[Index].InputPersonName.text
            Payers?.append(<#T##newElement: Payer##Payer#>)
            
        }
        
        guard let vc =  storyboard?.instantiateViewController(identifier: "ResultController") as? ResultController else
              { return }
           // vc.receivedTotal = self.TotalNum.text!
        
        //print("\(String(describing: vc.receivedTotal)) ")
        self.present(vc, animated: true, completion: nil)
        
    }
    

}

extension SecondController: UITableViewDelegate, UITableViewDataSource {
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(receivedTotal)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath) as? PersonCell else { return UITableViewCell() }
        
        return cell
    }
    
    
        
    }

