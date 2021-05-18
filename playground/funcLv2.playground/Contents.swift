import UIKit

// overload
//같은 함수의 이름.but 다른 parameter 및 다른 return

func printTotalPrice(price : Int, count : Int){
    print("Total Price is \(price*count)")
}
func printTotalPrice(price : Double, count : Double){
    print("Total Price is \(price*count)")
}
func printTotalPrice(가격: Int, 개수 : Int){
    print("총 가격 : \(가격*개수)")
}

// In-Out param

//func incrementAndPrint(_ value : Int){
//    value += 1
//    print(value)
//}

// >> reason : when a value came in the parameter, it's copied as a constant. so it couldn't be modified.
// in this case, we can use '(copy)in-(copy)out param'
var value = 3
func incrementAndPrint(_ value : inout Int){
    value += 1
    print(value)
}
//왜 '&'를 붙여야 하나? -> inout을 받을 때에는 필수야
incrementAndPrint(&value)

// func을 param으로 넘기는 법
func add(_ a : Int, _ b : Int) -> Int{
    return a + b
}
func subtract(_ a : Int, _ b : Int) -> Int{
    return a - b
}

var function = add
function(4, 2)

function = subtract
function(4, 2)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int){
    let result = function(a, b)
    print(result)
}
printResult(function, 4, 2)
printResult(add, 19, 5)
printResult(subtract, 19, 5)
//여기서 중요한건 add func과 subtract func은 type이 같다는 것을 알아야 한다.
//함수는 되도록 한 가지 일만 할 수 있게 구성하는 것이 좋다.

