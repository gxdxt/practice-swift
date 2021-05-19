import UIKit

//현재 값을 가지고 있을 지 없을 지 모르는 경우, optional을 사용할 수 있다.
 
//값이 없을 때, swift는 'nil'을 사용한다. nil == '무'

var carName: String?
//type 뒤에 물음표를 통해 optional의 의미를 가진다.
carName = nil
carName = "Bentley"

// 1.최애 영화배우의 이름을 담는 String 변수를 선언
var favName: String?

let num = Int("10") //얘 타입은 Int지? >> optional Int다!
//값이 있을 수도, 없을 수도 있어서
//10처럼 Int로 casting 가능한 String이 들어오면 알맞게 들어가지만,
//그 외의 casting할 수 없는 값이 들어오면 num에 nil값이 들어온다.

//----optional 고급기능

// 1. Forced wrapping
// 2. Opitional binding(if let)
// 3. Opitional binding(guard)
// 4. Nil coalescing

// 1. Forced wrapping >> 억지로
// 2. Opitional binding(if let) >> 부드럽게
// 3. Opitional binding(guard) >> 부드럽게
// 4. Nil coalescing >> 꺼냈는데, 없으면 default를 주자

print(carName)
//이 상태로는 Optional이라는 상자 안에 들어와 있는 값이다.

//상자에서 꺼내려면 다음과 같이 작성해야 한다.
print(carName!)
//이것이 1번 방법
//nil인 상태에서 !를 통해 상자에서 꺼내려고 하면 에러가 발생한다.

if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("the CarName is nil")
}

func printParsedInt(from: String) { //String으로부터 parse하겠다.는 뜻
//    if let parseInt = Int(from) {
//        print(parseInt)
//        //Cyclomatic Complexity: 복잡성
//        //level depth가 깊어지면 cc가 높아지니 줄여야 한다고 review가 나옴
//    } else {
//        print("failed to parse String to Int")
//    }
    guard let parseInt = Int(from) else {
        print("failed to parse String to Int")
        return
    } //방어막 생성
    print(parseInt)
}

printParsedInt(from: "100")
printParsedInt(from: "you")

// 4.nil일 때, default값 추가
let myCarName: String = carName ?? "Bentayga"

