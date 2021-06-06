//
//  TrackManager.swift
//  AppleMusicStApp
//
//  Created by joonwon lee on 2020/01/12.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit
import AVFoundation

class TrackManager {
    // TODO: 프로퍼티 정의하기 - 트랙들, 앨범들, 오늘의 곡
    var tracks: [AVPlayerItem] = []
    var album: [Album] = []
    var todaysTrack: AVPlayerItem?
    
    // TODO: 생성자 정의하기
    init() {
//        let playerItem = AVPlayerItem(url: <#T##URL#>) //곡에 대한 url을 이용해서 player object를 생성!
        // 1. 트랙 로드
        let tracks = loadTracks()
        self.tracks = tracks
        self.album = loadAlbums(tracks: tracks)
        self.todaysTrack = self.tracks.randomElement() //모든 Array에서 사용할 수 있는 랜덤 함수
    }

    // TODO: 트랙 로드하기
    func loadTracks() -> [AVPlayerItem] {
        // 파일을 읽어서 AVPlayer 형태로 만들기
        let urls = Bundle.main.urls(forResourcesWithExtension: "mp3", subdirectory: nil) ?? [] //Bundle = this App, mp3 파일 찾고 없으면 깡통 (default가 optional)
        //url이 여러 개 일 때
//        var items: [AVPlayerItem] = []
//        for url in urls {
//            let item = AVPlayerItem(url: url)
//            items.append(item)
//        }
        
//        let items = urls.map { url -> AVPlayerItem in //고계함수? '-> AVPlayerItem 삭제 가능'
//            let item = AVPlayerItem(url: url) // { AVPlayerItem(url: $0 } 로 아예 변경도 된다.
//            return item
//        }
        
        //이것도 명확한 표현법인 듯
        let items = urls.map { url in
            return AVPlayerItem(url: url)
        }
        
        return items
    }
    
    // TODO: 인덱스에 맞는 트랙 로드하기
    func track(at index: Int) -> Track? {
        let playerItem = tracks[index]
        let track = playerItem.convertToTrack()
        return track
    }

    // TODO: 앨범 로딩메소드 구현
    func loadAlbums(tracks: [AVPlayerItem]) -> [Album] {
        let trackList: [Track] = tracks.compactMap { $0.convertToTrack() }
        let albumDics = Dictionary(grouping: trackList, by: { (track) in track.albumName})
        var albums: [Album] = []
        for(key, value) in albumDics {
            let title = key
            let tracks = value
            let album = Album(title: title, tracks: tracks)
            albums.append(album)
        }
        
        return []
    }

    // TODO: 오늘의 트랙 랜덤으로 선책
    func loadOtherTodaysTrack() {
        self.todaysTrack = self.tracks.randomElement() //모든 Array에서 사용할 수 있는 랜덤 함수
    }
}
