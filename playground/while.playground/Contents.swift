import UIKit
import Foundation

// ----while
print("-----while")
var i = 0
while i < 10 {
    print(i)
//    if i == 5 {
//        break
//    }
    i += 1
}

i = 0
print("-----repeat")
repeat {
    print(i)
    i += 1
} while i < 10

//-------For Loop
//range란?
let closedRange = 0...10
let halfClosedRange = 0..<10
//둘 모두 lower bound = 0, upper bound = 10으로 표현되지만 같지 않다.

var sum = 0
for i in closedRange {
    sum += i
}
    print("closedRange : \(sum)")

sum = 0
for i in halfClosedRange {
    sum += i
}
print("halfClosedRange :  \(sum)")

//sin그래프 사용하려면 import Foundation해야한다.
var sinValue: CGFloat = 0
for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

//i가 사용처가 없을 때 _를 사용할 수 있다.
var name = "ysnh"
for _ in closedRange {
    print("name: \(name)")
}

//for문에 조건 걸기
for i in closedRange where i % 2 == 0 {
    print("짝수: \(i)")
}

//빼고 출력하기
for i in closedRange {
    if i == 3 {
        continue
    }
    print("\(i)")
}

for i in closedRange {
    for j in halfClosedRange{
        print("--->> \(i)*\(j) = \(i*j)")
    }
}




