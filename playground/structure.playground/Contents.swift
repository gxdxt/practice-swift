import UIKit

// Structure vs. Class

// Values Type / Reference Type
// Copy / Share
// Stack / Heap

// structure는 값은 복사하고, class는 값을 공유한다.

// Structure
// 관계있는 데이터, 관계있는 것들끼리 모여서 표현하는 것은. Structure가 좋다.

//현재 편의점 위치
let store1 = (x: 3, y: 5, name: "gs")
let store2 = (x: 4, y: 6, name: "seven")
let store3 = (x: 1, y: 7, name: "cu")

//거리를 구하는 함수
func distance(current: (x: Int, y: Int), target: (x: Int, y: Int)) -> Double {
    //피타고라스 정리
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

//가장 가까운 스토어를 구하여 프린트하는 함수
func printClosestStore(currentLocation: (x: Int, y: Int), stores: [(x: Int, y: Int, name: String)]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity //요건 의미를 모른다.
    
    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: (x: store.x, y: store.y))
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
        }
    }
    
    print("closest store is \(closestStoreName)")
    
}

// Stores Array, 현재 나의 위치 Setting
let myLocation = (x: 2, y: 2)
let stores = [store1, store2, store3]

printClosestStore(currentLocation: myLocation, stores: stores)

// Improve the code
// - make Location Structure
struct Location {
    let x: Int
    let y: Int
}



//현재 편의점 위치
let structStore1 = (loc: Location(x: 3, y: 5), name: "gs")
let structStore2 = (loc: Location(x: 4, y: 6), name: "seven")
let structStore3 = (loc: Location(x: 1, y: 7), name: "cu")

//거리를 구하는 함수
func structDistance(current: Location, target: Location) -> Double {
    //피타고라스 정리
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

//가장 가까운 스토어를 구하여 프린트하는 함수
func structPrintClosestStore(currentLocation: Location, stores: [(loc: Location, name: String)]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity //요건 의미를 모른다.
    
    for store in stores {
        let structDistanceToStore = structDistance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(structDistanceToStore, closestStoreDistance)
        if closestStoreDistance == structDistanceToStore {
            closestStoreName = store.name
        }
    }
    
    print("closest store is \(closestStoreName)")
    
}

// Stores Array, 현재 나의 위치 Setting
let structMyLocation = Location(x: 2, y: 2)
let structStores = [store1, store2, store3]

printClosestStore(currentLocation: myLocation, stores: stores)

// - make Location Structure + make Store Structure

struct Store {
    let loc: Location
    let name: String
    //method 넣기
    let deliveryRange = 2.0
    
    func isDeliverable(userLoc: Location) -> Bool {
        let distanceToStore = structDistance(current: userLoc, target: loc)
        return distanceToStore < deliveryRange
    }
}



//현재 편의점 위치
let structStore4 = Store(loc: Location(x: 3, y: 5), name: "gs")
let structStore5 = Store(loc: Location(x: 4, y: 6), name: "seven")
let structStore6 = Store(loc: Location(x: 1, y: 7), name: "cu")

//거리를 구하는 함수
func structDistance2(current: Location, target: Location) -> Double {
    //피타고라스 정리
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

//가장 가까운 스토어를 구하여 프린트하는 함수
func structPrintClosestStore2(currentLocation: Location, stores: [Store]) { //stores는 store의 array란 뜻
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity //요건 의미를 모른다.
    var isDeliverable = false
    
    for store in stores {
        let structDistanceToStore = structDistance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(structDistanceToStore, closestStoreDistance)
        if closestStoreDistance == structDistanceToStore {
            closestStoreName = store.name
            isDeliverable = store.isDeliverable(userLoc: currentLocation)
        }
    }
    
    print("closest store is \(closestStoreName), is Deliverable: \(isDeliverable)")
    
}

// Stores Array, 현재 나의 위치 Setting
let structMyLocation2 = Location(x: 2, y: 2)
let structStores2 = [store1, store2, store3]

printClosestStore(currentLocation: myLocation, stores: stores)


//structure는 object로 표현될 수 있다. 그렇다 보니, structure 안에 method를 넣을 수도 있다. (object = data + method)

// Challenge

// Protocol은 어떠한 서비스를 이용하기 위해 수행해야 하는 일련의 규약
// CustomStringConvertible

// 1. 강의 이름, 강사 이름, 학생 수를 가지는 Structure 만들기 (Lecture)
struct Lecture : CustomStringConvertible {
    var description: String {
        return "Title: \(lecName), PROFESSOR: \(profName)"
    } // CustomStringConvertible을 위한 조건 (해당 코드가 있어야 사용할 수 있다)
        
    let profName: String
    let lecName: String
    let studentNum: Int
}

// 2. 강의 Array와 강사 이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수
func printProfAndLec(prof: String, lectures: [Lecture]) { //선생님은 param에 from을 붙였다!! *** >> 아 external Name
//    var professorName = ""
//
//    for lecture in lectures {
//        if professorName == lecture.profName {
//            print("\(professorName)'s lecture name is \(lecture.lecName)")
//        }
//    }
    let lectureName = lectures.first {
        (lec) -> Bool in
        return lec.profName == prof // '(lec) -> Bool in return lec' 이걸 다 지우고 $0 으로 바꿀 수도 있다. lecture에 있는 item을 하나하나 가져와서 비교하는 것
    }?.lecName ?? "" //지금 찾은 게 하나의 lecture니까 ?.lecName을 통해 이름만 빼온다 // 없는 경우에는 기본값
    print("\(prof)'s lecture name is \(lectureName)")
}


// 3. 강의 3개를 만들고, 강사 이름으로 강의 찾기
let lecture1 = Lecture(profName: "Andrea", lecName: "Tenor", studentNum: 10)
let lecture2 = Lecture(profName: "YOU", lecName: "Absurd", studentNum: 200)
let lecture3 = Lecture(profName: "LEE", lecName: "Avant-Garde", studentNum: 250)

let lectures = [lecture1, lecture2, lecture3]

printProfAndLec(prof: "YOU", lectures: lectures)
