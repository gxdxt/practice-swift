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

// closure

// func은 closure의 한 가지 타입

// 1. global func
// 2. nested func
// 3. closure expressions >>> 지금 배우는 부분

// swift 홈페이지 가면 정확한 정의를 볼 수 있다.

// 함수처럼 사용하는 코드 블럭
// 함수와 다르게 이름이 없다

// first class type
//- 변수에 할당할 수 있다
//- 인자로 받을 수 있다
//- 리턴할 수 있다

// closure가 자주 쓰이는 case
// 1. Completion Block
// 어떠한 task가 완료되었을 때 closure가 쓰인다.
// app같은 곳에서 network를 통해 data를 받는다는 가정, (비동기적으로 언제 끝날지 모르는 상황에 data가 모두 받아진다면 closure가 발동하게끔) closure를 사용한다.

// 2. Higher Order Function
// 함수인데 인자를 함수로 받는 경우 - 고계 함수!
// input을 함수로 넘겨줄 때 그 즉시 closure를 만들어서 넘겨주는 경우
// Map, filter, 미지수 등 고계함수

// basic format
//{ (parameters) -> return type in
//    statements
// }

// 1. cho simple closure
let choSimpleClosure = {
    
}

choSimpleClosure() // func으로 선언 안하니까 closure인 듯?

// 2. 코드블럭을 구현한 closure
let codeBlockClosure = {
    print("Hello, closure")
}

codeBlockClosure()

// 3. input param closure
let inputParamClosure: (String) -> Void = { name in
    print("Hello, \(name)")
}
//형태를 잘 외워두어야 한다. let name: (paramType) -> returnType = { externalName in
// ~~~~~~~
// }

inputParamClosure("Starboy")

// 4. return closure
let returnClosure: (String) -> String = { name in
    let msg = "Hi, this is \(name)"
    return msg
}

returnClosure("st")

// 5. closure as a param in func
func someSimpleFunc(choSimpleClosure: () -> Void) {
    print("함수에서 호출 되었습니다.")
    choSimpleClosure() //()를 쓰는 경우와 안쓰는 경우
}

someSimpleFunc(choSimpleClosure: {
    print("Hello! there")
})

// 6. trailing closure
func trailingClosure (message: String, choSimpleClosure: () -> Void) {
    print("함수에서 호출 되었습니다. \(message)")
    choSimpleClosure() //()를 쓰는 경우와 안쓰는 경우
}

trailingClosure(message: "Michael", choSimpleClosure: { print("I'm waiting you")
})
// trailing closure 의 특징으로 위의 함수를 축약하여 표현할 수 있다.
trailingClosure(message: "Michael") {
    print("I'm waiting you, trailing Closure")
}

