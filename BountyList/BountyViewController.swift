//
//  BountyViewController.swift
//  BountyList
//
//  Created by yoosoony on 2021/05/27.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    //UITableViewDataSource를 사용하기 위해 필요한 코드
    //몇 개니?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    //재활용되는 cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //identifier를 cell 로 지었으니, 해당 'table view cell'의 prop.으로 가서 cell로 변경해야 한다.
        //indexPath는 cell의 위치를 의미
        
        return cell
    }
    
    //이걸 다 해도, 코드랑 뷰랑 연결을 안해놓으면 안보인다.
    //해당 table view의 delegate가 해당 컨트롤러다 라고 세팅해야해
    
    //클릭됐을 때 어떻게 할꺼야? -> UITableViewDelegate
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("I'm just clicked --> \(indexPath.row)")
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
