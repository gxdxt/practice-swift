//
//  ViewController.swift
//  MyAlbum
//
//  Created by 유승태 on 2021/05/11.
//

import UIKit

class ViewController: UIViewController {
    var currentValue = 0
    
    //변화된 가격으로 화면에 노출시키려면, outlet을 연결해야 한다.
    //UIlabel과 ViewController와 연동을 해야한다.
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        priceLabel.text = "₩ \(currentValue)"
    }

    @IBAction func hello(_ sender: Any) {
        let message = "가격은 \( currentValue) 입니다." //String에 var 담기
        //String Interplation??
        
        let alert = UIAlertController(title: "hello", message: message, preferredStyle: .alert)
        //alert라는 모양을 만들고
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil) //nil은 아무것도 핸들해주지 않는다.는 의미
        //action이라는 모양과 기능을 추가하고
        
        alert.addAction(action)
        //alert모양 안에 action이라는 action을 추가하고
        
        present(alert, animated: true, completion: nil)
        //화면에 출력한다.
        
        //계속해서 변하는 값 설정
       let randomPrice =  arc4random_uniform(10000)+1
        //0~10000까지의 값들 중 랜덤하게 설정, 0인 값이 나오면 재미 없으니 +1 추가
        //randomPrice의 값을 currentValue에 추가
        currentValue = Int(randomPrice)
        //***여기서 질문은, 언제 randomPrice값이 변화하는가? -- 이 함수가 속해있는 함수가 호출될 때마다!!! (여기선 Alert 창이 뜰 때마다)
        
        //여기도 입력해줘야하는 듯? (저기 위에는 최초 노출)
        priceLabel.text = "₩ \(currentValue)"
        
        
        
    }
    
    
    
    
}

