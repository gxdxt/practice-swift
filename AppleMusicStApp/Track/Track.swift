//
//  Track.swift
//  AppleMusicStApp
//
//  Created by joonwon lee on 2020/01/12.
//  Copyright © 2020 com.joonwon. All rights reserved.
//
import UIKit

//이곳에 사용할 물건들을 struct로 선언한다. 다만 실제 음원은 여기 저장되지 않는다. 음원은 단순히 url을 통해 가져오는 것!
struct Track {
    let title: String
    let artist: String
    let albumName: String
    let artwork: UIImage
    
    // *init이 가지는 의미? -- 생성자 method
    init(title: String, artist: String, albumName: String, artwork: UIImage) {
        self.title = title
        self.artist = artist
        self.albumName = albumName
        self.artwork = artwork
    }
}

// 앨범 안에는 여러 개의 트랙이 들어가니, tracks 라는 track을 담는 Array를 선언했다.
struct Album {
    let title: String
    let tracks: [Track]
    
    var thumbnail: UIImage? {
        return tracks.first?.artwork
    }
    
    var artist: String? {
        return tracks.first?.artist
    }
    
    init(title: String, tracks: [Track]) {
        self.title = title
        self.tracks = tracks
    }
}
