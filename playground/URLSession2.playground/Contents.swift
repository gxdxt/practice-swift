import UIKit


// urlSession = iOS에서 네트워킹하기 위해 필요한 것
// urlSession을 만들기위해 urlSessionConfiguration을 생성
// 실제 작업하는 녀석은 urlSessionTask

let config = URLSessionConfiguration
    .default
let session = URLSession(configuration: config)

// dataTask
// uploadTask
// downloadTask

//URL
var urlComponents = URLComponents(string: "https://itunes.apple.com/search?")! //느낌표를 붙여야 optional해제
let mediaQuery = URLQueryItem(name: "media", value: "music")
let entityQuery = URLQueryItem(name: "unity", value: "song")
let termQuery = URLQueryItem(name: "term", value: "신중현") //이거 한글 읽을 수 있도록 바뀌네!

urlComponents.queryItems?.append(mediaQuery)
urlComponents.queryItems?.append(entityQuery)
urlComponents.queryItems?.append(termQuery)
//URLComponents


let requestURL = urlComponents.url! //느낌표 하는 이유 =  optional 벗겨내기


//1. Response와 Track struct
struct Response: Codable { //url 답변 오는 것, network 답변 // protocol 선언
    let resultCount: Int
    let tracks: [Track]
    
    enum CodingKeys: String, CodingKey {
        case resultCount
        case tracks = "results"
    }
}

struct Track: Codable {
    let title: String
    let artistName: String
    let thumbnailPath: String
    
    //key값과 track의 prop.를 일치 시켜주기 >> enum 으로
    //trackName
    //artistName
    //artworkUrl30
    
    enum CodingKeys: String, CodingKey {
        case title = "trackName"
        case artistName
        case thumbnailPath = "artworkUrl30"
    }
}



let dataTask = session.dataTask(with: requestURL) { (data, response, error) in
    //error 먼저 떨어지는 지 확인
    guard error == nil else { return }
    
    guard let statusCode = (response as? HTTPURLResponse)?.statusCode else { return }//down
    
    let successRange = 200..<300
    
    guard successRange.contains(statusCode) else {
        //handle response error
        return
    }
    
    guard let resultData = data else {
        return
    }
    let resultString = String(data: resultData, encoding: .utf8)
    
    //목표 : track list -> object 가져오기
    
    
    //하고싶은 목록
    // - Data -> Track 목록으로 가져올 것 [Track]
    // - Track object 생성
    // - Data에서 structure로 parse >> Codable 이용
    // - Json 형식의 파일을 object로 만들 때 Codable 이용
    // - Response, [Track] 총 2개 생성 (response가 track을 감싸고 있다.)
    
    //해야할 일
    // - Response, [Track] struct
    // - struct의 prop. 이름과 실제 Data의 key 이름 맞추기 // codable decoding을 위해
    // - parsing (decoding)
    // - 그럼 이제 track list 가져온다.
    
    //
    
    
    
    
    //2. parsing 및 track list 출력
    do {
        let decoder = JSONDecoder() //decoder 생성
        let response = try decoder.decode(Response.self, from: resultData) //해당 작업이 항상 성공한다는 보장이 없을 때 'try'
        let tracks = response.tracks
        
        print("---> tracks: \(tracks.count)")
    } catch let error{
        print("----> error : \(error.localizedDescription)")
    }
    
    
    print("----> result : \(resultString)")
    
    
}

dataTask.resume()

