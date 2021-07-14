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
    @IBOutlet weak var PersonList: UITableView!
    @IBOutlet weak var PersonCell: PersonCell!
    
    
    let payer = Payer.shared//singleton
    var Payers: [Payer]?
    var receivedTotal: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultTotal.text = self.receivedTotal

    }
    let total: Int = Int(receivedTotal)!
    
    @IBAction func moveResult(_ sender: Any) {
        //1. textField에 nil 값 validation
        guard PersonCell.InputPersonName.text != nil else {
            return 
        }
        if let textName = PersonCell.InputPersonName.text, textName.isEmpty {
            doJeongSan.isEnabled = true
        } else {
            
        }
        
        //2. 각각의 PersonCell에 있는 InputPersonName.text, InputPersonPrice.text를 Person: Payer로 구성
        

        
        
        //3. 해당 Person들을 Payers: [Payer]에 Append

        
        //4. Payers를 다음 ResultController로 넘긴다.
        
        //TextField에 있는 값들을 각각의 Payer의 넣어 순서에 맞게 배열 Payers에 넣는다.
        guard let vc =  storyboard?.instantiateViewController(identifier: "ResultController") as? ResultController else
              { return }
        //vc.receivedTotal = self.PersonList.in
        
        //print("\(String(describing: vc.receivedTotal)) ")
        self.present(vc, animated: true, completion: nil)
        
        
        
        let total: Int = Int(receivedTotal)!
        for i in 0...total{
        let indexPath = IndexPath(row: i, section: 0)
        if let OneCell = PersonList.cellForRow(at: indexPath) as? PersonCell {
            let OneCellName = OneCell.InputPersonName.text
            let OneCellPrice = OneCell.InputPersonPrice.text
            payer.name = OneCellName
            payer.price = Int(OneCellPrice!)
            Payers?.append(payer)
            payer.name = ""
            payer.price = 0
        }
        }
//        func putInside(_ tableView: UITableView, cellForRowAt indexPath: IndexPath){
//            for i in 0...total {
//                Person?.name = String(PersonList.cellForRow(at: [0, i]).InputPersonName.text)
//                Person?.price = Int(PersonList.cellForRow(at: [0, i]).InputPersonPrice.text)
//                Payers?.append(Person!)
//            }
//        }
        guard let vc =  storyboard?.instantiateViewController(identifier: "ResultController") as? ResultController else
              { return }
           // vc.receivedTotal = self.TotalNum.text!
        
        //print("\(String(describing: vc.receivedTotal)) ")
        self.present(vc, animated: true, completion: nil)
        
    }
    
   
    

}

extension SecondController: UITableViewDelegate, UITableViewDataSource {
    //TextField값을 위해 protocol 추가

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(receivedTotal)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)

        return cell
    }
    
    
        
    }

