//
//  BountyViewController.swift
//  BountyList
//
//  Created by yoosoony on 2021/05/27.
//

import UIKit

class BountyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout { //FlowLayout은 아마 애플이 기본 제공하는 레이아웃, 그냥 Layout은 사용자 지정이라고 했던 것 같아.
     
    let viewModel = BountyViewModel()
    
    //segueway 함수 실행 직전 준비하는 함수
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //detailViewController에게 Data를 준다.
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int {
                
                let bountyInfo = viewModel.bountyInfo(at: index)

                vc?.viewModel.bountyInfo = bountyInfo
            }
            
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    //UICollectionViewDataSource
    // 몇 개를 보여줄까?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numOfBountyInfoList
    }
    
    // 셀은 어떻게 보여줄까?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCell", for: indexPath) as? GridCell else {
            
            return UICollectionViewCell()
        }//"GridCell"은 지정해준 이름, indexPath는 cell의 위치 정보
        
        let bountyInfo = viewModel.bountyInfo(at: indexPath.item) //collection이라 row가 아닌 item
        cell.update(info: bountyInfo)
        return cell
    }
    
    
    //UICollectionViewDelegate
    // 셀이 클릭되었을 때, 어떻게 할까요?
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("-->\(indexPath.item)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.item)
    }
    
}

class ListCell: UITableViewCell {
    //Cell 안에 들어갈 Element들
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var designerLabel: UILabel!
    
    // identity inspector에서 class 이름으로 해당 이름 변경해줘야해
    
    
    //Controller가 가지고 있을 필요가 없어서 해당 class로 끌고 내려왔다.
    func update(info: BountyInfo) {
        imgView.image = info.image
        brandLabel.text = info.brand
        //cell.designerLabel.text = bountyInfo.designerName 이렇게 왜 안하지?
        designerLabel.text = "\(info.designerName)"
        
        //이제 위에 부분에 이 함수 불러야해.
    }
}
    


// ViewModel이 model을 가지고 있어야 한다.
class BountyViewModel {
    //밑에 MVVM 적용을 위해 대체할 let 선언
    let bountyInfoList: [BountyInfo] = [
        BountyInfo(brand: "LEMAIRE", designerName: "Christophe Lemaire"),
        BountyInfo(brand: "Celine", designerName: "Phoebe Philo"),
        BountyInfo(brand: "Maison Margiela", designerName: "Martin Margiela"),
        BountyInfo(brand: "Auralee", designerName: "A Japanese"),
        BountyInfo(brand: "Alyx", designerName: "MMW"),
        BountyInfo(brand: "JJJJound", designerName: "Justin Saunders"),
        BountyInfo(brand: "BBC", designerName: "Pharrell Williams"),
        BountyInfo(brand: "Stussy", designerName: "Ralph Diaz")
    ]
    
    var sortedList: [BountyInfo] {
        let sortedList = bountyInfoList.sorted { prev, next in
            return prev.brand < next.brand
        }
        return sortedList
    }
    
    //count를 담을 변수 선언
    var numOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    //index 및 indexPath.row 접근할 함수 선언
    func bountyInfo(at index: Int) -> BountyInfo {
        return sortedList[index]
    }
}

class GridCell: UICollectionViewCell {
    //Cell 안에 들어갈 Element들
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var designerLabel: UILabel!
    // ! 는 꼭 있어야 한다는 표현?
    // identity inspector에서 class 이름으로 해당 이름 변경해줘야해 >> 그래야 '연결'된다.
    
    
    //Controller가 가지고 있을 필요가 없어서 해당 class로 끌고 내려왔다.
    func update(info: BountyInfo) {
        imgView.image = info.image
        brandLabel.text = info.brand
        //cell.designerLabel.text = bountyInfo.designerName 이렇게 왜 안하지?
        designerLabel.text = "\(info.designerName)"
        
        //이제 위에 부분에 이 함수 불러야해.
    }
}


