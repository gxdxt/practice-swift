//
//  TrackCollectionViewCell.swift
//  AppleMusicStApp
//
//  Created by joonwon lee on 2020/01/12.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit

class TrackCollecionViewCell: UICollectionViewCell {
    //Reusable View의 identifier는 무슨 기준으로 똑같은 이름을 설정한걸까?
    
    //Procotol(DataSource, Delegate) 연결하는 법, 의미 : 해당 뷰에서 컨트롤러로 option + Drag / 해당 기능들을 이 컨트롤러에서 담당해 줄 것이다.
    
    @IBOutlet weak var trackThumbnail: UIImageView!
    @IBOutlet weak var trackTitle: UILabel!
    @IBOutlet weak var trackArtist: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        trackThumbnail.layer.cornerRadius = 4
        trackArtist.textColor = UIColor.systemGray2
    }
    
    func updateUI(item: Track?) {
        // TODO: 곡정보 표시하기
        
    }
}
