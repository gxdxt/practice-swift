//
//  DetailViewController.swift
//  BountyList
//
//  Created by yoosoony on 2021/05/28.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MVVM
    
    // Model
    // - BountyInfo라는 object
    // > BountyInfo 생성!
    
    // View
    // - image View, nameLabel, bountyLabel
    // > View들은 ViewModel를 통해서 구성되어야 한다.
    //
    
    // ViewModel
    // - ViewController가 직접적으로 access하면 안되기 때문에, 생성
    // > View Layer에서 필요한 Method 생성!
    // > Model 소유! (BountyInfo's'를 가지고 있어야 한다.)
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var designer: UILabel!

    //이름이랑 현상금 정보만 있으면, 사진을 가져올 수 있다?
//    var brand: String? // optional로 선언
//    var designerName: String?
    
    var bountyInfo: Bounty
    
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
