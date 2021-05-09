# swift

## SwiftUI vs UIKit
</br>
</br>

### SwiftUI
</br>
* SwiftUI can visualize my work
* SwiftUI is good for team-based developement
* SwiftUI can port MacOS, watchOS, TvOS
* SwiftUi is plain fun ?
</br>

### Reasons keep using UIKit instead of SwiftUI
</br>
* SwiftUI is working only on iOS 13 or later
* UIKit is much mature than SwiftUI
* Many companies already used their Legacy Code by UIKit
</br>

__그러니까, 둘 다 공부해야 한다.__

</br>
</br>
해당 과정은 5개의 이정표를 갖는다.

1. Your first iOS & SwiftUI app : an app from scratch
2. Your first iOS & SwiftUI app : polishing the app
3. Programming in Swift : Fundamentals
4. Your second iOS & SwiftUI app
5. Programming in Swift : Functions & Types
</br>
그럼 시작!
</br>
## SwiftUI로 나만의 앱 만들기 1 : MVP와 Nice to Haves
</br>
</br>
먼저, 강의에서 예시로 보여준 Bull's eye라는 앱의 기능과 UI를 보고 어떠한 기능들이 필요한지 생각해서 to-do-list를 작성해야 합니다.

</br>
### TO-DO-LIST
</br>
* 중앙 상단에 랜덤으로 등장하는 숫자가 출력되게 해야 합니다.
* 정중앙에 1부터 100까지의 수치를 보여주는 직선을 출력해야 합니다.
* Hit me! 라는 버튼을 누르면 상단에 랜덤으로 등장하는 숫자와 이용자의 숫자를 비교합니다.
* 그 값이 같다면 200점을 부여하고 멀어질 수록 적은 점수를 부여합니다.
* 해당 값을 팝업창을 통해 화면에 띄웁니다.
* 좌측 하단에 이용자의 누적 점수를 출력합니다.
* 우측 하단에 이용자의 단계를 출력합니다.
* 좌측 상단에 게임을 리셋하는 버튼을 출력합니다.
* 이 정도가 예시로 보여준 게임의 개괄을 분석하고, 해야하는 일들을 나열한 것입니다.


</br>
선생님이 제시하는 방법은 다음과 같습니다.
</br>
먼저, 2가지 리스트를 작성합니다.
</br>
* "필수적인" Minimal Viable Product as MVP
  * 기능 1
  * 기능 2
  * 기능 3
* "있으면 좋은"
  * 기능 1
  * 기능 2
  * 기능 3
</br>
MVP를 모두 완료한 후, 계속해서 "있으면 좋은" 기능들을 추가하는 것이 바람직합니다.
</br>
앞으로도 그렇겠지만, 처음 APP을 만들 땐 이런 식으로 계획을 수립하는 것이 좋습니다.
</br>
**어떻게 해야 하는지 몰라도, 무엇을 해야 하는지 작성하는 것이 우선입니다.**
</br>
### 선생님의 to-do-list는 다음과 같습니다.
</br>
1. Add an instructions label
2. Add a target label
3. Add a slider and make it go between the values 1 and 100
4. Add a "Hit me" button
5. Style the text like Luke's design
6. Show a popup when the user hit the button
7. Read the value of the slider when the user hit the button
8. Generate a random number for the target value
9. Calculate and display the score

</br>
오, 저와 유사한 부분들이 매우 많습니다!

</br>
</br>
### 다음은 선생님의 nice to haves list 입니다.
</br>
1. Implement multiple rounds
2. Implement restarting the game
3. Add the leaderboard screen
4. Make the app look pretty!
</br>
제가 써놓았던 부분들이 여기 속해 있는 것을 확인할 수 있습니다.
</br>
MVP에는 정말 살을 다 벗겨낸 '뼈'만 놓는다는 것을 알 수 있습니다.
</br>
## SwiftUI로 나만의 앱 만들기 2 : SwiftUI Views
</br>
</br>
첫 번째 강의에선 단순히 계획만 짰다면, 이번 강의에선 실제 APP 설계로 들어갑니다.

 
</br>
먼저 View가 무엇인지 이해해야 합니다.

 
</br>
여기서 이야기하는  View는 개발해야 하는 모든 것입니다.

 </br>
