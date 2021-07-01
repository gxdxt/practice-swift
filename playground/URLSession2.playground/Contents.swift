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
    
    print("----> result : \(resultData)")
    
    
}
