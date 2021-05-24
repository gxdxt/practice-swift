import UIKit

// Class
// -reference type
// -share
// -heap

// stack과 heap 모두 시스템 실행을 위한 메모리 공간
struct stack { //효율적이고 빠르다
    var fast: String
    
}
//class는 heap에 생성되지만 변수들은 stack에  //생성된다. (heap에 선언된 class 주소를 가지고 있는 변수들!)

struct PersonStruct {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) { //structure는 생성 함수가 선택적
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    //이름을 모두 대문자로 바꾸기
    mutating func uppercaseName(){ //자기가 속한 struct의 stored property를 변경하다보니 mutating 넣어야 한다.
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

// 똑같이 class로 선언

class PersonClass {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) { //class 객체를 생성할 때 사용되는 생성 함수, 초기값이 무조건 있어야 class가 생성된다.
        self.firstName = firstName
        self.lastName = lastName
    }
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    //이름을 모두 대문자로 바꾸기
    func uppercaseName(){ //자기가 속한 struct의 stored property를 변경하다보니 mutating 넣어야 한다.
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = PersonStruct(firstName: "Kitsch", lastName: "You")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Kitsch", lastName: "You")
var personClass2 = personClass1

personStruct2.firstName = "Kitschiest"
personStruct1.firstName
personStruct2.firstName

personClass2.firstName = "Kitschiest"
personClass1.firstName
personClass2.firstName

personClass2 = PersonClass(firstName: "soony", lastName: "yoo")
personClass1.firstName
personClass2.firstName

