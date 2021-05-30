//
//  BountyViewController.swift
//  BountyList
//
//  Created by yoosoony on 2021/05/27.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MVVM
    
    // Model
    // - BountyInfo라는 object
    // > BountyInfo 생성!
    
    // View
    // - ListCell
    // > ListCell에 필요한 정보를 ViewModel로부터 받아야 한다.
    //
    
    // ViewModel
    // - ViewController가 직접적으로 access하면 안되기 때문에, 생성
    // > BountyViewModel 생성!
    // > View Layer에서 필요한 Method 생성!
    // > Model 소유! (BountyInfo's'를 가지고 있어야 한다.)
    
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
    
    
    //List에 뿌려줄 이름 설정
//    let brandList = ["LEMAIRE", "Celine", "Maison Margiela", "Auralee", "Alyx", "JJJJound", "BBC", "Stussy"]
//    let designerList = ["Christophe Lemaire", "Phoebe Philo", "Martin Margiela", "A Japanese", "MMW", "Justin Saunders", "Pharrell Williams", "Ralph Diaz"]
    
    //segueway 함수 실행 직전 준비하는 함수
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //detailViewController에게 Data를 준다.
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int {
                
                let bountyInfo = bountyInfoList[index]
                
//                vc?.brand = brandList[index]
//                vc?.designerName = designerList[index]
                
                vc?.brand = bountyInfo.brand
                vc?.designerName = bountyInfo.designerName
            }
            
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    //UITableViewDataSource를 사용하기 위해 필요한 코드
    //몇 개니?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //브랜드 개수만큼 출력
        //return brandList.count
        return bountyInfoList.count
    }
    
    //재활용되는 cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //guard쓰면 에러나네?
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        //View 선언?
        let bountyInfo = bountyInfoList[indexPath.row]
        
        //let img = UIImage(named: "\(brandList[indexPath.row]).jpeg")
//        cell.imgView.image = img
//        cell.brandLabel.text = brandList[indexPath.row]
//        cell.designerLabel.text = "\(designerList[indexPath.row])" //여긴 왜 불러오지??
        
        cell.imgView.image = bountyInfo.image
        cell.brandLabel.text = bountyInfo.brand
        //cell.designerLabel.text = bountyInfo.designerName 이렇게 왜 안하지?
        cell.designerLabel.text = "\(bountyInfo.designerName)"
        
        return cell
        //이거랑 밑에 if문이랑 동일한 코드
        
//
//       if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell {
//            let img = UIImage(named: "\(brandList[indexPath.row]).jpeg")
//        cell.imgView?.image = img
//        cell.brandLabel.text = brandList[indexPath.row]
//        cell.designerLabel.text = "\(designerList[indexPath.row])" //여긴 왜 불러오지??
//
//            return cell
//        } else {
//            return UITableViewCell()
//        }
        //identifier를 cell 로 지었으니, 해당 'table view cell'의 prop.으로 가서 cell로 변경해야 한다.
        //indexPath는 cell의 위치를 의미
        //현재 UITableCell인데, 우리는 UIListCell을 쓰고싶다. -> Casting

    }
    
    //이걸 다 해도, 코드랑 뷰랑 연결을 안해놓으면 안보인다.
    //해당 table view의 delegate가 해당 컨트롤러다 라고 세팅해야해
    
    //클릭됐을 때 어떻게 할꺼야? -> UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("I'm just clicked --> \(indexPath.row)")
        
        //Segueway 실행
        performSegue(withIdentifier: "showDetail", sender: indexPath.row) //몇 번째 cell이다!
        
        //click 되었을 때, 색 변하는 것은 selection!
        
        //몇 번째 cell이 클릭되었는지 알 수 있는 곳 -> indexPath를 가지고 있어서
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    //MVVM 시작
    struct BountyInfo {
        let brand: String
        let designerName: String
        
        var image: UIImage? {
            return UIImage(named: "\(brand).jpeg")
        }
        
        init(brand: String, designerName: String) {
            self.brand = brand
            self.designerName = designerName
        }

}
}

class ListCell: UITableViewCell {
    //Cell 안에 들어갈 Element들
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var designerLabel: UILabel!
    
    // identity inspector에서 class 이름으로 해당 이름 변경해줘야해
}