즉, 모든 사용자의 인터페이스(Every user interfaces)를 'View'라고 칭합니다.

 </br>
</br>
어떤 뷰들은 다른 뷰들의 Container로 사용되기도 합니다.

(여기 화면에선 화면 전체 뷰, 슬라이더 뷰 같은 것들이 Container로 사용됩니다.)

 </br>
</br>
여기서 알 수 있는 것은, SwiftUI에선 다양한 형태의 View가 존재하는 것입니다.
</br>
Text</br>
Slider</br>
Button</br>
Vertical Stack</br>
Horizontal Stack</br>
이러한 View들의 공통점은 모두 화면에 그려질 수 있다는 것(can be drawn on the screen)입니다.


</br>
이제 View들을 확인했으니 XCode를 실행합니다.

 
</br>
Xcode로 하는 첫 코딩이기 때문에, 완전 처음부터 코드를 작성하지 않고 자동으로 생성된 코드를 가지고 조금 변형하는 식으로 시작할 것입니다.

 
</br>
처음에는 무슨 이야기인지, 해당 코드가 어떠한 의미를 가지고 있는지 모를 수도 있습니다. 하지만 괜찮습니다.
</br>
**중요한 것은 진행되는 과정을 이해하고, 반복을 통해 몰랐던 부분들을 깨닫는 것입니다.**

 
</br>
</br>
Xcode를 실행한 후 새로운 Xcode 프로젝트를 생성합니다.

</br>
그 후 iOS 탭에 있는 App을 선택한 후, 다음으로 넘어갑니다.

</br>
프로젝트 이름을 정하고, Organization Identifier에는 유일한 경로를 지정해 줍니다.

 </br>
</br>
프로젝트를 생성하고 나면, 기본값으로 생성되는 파일들이 있습니다.

 
</br>
</br>
ContentView.swift는 현재 만들고 있는 APP의 메인 화면을 담당합니다.

</br>
우측 상단에 있는 곳에 Resume 버튼을 클릭하면, 현재 입력된 코드로 출력되는 화면을 보여줍니다.
</br>
</br>
이제,
</br>
현재 보이는 기본 화면을 통해 각각의 코드들이 어떠한 의미를 가지고 있는지 가볍게 살펴봅시다.
```swift
struct ContentView: View { //view 형태의 ContentView를 생성하고
    var body: some View { //그 안에 some View 형태의 body를 만들고 **some View는 모르는 개념
        Text("Hello, world!") // 그 안에 Text View를 넣고
            .padding() // Text View에 padding값을 부여합니다.
    }
}
```
</br>
조금씩 고쳐볼 건데, 먼저 우측 화면을 앞으로 'canvas'라고 칭합니다.
</br>
해당 캔버스를 클릭해보면, 부분에 맞는 코드들도 함께 좌측에 표시됩니다.
</br>
</br>
Hello, world!를 클릭하자, Text부분에 블럭이 생겼습니다
게임을 위한 Text를 추가합니다.
</br>
>이모티콘은 ctrl+cmd+spacebar로 추가합니다.
>줄 바꿈을 위해선 \n을 추가합니다. 큰 따옴표 안에서도 작동을 하네요,,, 신기방기
다음으로 또 다른 View Text를 추가해줍니다.
</br>
이를 위해서 우측 상단에 있는 Library 추가 버튼('+' 모양)을 클릭합니다.
</br>
그리고 화면으로 끌어와 원하는 곳에 배치합니다.
</br>
저런식으로 View를 놓게되면 자동으로 VStack View안에 Text View 두 개가 들어오게 됩니다.
```swift
struct ContentView: View {
    var body: some View {
        VStack {
            Text("PUT THE BULLSEYE \n AS CLOSE AS YOU CAN DO🤪")
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
        }
    }
}
```
</br>
같은 방식으로 Slider View와 Button View 등을 배치 해줍니다.
</br>
>이때 조심해야 하는 것들은, 배치할 때 새로운 VStack View에 View를 배치할 것인지, 기존의  VStack View에 View를 추가할 것인지 위치를 잘 조절해야 합니다. 배치에서 어려울 때에는 Canvas말고 Code 쪽으로 배>치를 해주어도 됩니다.
>이제 기본적인 to-do-list를 모두 완료했습니다.
</br>
```swift

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN DO\n🤪")
            Text("89")
            HStack {
                Text("1")
                Slider(value: .constant(50), in: 1.0...100.0) //50의 고정값을 갖고 범위는 1부터 100으로!
                Text("100")
            }
            Button(action: {}) {
                Text("Hit me") //action은 No code로 선언하고, content에 Text로 Hit me 출력
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView() //2개의 ContentView를 가지고, 두 번째는 Landscape mode로 설정
            .previewLayout(.fixed(width: 568, height: 320))
    }
}

```
</br>
## SwiftUI로 나만의 앱 만들기 3 : SwiftUI View Modifier
</br>
</br>
저번 강의에서 배치한 to-do-list만 가지고는, 매력적인 앱이라고 할 수 없습니다.
</br>
오늘 해야할 것은 SwiftUI에 내장되어 있는 **Modifiers를 통해 앱에 '매력'을 추가**할 것입니다.
</br>

