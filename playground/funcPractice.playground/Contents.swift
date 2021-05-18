import UIKit

//1. 성, 이름을 받아서 full name 출력
func printFullName(firstName : String, lastName : String){
    print("My full name is \(firstName) \(lastName)")
}

//2. 1번에서 만든 함수지만 parameter 제거한 후 같은 값 출력
func printFullName2(_ firstName : String = "Andrew", _ lastName  : String = "YOU"){
    print("My full name is \(firstName) \(lastName)")
}

//3. 성, 이름을 받아서 full name을 return하는 함수
func printFullName3(firstName : String, lastName : String) -> String{
    let fullName = firstName + " " + lastName
    return fullName
}

printFullName(firstName: "Andrew", lastName: "YOU")
printFullName2()
printFullName3(firstName: "Andrew", lastName: "YOU")


