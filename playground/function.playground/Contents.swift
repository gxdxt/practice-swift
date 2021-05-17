import UIKit

//Method: object에 속해서 기능을 수행 ;  object.methodName()
//Function: 독립적으로 기능을 수행 ; functionName()

func printName() {
    print("ysnh!")
}

printName()

func printMultipleOfTen(value : Int) {
    print("\(value) * 10 : \(value * 10)")
}

printMultipleOfTen(value: 5)

//param 2개
func printTotalPrice(price: Int, count: Int) {
    print("Total Price : \(price * count)")
}

printTotalPrice(price: 1500, count: 5)


//param 이름을 굳이 안쓰고 싶으면 선언 시에 param 앞에 _ 를 추가하면 된다.

func printTotalPrice2(_ price: Int, _ count: Int) {
    print("Total Price : \(price * count)")
}

printTotalPrice2(1500, 5)


//유니코드 지원이 되기에, 한글로도 가능하다. 해당 위치를 external name이라고 포현한다.
func printTotalPrice3(가격 price: Int, 개수 count: Int) {
    print("Total Price : \(price * count)")
}

printTotalPrice3(가격: 1500, 개수: 5)