```swift
Text("PUT THE BULLSEYE \nAS CLOSE AS YOU CAN DO\n🤪")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
```
</br>
modifier를 통해 기본적인  Text View가 Style을 갖게 되었습니다.
</br>
하지만 이때 꼭 염두해야 하는 것은, 해당 Style들은 누적되는 것이 아니라 독립적으로 부여됩니다.
</br>
캡처한 이미지를 예로 들자면, Text에 opacity(0.5) modifier를 통해 투명도가 0.5가 되었습니다. 그 후, border modifier를 통해 테두리가 생겼는데, 이 때 테두리는 투명도과 관련이 없습니다.
</br>
</br>
하지만 **순서는 중요합니다.**
</br>
만약, border modifier가 먼저 나오고 opacity가 후에 추가된다면, border 역시 투명도를 가지게 됩니다.
</br>
>>오류가 나거나, 개념에 대해 잘 모를 때, Help 탭에 있는 'Developer Documentation'을 클릭하거나 해당 단축키를 눌러 문서를 확인하는 것도 도움이 될 수 있습니다.
>>해당 문서에는 특정 modifier가 적용되는 범위에 대해 알려줍니다.
</br>
modifier가 적용되는 범위를 벗어난 경우는 다음과 같습니다.

```swift
struct ContentView: View {
    var body: some View {
        VStack {
            Text("PUT THE BULLSEYE \nAS CLOSE AS YOU CAN DO\n🤪").bold().multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0) //여기에 위치하게 되면, 오류가 발생
```

kerning은 자간 사이에 대한 modifier로, Text View에만 적용이 됩니다.
하지만 *다른 modifier들로 인해 Text View가 Some View로 변환되었기에 kerning이 적용되지 않습니다.*
</br>
올바른 kerning의 위치는 다음과 같습니다.
```swift
struct ContentView: View {
    var body: some View {
        VStack {
            Text("PUT THE BULLSEYE \nAS CLOSE AS YOU CAN DO\n🤪")
                .bold()
                .kerning(2.0) // <<이곳이 올바른 위치
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
```

## SwiftUI로 나만의 앱 만들기 4 : Objects, Data, and Methods

