//
//  BountyViewController.swift
//  BountyList
//
//  Created by yoosoony on 2021/05/27.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //List에 뿌려줄 이름 설정
    let brandList = ["LEMAIRE", "Celine", "Maison Margiela", "Auralee", "Alyx", "JJJJound", "BBC", "Stussy"]
    let designerList = ["Christophe Lemaire", "Phoebe Philo", "Martin Margiela", "A Japanese", "MMW", "Justin Saunders", "Pharrell Williams", "Ralph Diaz"]
    
    //segueway 함수 실행 직전 준비하는 함수
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //detailViewController에게 Data를 준다.
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int {
                vc?.brand = brandList[index]
                vc?.designerName = designerList[index]
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
        return brandList.count
    }
    
    //재활용되는 cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //guard쓰면 에러나네?
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        let img = UIImage(named: "\(brandList[indexPath.row]).jpeg")
        cell.imgView.image = img
        cell.brandLabel.text = brandList[indexPath.row]
        cell.designerLabel.text = "\(designerList[indexPath.row])" //여긴 왜 불러오지??
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

}

class ListCell: UITableViewCell {
    //Cell 안에 들어갈 Element들
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var designerLabel: UILabel!
    
    // identity inspector에서 class 이름으로 해당 이름 변경해줘야해
}
