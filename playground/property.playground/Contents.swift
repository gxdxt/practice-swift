import UIKit

struct Person {
    //instance Property {
    //Stored Properties
    var firstName: String
    var lastName: String
    
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
    // }
    //type Property {
    static let isAlien: Bool = false
    
}

var person = Person(firstName: "ST", lastName: "YOU")

person.firstName
person.lastName

person.fullName

person.firstName = "TAE"
person.lastName = "Y"

person.firstName
person.lastName

person.fullName
person.fullName = "you need to set the setter"
