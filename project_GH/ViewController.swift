//
//  ViewController.swift
//  project_GH
//
//  Created by 유승태 on 2021/06/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet var hereBtn: UIButton!
    @IBAction func clickBtn(_ sender: Any) {
        print("I'm clicked")
        //changeBackgroundColor()

        btn1.backgroundColor = changeBackgroundColor()
        btn2.backgroundColor = changeBackgroundColor()
        btn3.backgroundColor = changeBackgroundColor()
        btn4.backgroundColor = changeBackgroundColor()
    }

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
   
    func changeBackgroundColor() -> UIColor {
        let randomRed:CGFloat = CGFloat(drand48())
                
                let randomGreen:CGFloat = CGFloat(drand48())
                
                let randomBlue:CGFloat = CGFloat(drand48())
                
                return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    


}

