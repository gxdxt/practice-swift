//
//  HomeViewController.swift
//  AppleMusicStApp
//
//  Created by joonwon lee on 2020/01/11.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController { // 한꺼번에 선언했었는데, 지금은 extension으로 나누어서 표현
    // TODO: 트랙관리 객체 추가
    let trackManager: TrackManager = TrackManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeViewController: UICollectionViewDataSource {
    // 몇개 표시 할까?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // TODO: 트랙매니저에서 트랙갯수 가져오기
        return trackManager.tracks.count
    }
    
    // 셀 어떻게 표시 할까?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // TODO: 셀 구성하기
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  "TrackCollecionViewCell", for: indexPath) as? TrackCollecionViewCell else {
            return UICollectionViewCell()
        }
        
        //track에 있는 item을 item에 넣기
        let track = trackManager.track(at: indexPath.item)
        cell.updateUI(item: track)
        
        return cell
        
    }
    
    // 헤더뷰 어떻게 표시할까?
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            // TODO: 헤더 구성하기
            guard let item = trackManager.todaysTrack else {
                return UICollectionReusableView()
            }
            
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "TrackCollectionHeaderView", for: indexPath) as? TrackCollectionHeaderView else { 
                return UICollectionReusableView()
            }
            
            header.update(with: item)
            //closure 형태로 item -> void
            header.tapHandler = { item -> Void in
                //player 띄우기
                //playerViewController 가져오기!
                let playerStoryBoard = UIStoryboard.init(name: "Player", bundle: nil) //지금 Main 안에 있는거라 따로 Bundle 정하지 않음
                //player 안에 있는 ViewController를 찾아야해 // header는 밑에 일반 cell 부분 그대로 가져왔지만, self 추가했다 (왜?)
                guard let playerVC = playerStoryBoard.instantiateViewController(identifier: "PlayerViewController") as? PlayerViewController else { return }
                
                //2. 이제 데이터 넘기게끔 변수에 넣어야지
                //let item = self.trackManager.tracks[indexPath.item] -> 이미 여기 tapHandler가 item을 param으로 들고 들어와서 선언할 필요 없어
                //갈아끼는 변수에 넣기
                playerVC.simplePlayer.replaceCurrentItem(with: item)

                
                self.present(playerVC, animated: true, completion: nil)
                //1. 이거까지 하면 일단 뜨긴 뜸 data는 안 넘어감!
                
                
                print("item : \(item.convertToTrack()?.title)")
            }
            
            return header
        default:
            return UICollectionReusableView()
        }
    }
}

extension HomeViewController: UICollectionViewDelegate {
    // 클릭했을때 어떻게 할까?
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // TODO: 곡 클릭시 플레이어뷰 띄우기
        //playerViewController 가져오기!
        let playerStoryBoard = UIStoryboard.init(name: "Player", bundle: nil) //지금 Main 안에 있는거라 따로 Bundle 정하지 않음
        //player 안에 있는 ViewController를 찾아야해
        guard let playerVC = playerStoryBoard.instantiateViewController(identifier: "PlayerViewController") as? PlayerViewController else { return }
        
        //2. 이제 데이터 넘기게끔 변수에 넣어야지
        let item = trackManager.tracks[indexPath.item]
        //갈아끼는 변수에 넣기
        playerVC.simplePlayer.replaceCurrentItem(with: item)

        
        present(playerVC, animated: true, completion: nil)
        //1. 이거까지 하면 일단 뜨긴 뜸 data는 안 넘어감!
        
        
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    // 셀 사이즈 어떻게 할까?
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 20 - card(width) - 20 - card(width) - 20
        // TODO: 셀사이즈 구하기
        
        let itemSpacing: CGFloat = 20
        //좌우 margin
        let inset: CGFloat = 20
        let width = (collectionView.bounds.width - itemSpacing - inset * 2) / 2
        let height = width + 60
        
        return CGSize(width: width, height: height)
    }
}
