//
//  ViewController.swift
//  MyAlbumCopy
//
//  Created by yoosoony on 2021/05/17.
//

import UIKit

class ViewController: UIViewController {
    var currentPrice = 0
    
    @IBOutlet weak var priceValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        change()
    }

    @IBAction func randomBtn(_ sender: Any) {
        let letters = "the price is \(currentPrice)."
        
        let alert = UIAlertController(title: "hello", message: letters, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in self.change() })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    func change(){
        let randomNick = arc4random_uniform(10000)+1
        currentPrice = Int(randomNick)
        
        priceValue.text = "it's \(currentPrice)"
    }
}

