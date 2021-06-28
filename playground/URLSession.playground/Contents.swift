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

var urlComponets = URLComponents(string: "https://itunes.apple.com/search?")
let mediaQuery = URLQueryItem(name: "media", value: "music")
let entityQuery = URLQueryItem(name: "unity", value: "song")
let termQuery = URLQueryItem(name: "term", value: "theweeknd")

urlComponets?.queryItems?.append(mediaQuery)
urlComponets?.queryItems?.append(entityQuery)
urlComponets?.queryItems?.append(termQuery)


