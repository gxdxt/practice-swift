//
//  ViewController.swift
//  project_GR
//
//  Created by 유승태 on 2021/06/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var CollectionView: UICollectionView!
    @IBAction func touchBtn(_ sender: Any) {
        
        self.CollectionView.backgroundColor = changeBackgroundColor()
        
    }
    
    func changeBackgroundColor() -> UIColor {
        let randomRed:CGFloat = CGFloat(drand48())
                
                let randomGreen:CGFloat = CGFloat(drand48())
                
                let randomBlue:CGFloat = CGFloat(drand48())
                
                return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
}

