//
//  ViewController.swift
//  MyAlbum
//
//  Created by 유승태 on 2021/05/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func hello(_ sender: Any) {
        let alert = UIAlertController(title: "hello", message: "my first app!", preferredStyle: .alert)
        //alert라는 모양을 만들고
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil) //nil은 아무것도 핸들해주지 않는다.는 의미
        //action이라는 모양과 기능을 추가하고
        
        alert.addAction(action)
        //alert모양 안에 action이라는 action을 추가하고
        
        present(alert, animated: true, completion: nil)
        //화면에 출력한다.
    }
    
}