이번 강의에선 코드보다 이론적인 개념에 대해 설명합니다.
</br>
SwiftUI에서(어떤 개발도구를 사용하든) 개발자들은 보통 관계되는 정보(data)와 기능(functionality)를 작은 조각들고 관계짓는 것을 즐깁니다.
</br>
예를 들어, '강아지'와 관련한 정보들을 나열하기 위해선, 강아지의 이름(data)과 견종(functionality)를 묶어 나열하는 것이 좋은 것 처럼 말이죠.
</br>
다음과 같은 Template이 생성된다면 이에 파생되는 Instance(s)가 나타납니다.
</br>
>포키 - 스피츠
>호짱이 - 말티즈
>
와 같은 Instances들이죠.
</br>
그러므로, Instances를 보통 Template의 fill-in 버전이라고 생각하시면 됩니다.
</br>
SwiftUI에서는 Template을 생성하는 데에 2가지 방법이 존재합니다.
1. Struct로 생성하기.
2. Class로 생성하기.
</br>
>특정 환경에서는 이 둘이 극단적인 차이를 보이지만, 여기선 비슷한 종류라고 생각하시면 됩니다.
>물론 완전히 일치하는 것은 아니지만, 현재 강의에선 일치하는 것으로 보고 넘어가도록 합니다.
>
</br>
App은 다음과 같이 정의할 수 있습니다.
>*A Bunch of Instances that communicate with each other*
>서로 상호작용하는 인스턴스들의 집합
>
</br>

우리는 이미 instance를 생성한 적이 있습니다.
바로, Button Template으로부터 instance를 생성했고
Text Template으로부터 Text instance를 생성했습니다.
이것들은 iOS에서 제공하는 Template을 가져와 instance로 생성한 것입니다.
</br>
우리가 직접 Template을 만든 경우도 있는데,
이는 바로 ContentView라는 struct입니다.
여기서 우리는 이 struct의 body가 어떻게 생겨야 하는지 설계하고 그에 따라 생성했습니다.
</br>
</br>
모든 structs, classes 그리고 모든 instances는 각각 data와 functionality를 가질 수 있습니다.
'Hit me!' Button을 예로 들면, 
|Data|
|:---------------:|
|View to Display|
|position|
|width|
|height|
</br>


|Functionality|
|:----------------:|
|recognize user tab|
|highlight self|
|trigger action|
</br>
>특히, 이러한 Functionality는 보통 Method라고도 표현합니다.
>Method의 기본형은
>**Instance.Method(parameter)**
>의 형태를 가집니다.
>

</br>
data와 properties는 또 다른 개념입니다.
다른 컴퓨터 언어에서 변수라고 생각하는 개념들이 이것이라 생각됩니다.
</br>
여기서 이야기하는 data는 instance에서 information을 refer하는 개념입니다.
Swift에선 instance에 data를 저장하는 방법이 property입니다.
</br>
2가지 개념의 property가 있습니다.
1. stored property 
```swift
var subtotal: Double
var tax: Doublt
```

