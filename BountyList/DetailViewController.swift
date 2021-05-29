//
//  DetailViewController.swift
//  BountyList
//
//  Created by 유승태 on 2021/05/28.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var designer: UILabel!

    //이름이랑 현상금 정보만 있으면, 사진을 가져올 수 있다?
    var brand: String? // optional로 선언
    var designerName: String?
    
    //view가 memory에 올라온 시점에 실행되는 함수
    //보이기 바로 직전
    override func viewDidLoad() {
        super.viewDidLoad()
        //보이기 바로 직전에 updateUI 함수 실행
        updateUI()
        
    }
    
    //updateUI 이름 정보를 받아와서 UI 변경
    func updateUI(){
        
        if let brand = self.brand, let designerName = self.designerName {
            let img = UIImage(named: "\(brand).jpeg")
        imgView.image = img
        brandLabel.text = brand
        designer.text = designerName
        }
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
