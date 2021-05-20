import UIKit

//Dictionary

//순서는 없고
//key : value
//key는 중복불가

// 1. 의미단위로 값을 찾을 때

var scoreDic: [String: Int] = ["LEMAIRE": 100, "Margiela": 95, "Auralee": 96]
var scoreDic2: Dictionary<String, Int>

if let auraleeScore = scoreDic["Auralee"] {
    print(auraleeScore)
} else {
    print("there is no score for Auralee")
}
scoreDic["Margiela"]

// isEmpty랑 count 둘 다 있다.
// 깡통만들기
scoreDic.isEmpty
//scoreDic = [:]
scoreDic.isEmpty

// update
scoreDic["Auralee"] = 80
scoreDic

// insert
scoreDic["Celine"] = 98
scoreDic

// delete
scoreDic["Celine"] = nil
scoreDic

// for loop
for (name, score) in scoreDic {
    print("\(name) : \(score)")
}

//  print only 'keys'
for key in scoreDic.keys {
    print(key)
}

// 1. 이름, 직업, 도시에 대해 본인만의 Dictionary 생성
var myDic : [String: String] = ["NAME": "yoosoony", "JOB": "Developer", "City": "Seoul"]
// 2. 도시를 부산으로 업데이트
myDic["City"] = "Busan"
myDic
// 3. Dictionary를 받아 이름과 도시를 출력
for (key, value) in myDic {
    print("\(key) : \(value)")
}
func printNameAndCity(dic: [String: String]){
    if let name = dic["NAME"], let city = dic["City"] {
        print("name: \(name)")
        print("city: \(city)")
    } else {
        print("Couldn't find any data")
    }
}
printNameAndCity(dic: myDic)
