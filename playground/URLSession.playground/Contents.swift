import UIKit

// URL

let urlString = "https://ituens.apple.com/search?media=music&unitiy=song&term=theweeknd"
let url = URL(string: urlString)

//현재 urlString
url?.absoluteString

//어떤 방식으로 네트워킹 하는가
url?.scheme

url?.host

url?.path

url?.query

url?.baseURL

//base URL이 나오게
let baseURL = URL(string: "https://itunes.apple.com")
let relativeURL = URL(string: "search?media=music&unitiy=song&term=theweeknd", relativeTo: baseURL)

relativeURL?.absoluteString

relativeURL?.scheme

relativeURL?.host

relativeURL?.path

relativeURL?.query

relativeURL?.baseURL


// URLComponents >> 왜 쓴다고??

var urlComponents = URLComponents(string: "https://itunes.apple.com/search?")
let mediaQuery = URLQueryItem(name: "media", value: "music")
let entityQuery = URLQueryItem(name: "unity", value: "song")
let termQuery = URLQueryItem(name: "term", value: "신중현") //이거 한글 읽을 수 있도록 바뀌네!

urlComponents?.queryItems?.append(mediaQuery)
urlComponents?.queryItems?.append(entityQuery)
urlComponents?.queryItems?.append(termQuery)

urlComponents?.url
urlComponents?.string
urlComponents?.queryItems

// urlSession = iOS에서 네트워킹하기 위해 필요한 것
// urlSession을 만들기위해 urlSessionConfiguration을 생성
// 실제 작업하는 녀석은 urlSessionTask

let config = URLSessionConfiguration
    .default
let session = URLSession(configuration: config)

// dataTask
// uploadTask
// downloadTask

let dataTask = session.dataTask(with: <#T##URL#>, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)




