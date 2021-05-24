import UIKit

struct Person {
    //instance Property {
    //Stored Properties
    var firstName: String {
        willSet{
            print("willSet: \(firstName) --> \(newValue)")
        }
        didSet{
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    
    //해당 property가 접근될 때 실행되는 property: Stored Property
    
    
    var lastName: String
    
    //
    lazy var isPopular: Bool = { //얘를 왜 쓰냐? engineering 측면에서 최적화를 위해 사용한다. init
        if fullName == "ST YOU" {
            return true
        } else {
            return false
        }
    }() //()는 code block을 실행한다는 의미
    
    //Computed Properties (var만 가능)
    var fullName: String {
        //setting이 가능하게 하려면
        get { //readonly면 이것만 있으면 돼
            return "\(firstName) \(lastName)"
        }
        
        set {
            //후에 해당 property에 값을 새롭게 setting하려면 여기 코드 작성해야 해
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
        
    }
    
    func fullName2() -> String {
        return "\(firstName) \(lastName)"
    }
    // }
    //type Property {
    static let isAlien: Bool = false
    
}

var person = Person(firstName: "ST", lastName: "YOU")

person.firstName
person.lastName

person.fullName
person.isPopular
//--------------------------------
person.firstName = "TAE"
person.lastName = "Y"

person.firstName
person.lastName

person.fullName
person.fullName = "you need to set the setter"
person.fullName

person.isPopular


// property vs. method

// property: 호출 시 (저장된)값을 하나 반환!
// method: 호출 시 어떤 작업을 실행!

// setter가 필요한가? Y --> computed property
//                 N --> 계산이 많이 필요한가? Y --> method
//      혹은 DB access나 file io가 필요한가?   N --> computed property
