import UIKit

// closure
// 이름 없는 메소드 / 함수

var multiplyClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a * b
}
// 위의 closure을 다음과 같이 간소화할 수 있다.
var multiplyClosure2: (Int, Int) -> Int = { a, b in return a * b}
// 더 짧게
var multiplyClosure3: (Int, Int) -> Int = { $0 * $1 }

multiplyClosure(7, 7)
multiplyClosure2(49, 7)
multiplyClosure3(343, 7)

// 왜 closure가 좋은가?

// function이 closure을 parameter로 받는 예
func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure3)

var addClosure: (Int, Int) -> Int = {
    a, b in
    return a + b
}
operateTwoNum(a: 4, b: 2, operation: addClosure)

operateTwoNum(a: 4, b: 2) { a, b in
    return a / b
} //이 형태는 좀 이해가 안되네, 왜 parameter 위치에서 벗어났지?




//input도 없고, output이 없는 closure
let voidClosure: () -> Void = {
    print("Peace")
}

voidClosure()

//closure에게 한 번 캡쳐되면, scope 밖에서도 사용이 가능하다.
// called 'capturing values'
var count = 0

let increment = {
    count += 1
}

increment()
increment()
increment()

count
