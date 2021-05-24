import UIKit

struct Lecture {
    var title: String
    var maxStudent: Int = 10
    var numberOfRegistered: Int = 0
    
    func remainSeats(of lec: Lecture) -> Int {
        let remainSeats = lec.maxStudent - lec.numberOfRegistered
        return remainSeats
    }
    
    mutating func register() { //스스로 stored propeprty를 변경시키면 mutating 넣어야 한다.
        numberOfRegistered += 1
    }
    
    //type prop
    static let target: String = "Anybody who want to learn something"
    
    //type method
    static func 소속학원이름() -> String {
        return "fast campus"
    }
    
    //추가하고 싶을 때 : extension을 이용한 확장
    
}

var lec = Lecture(title: "iOS basic")

//강의에 남은 자리 수
//func remainSeats(of lec: Lecture) -> Int {
//    let remainSeats = lec.maxStudent - lec.numberOfRegistered
//    return remainSeats
//}

//remainSeats(of: lec)

lec.remainSeats(of: lec)

//lec.register() 적어놓고 구현해보자
lec.register()
lec.remainSeats(of: lec)
Lecture.target
Lecture.소속학원이름()

// extension 예제
struct Math {
    static func abs(value: Int) -> Int {
        if value > 0 {
            return value
        } else {
            return -value
        }
    }
}

Math.abs(value: -20)
Math.square(value: 20)

extension Math {
    static func square(value: Int) -> Int {
        return value * value
    }
    
    static func half(value: Int) -> Int { //instance와 다르게 type에 관한 것들을 보여줘야 할 때 type method를 사용
        return value/2
    }
}

extension Int { //여기선 왜 static이 안붙어? // 저건 type method여서
    func square() -> Int {
        return self * self
    }
    
    func half() -> Int {
        return self/2
    }
}
