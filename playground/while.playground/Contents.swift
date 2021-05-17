//import UIKit
//import Foundation
//
//// ----while
//print("-----while")
//var i = 0
//while i < 10 {
//    print(i)
////    if i == 5 {
////        break
////    }
//    i += 1
//}
//
//i = 0
//print("-----repeat")
//repeat {
//    print(i)
//    i += 1
//} while i < 10
//
////-------For Loop
////range란?
//let closedRange = 0...10
//let halfClosedRange = 0..<10
////둘 모두 lower bound = 0, upper bound = 10으로 표현되지만 같지 않다.
//
//var sum = 0
//for i in closedRange {
//    sum += i
//}
//    print("closedRange : \(sum)")
//
//sum = 0
//for i in halfClosedRange {
//    sum += i
//}
//print("halfClosedRange :  \(sum)")
//
////sin그래프 사용하려면 import Foundation해야한다.
//var sinValue: CGFloat = 0
//for i in closedRange {
//    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
//}
//
////i가 사용처가 없을 때 _를 사용할 수 있다.
//var name = "ysnh"
//for _ in closedRange {
//    print("name: \(name)")
//}
//
////for문에 조건 걸기
//for i in closedRange where i % 2 == 0 {
//    print("짝수: \(i)")
//}
//
////빼고 출력하기
//for i in closedRange {
//    if i == 3 {
//        continue
//    }
//    print("\(i)")
//}
//
//for i in closedRange {
//    for j in halfClosedRange{
//        print("--->> \(i)*\(j) = \(i*j)")
//    }
//}
//
////-------switch
//
//let num = 10
//switch num {
//case 0 :
//    print("----> 0입니다.")
//case 1...9 :
//    print("----> 1입니다.")
//case 10 :
//    print("----> 10입니다.")
//default:
//    print("----> default입니다.")
//}
//
//let pet = "bird"
//switch pet {
//case "cat", "bird" :
//    print("---> is a tiger")
//case "dog" :
//    print("---> is a wolf")
//default :
//    print("---> whatever")
//}

let num = 5
switch num {
case _ where num % 2 == 0 :
    print("---->even")
default :
    print("---->odd")
}

//Tuple
let coordinate = (x: 10, y: 10)

switch coordinate{
case (0, 0) :
    print("---> 원점")
//case (_, 0) :
//    print("---> x축")
case (let x, 0) :
    print("---> x축, x:\(x)")
case (0, _) :
    print("---> y축")
case (let x, let y) where x == y:
    print("--->y = x 그래프 선 상에 위치한다")
case (let x, let y) :
    print("--->좌표 어딘가, x: \(x), y:\(y)")
}

