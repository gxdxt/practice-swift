import UIKit

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    //designated initialization (주 init)
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printPersonName() {
        print("Name is \(firstName) \(lastName)")
    }
    
}

class Student: Person {
    var grades: [Grade] = []
    
    //여기는 왜 또 선언 하는거지?
    override init(firstName: String, lastName: String){
        super.init(firstName: firstName, lastName: lastName)
    }
    
    convenience init(student: Student){
        self.init(firstName: student.firstName, lastName: student.lastName)
    }
}

class StudentAthlete: Student {
    var minimalTrainingTime: Int = 2
    var trainedTime: Int = 0
    var Sports: [String] // 생성한 시점에는 init가 필요하다!
    
    init(firstName: String, lastName: String, sports: [String]){
        
        //phase 1
        self.Sports = sports
        //parent class 가져오자
        super.init(firstName: <#T##String#>, lastName: <#T##String#>)
        
        //phase 2
        self.train()
    }
    
    convenience init(name: String) {
        self.init(firstName: name, lastName: "", sports: [])
    }
    
    func train(){
        trainedTime += 1
    }
}

class FootballPlayer: StudentAthlete {
    var footballTeam = "좌우 FC"
    
    override func train(){
        trainedTime += 2
    }
}

let student1 = Student(firstName: "Michael", lastName: "Jordan")
let student2 = StudentAthlete(firstName: "John", lastName: "Carry", sports: ["Football"])
//conveniance init
let student3 = StudentAthlete(name: "Henry")

// 2-phase initialization
// subclass prop. setting 하고 super class prop. setting!
// class 생성 시 2 단계!
// phase 1. 모든 stored prop.는 init 되어야 한다. (자식부터 부모까지)
// phase 2. prop.와 method를 온전히 다 사용할 수 있다. (부모부터 자식까지)


// initialization이 너무 길어지는 것을 대비하여, conveniance init!

// DI vs. CI

// 1. DI는 자신의 부모 DI를 호출해야 한다.
// 2. CI는 반드시 같은 클래스의 init를 호출해야 한다.
// 3. CI는 궁극적으로 DI를 호출해야 한다.


