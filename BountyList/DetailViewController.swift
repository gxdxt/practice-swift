//
//  DetailViewController.swift
//  BountyList
//
//  Created by 유승태 on 2021/05/28.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //버튼 클릭 시, 닫히는 액션
    @IBAction func close(_ sender: Any) {
        //사라진다 명령어
        dismiss(animated: true, completion: nil)
    }
    
    //두 개의 ViewController를 연결시켜주는 Segueway
    //Bounty View Controller 좌측 control > Present Modally
    // 새로 생긴 line에 identifier 정하기
    // 이제 기본 ViewController에서 해당 Segueway 실행 함수 작성 ---
    
}
