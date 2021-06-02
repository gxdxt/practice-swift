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
    @IBOutlet weak var brandLabelCenterX: NSLayoutConstraint!
    @IBOutlet weak var designerLabelCenterX: NSLayoutConstraint!
    
    //이름이랑 현상금 정보만 있으면, 사진을 가져올 수 있다?
//    var brand: String? // optional로 선언
//    var designerName: String?
    
//    var bountyInfo: BountyInfo?
    let viewModel = DetailBountyViewModel()
    
    //view가 memory에 올라온 시점에 실행되는 함수
    //보이기 바로 직전
    override func viewDidLoad() { //Memory가 올라왔다는 것을 보여주는 함수랄까
        super.viewDidLoad()
        //보이기 바로 직전에 updateUI 함수 실행
        updateUI()
        //애니메이션 준비
        prepareAnimation()
        
    }
    
    //보여졌다!는 함수는 이거야
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //여기에 애니메이션 들아간다.
        showAnimation()
    }
    
    private func prepareAnimation() {
        //constant 값이 커지면 View가 우측으로 간다.
        brandLabelCenterX.constant = view.bounds.width
        designerLabelCenterX.constant = view.bounds.width
    }
    
    private func showAnimation() {
        brandLabelCenterX.constant = 0
        designerLabelCenterX.constant = 0
        
        //layout 자체가 animating이 되도록!
//        UIView.animate(withDuration: 0.3) {
//            //지금 constant값(layout)이 변경되었으니까 이거 다시 바꿔줘! 라는 코드
//            self.view.layoutIfNeeded()
//        }
        
        //더 디테일하게
//        UIView.animate(withDuration: 0.3, delay: 0.1,
//            options: .curveEaseIn, animations: {self.view.layoutIfNeeded()}, completion: nil)
 //더 더 디테일하게
        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 2, options: .allowUserInteraction, animations: {self.view.layoutIfNeeded()}, completion: nil)
        
        UIView.transition(with: imgView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
    }

    
    
    
    
    //updateUI 이름 정보를 받아와서 UI 변경
    func updateUI(){
        
        if let bountyInfo = viewModel.bountyInfo {
                    imgView.image = bountyInfo.image
                    brandLabel.text = bountyInfo.brand
                    designer.text = "\(bountyInfo.designerName)"
                } 
//        if let bountyInfo = self.bountyInfo {
//            imgView.image = bountyInfo.image
//            brandLabel.text = bountyInfo.brand
//            designer.text = "\(bountyInfo.designerName)"
//        } -----------> 이건 직접 접근하니까 앞으로 ViewModel로 통하게 만들자
        
//        if let brand = self.brand, let designerName = self.designerName {
//            let img = UIImage(named: "\(brand).jpeg")
//        imgView.image = img
//        brandLabel.text = brand
//        designer.text = designerName
//        }
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

class DetailBountyViewModel {
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo?) { //매번 여기를 통할 것이기 때문에
        bountyInfo = model
    }
}