2. computed property
```swift
var total: Double {
 return: subtotal + tax
}
````
 

//난데없이, 클론 코딩에 오류가 발생했다. 이를 해결하는 것이 SwiftUI의 첫 번째 오류를 해결하는 것이 될 것이다.

//cannot convert value of type 'Int' to expected argument type 'Double'
//Int 타입의 value값을 예상되는 arg타입인 Doulbe로 변환할 수 없다는데,
//Slider에서 해당 오류가 계속해서 발생한다.
//Slider의 value 안에서 in: 1.0...100.0으로 선언을 했는데, constant는 50으로 정의했기에 오류가 발생했다.
//constant(50.0)으로 변경하니 오류가 사라졌다.


## SwiftUI로 나만의 앱 만들기 5 : Solved Problems


오늘 강의는 초보자들이 흔히 하는 실수들에 대해 이야기합니다.

1.오타
>>value of type 'text' has no member 'blahblah'라는 에러 메시지는 blahblah라는 메소드가 text type에 존재하지 않는다는 말입니다.
2.띄어쓰기와 대문자 처리
>>SwiftUI는 굉장히 민감하기에 띄어쓰기와 대문자인 부분을 놓치면 에러가 납니다.
3.괄호 생략
>>괄호를 열면 반드시 닫아야 합니다. parentheses - 소괄호 / curly braces - 중괄호


<br>
빨간색 에러 메시지와 노란색 에러 메시지의 차이<br>
*빨간색: 앱을 구동시킬 수 없습니다. (fatal)
*노란색: 에러 발생을 경고합니다. (informative)



## SwiftUI로 나만의 앱 만들기 6 : Buttons and Actions

 +Call a Method: Syntax
 >>*Instance.methodName(parameters)*
 >>
 +Calling a Function: Syntax
 >>*functionName(parameters)*
 >>
 +Calling a Function: Example
 >>*print("Button pressed!")
 >>

and the CONSOLE!!

## SwiftUI로 나만의 앱 만들기 7 : SwiftUI State

State는 SwiftUi의 중요한 부분입니다.<br>
이는 Car Dashboard와 비슷한데, 여기에는 다음과 같은 정보들이 보여집니다.
1. Numerice Values: speed, fuel level, distance traveled 
2. Boolean Value: low oil, needs maintances

<br>
이 모든 것들이 합쳐져서, Car의 **STATE**를 보여줍니다.
<br>
운전자의 움직임에 따라,
+ 엑셀을 밟으면
+ 차는 더 빨리 나갈 것이고
+ Dashboard는 update됩니다.
<br>
내부 상황에도 변화가 생깁니다.
+ 차는 가스를 태울 것이고,
+ Dashboard는 update됩니다.

<br>
<h3>*STATE나 DASHBOARD가 sync가 맞지 않으면? 큰 문제가 발생합니다!!*</h3>
<br>
이렇게 개발자가 잘 사용할 수 있게 도와주는 것이 바로 이 'STATE'입니다.

<br>
이제 실제 어떻게 사용하는지 알아봅시다.
```swift
//
//  ContentView.swift
//  Bullseye
//
//  Created by yoosoony on 2021/04/27.
//

import SwiftUI

struct ContentView: View {
    
    //the pop up alert가 visible 여부의 상관없이 선언
    //@STATE: this code means 'we want SwiftUI to automatically recompute the body'
    //private: this variable is private to content view and other objects and other structures, should not be able to access it.
    //var: this variable means 'can be change'
    //이름 적고
    //: type
    //= value
    
    @State private var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("PUT THE BULLSEYE \nAS CLOSE AS YOU CAN DO\n🤪")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
                
            HStack {
                Text("1").bold()
                Slider(value: .constant(50.0), in: 1.0...100.0)
                Text("100").bold() 
            }
            Button(action: {
                print("hello, there")
                //self: this랑 비슷한 것 같아
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible,
                   content: {
                    return Alert(title: Text("Hello there and there"),
                    message: Text("this is my first pop up"),
                    dismissButton: .default(Text("Awesome!")))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
}

```
<br>
automatic previewing = option + cmd + P
play = cmd + R
<br>

**option + click을 하면 해당 코드에 대한 정보를 얻을 수 있습니다.**

이제 안에 있는 Slider를 움직이게 하기 위해 원래 주었던 .constant(50.0)을 지우고<br>
State를 선언한다.
```swift
@State private var sliderValue: Double = 50.0
```
<br>
그리고 밑의 .constant(50.0)을 지우고, 위에 선언한 var을 binding합니다.
```swift
Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100").bold() 
```

## SwiftUI로 나만의 앱 만들기 8 : Strings

String Interpellation : placeholder 기능을 사용할 수 있습니다.

```swift
"Hello, \(name)!"

//will be "Hello, Ray!"
```

<br>
해당 기능을 통해, slider가 가진 value값을 print out할 수 있습니다.
```swift
Button(action: {
                print("hello, there")
                //self: this랑 비슷한 것 같아
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible,
                   content: {
                    return Alert(title: Text("Hi, there?"),
                    message: Text("The Slider's value is \(self.sliderValue)."),//period(.) end를 나타내는 듯?
                    dismissButton: .default(Text("RG!")))
        })
```

