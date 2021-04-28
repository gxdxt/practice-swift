# swift

## SwiftUI vs UIKit


### SwiftUI

* SwiftUI can visualize my work
* SwiftUI is good for team-based developement
* SwiftUI can port MacOS, watchOS, TvOS
* SwiftUi is plain fun ?


### Reasons keep using UIKit instead of SwiftUI

* SwiftUI is working only on iOS 13 or later
* UIKit is much mature than SwiftUI
* Many companies already used their Legacy Code by UIKit


__그러니까, 둘 다 공부해야 한다.__



해당 과정은 5개의 이정표를 갖는다.

1. Your first iOS & SwiftUI app : an app from scratch
2. Your first iOS & SwiftUI app : polishing the app
3. Programming in Swift : Fundamentals
4. Your second iOS & SwiftUI app
5. Programming in Swift : Functions & Types

그럼 시작!

## SwiftUI로 나만의 앱 만들기 1 : MVP와 Nice to Haves

먼저, 강의에서 예시로 보여준 Bull's eye라는 앱의 기능과 UI를 보고 어떠한 기능들이 필요한지 생각해서 to-do-list를 작성해야 합니다.


### TO-DO-LIST

* 중앙 상단에 랜덤으로 등장하는 숫자가 출력되게 해야 합니다.
* 정중앙에 1부터 100까지의 수치를 보여주는 직선을 출력해야 합니다.
* Hit me! 라는 버튼을 누르면 상단에 랜덤으로 등장하는 숫자와 이용자의 숫자를 비교합니다.
* 그 값이 같다면 200점을 부여하고 멀어질 수록 적은 점수를 부여합니다.
* 해당 값을 팝업창을 통해 화면에 띄웁니다.
* 좌측 하단에 이용자의 누적 점수를 출력합니다.
* 우측 하단에 이용자의 단계를 출력합니다.
* 좌측 상단에 게임을 리셋하는 버튼을 출력합니다.
* 이 정도가 예시로 보여준 게임의 개괄을 분석하고, 해야하는 일들을 나열한 것입니다.



선생님이 제시하는 방법은 다음과 같습니다.

먼저, 2가지 리스트를 작성합니다.

* "필수적인" Minimal Viable Product as MVP
  * 기능 1
  * 기능 2
  * 기능 3
* "있으면 좋은"
  * 기능 1
  * 기능 2
  * 기능 3

MVP를 모두 완료한 후, 계속해서 "있으면 좋은" 기능들을 추가하는 것이 바람직합니다.

앞으로도 그렇겠지만, 처음 APP을 만들 땐 이런 식으로 계획을 수립하는 것이 좋습니다.

**어떻게 해야 하는지 몰라도, 무엇을 해야 하는지 작성하는 것이 우선입니다.**

### 선생님의 to-do-list는 다음과 같습니다.

1. Add an instructions label
2. Add a target label
3. Add a slider and make it go between the values 1 and 100
4. Add a "Hit me" button
5. Style the text like Luke's design
6. Show a popup when the user hit the button
7. Read the value of the slider when the user hit the button
8. Generate a random number for the target value
9. Calculate and display the score


오, 저와 유사한 부분들이 매우 많습니다!



### 다음은 선생님의 nice to haves list 입니다.

1. Implement multiple rounds
2. Implement restarting the game
3. Add the leaderboard screen
4. Make the app look pretty!

제가 써놓았던 부분들이 여기 속해 있는 것을 확인할 수 있습니다.

MVP에는 정말 살을 다 벗겨낸 '뼈'만 놓는다는 것을 알 수 있습니다.

## SwiftUI로 나만의 앱 만들기 2 : SwiftUI Views

첫 번째 강의에선 단순히 계획만 짰다면, 이번 강의에선 실제 APP 설계로 들어갑니다.

 

먼저 View가 무엇인지 이해해야 합니다.

 

여기서 이야기하는  View는 개발해야 하는 모든 것입니다.

 


raywenderlich 강의 영상 캡처
즉, 모든 사용자의 인터페이스(Every user interfaces)를 'View'라고 칭합니다.

 

어떤 뷰들은 다른 뷰들의 Container로 사용되기도 합니다.

(여기 화면에선 화면 전체 뷰, 슬라이더 뷰 같은 것들이 Container로 사용됩니다.)

 

여기서 알 수 있는 것은, SwiftUI에선 다양한 형태의 View가 존재하는 것입니다.

Text
Slider
Button
Vertical Stack
Horizontal Stack
이러한 View들의 공통점은 모두 화면에 그려질 수 있다는 것(can be drawn on the screen)입니다.



이제 View들을 확인했으니 XCode를 실행합니다.

 

Xcode로 하는 첫 코딩이기 때문에, 완전 처음부터 코드를 작성하지 않고 자동으로 생성된 코드를 가지고 조금 변형하는 식으로 시작할 것입니다.

 

처음에는 무슨 이야기인지, 해당 코드가 어떠한 의미를 가지고 있는지 모를 수도 있습니다. 하지만 괜찮습니다.

**중요한 것은 진행되는 과정을 이해하고, 반복을 통해 몰랐던 부분들을 깨닫는 것입니다.**

 


Xcode를 실행한 후 새로운 Xcode 프로젝트를 생성합니다.


그 후 iOS 탭에 있는 App을 선택한 후, 다음으로 넘어갑니다.


프로젝트 이름을 정하고, Organization Identifier에는 유일한 경로를 지정해 줍니다.

 

프로젝트를 생성하고 나면, 기본값으로 생성되는 파일들이 있습니다.

 


ContentView.swift는 현재 만들고 있는 APP의 메인 화면을 담당합니다.


우측 상단에 있는 곳에 Resume 버튼을 클릭하면, 현재 입력된 코드로 출력되는 화면을 보여줍니다.


이제,

현재 보이는 기본 화면을 통해 각각의 코드들이 어떠한 의미를 가지고 있는지 가볍게 살펴봅시다.
```swift
struct ContentView: View { //view 형태의 ContentView를 생성하고
    var body: some View { //그 안에 some View 형태의 body를 만들고 **some View는 모르는 개념
        Text("Hello, world!") // 그 안에 Text View를 넣고
            .padding() // Text View에 padding값을 부여합니다.
    }
}
```
조금씩 고쳐볼 건데, 먼저 우측 화면을 앞으로 'canvas'라고 칭합니다.

해당 캔버스를 클릭해보면, 부분에 맞는 코드들도 함께 좌측에 표시됩니다.


Hello, world!를 클릭하자, Text부분에 블럭이 생겼습니다
게임을 위한 Text를 추가합니다.

>이모티콘은 ctrl+cmd+spacebar로 추가합니다.
>줄 바꿈을 위해선 \n을 추가합니다. 큰 따옴표 안에서도 작동을 하네요,,, 신기방기
다음으로 또 다른 View Text를 추가해줍니다.

이를 위해서 우측 상단에 있는 Library 추가 버튼('+' 모양)을 클릭합니다.

그리고 화면으로 끌어와 원하는 곳에 배치합니다.

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
같은 방식으로 Slider View와 Button View 등을 배치 해줍니다.

>이때 조심해야 하는 것들은, 배치할 때 새로운 VStack View에 View를 배치할 것인지, 기존의  VStack View에 View를 추가할 것인지 위치를 잘 조절해야 합니다. 배치에서 어려울 때에는 Canvas말고 Code 쪽으로 배>치를 해주어도 됩니다.
>이제 기본적인 to-do-list를 모두 완료했습니다.

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
## SwiftUI로 나만의 앱 만들기 3 : SwiftUI View Modifier

저번 강의에서 배치한 to-do-list만 가지고는, 매력적인 앱이라고 할 수 없습니다.

오늘 해야할 것은 SwiftUI에 내장되어 있는 **Modifiers를 통해 앱에 '매력'을 추가**할 것입니다.

```swift
Text("PUT THE BULLSEYE \nAS CLOSE AS YOU CAN DO\n🤪")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
```
modifier를 통해 기본적인  Text View가 Style을 갖게 되었습니다.

하지만 이때 꼭 염두해야 하는 것은, 해당 Style들은 누적되는 것이 아니라 독립적으로 부여됩니다.

캡처한 이미지를 예로 들자면, Text에 opacity(0.5) modifier를 통해 투명도가 0.5가 되었습니다. 그 후, border modifier를 통해 테두리가 생겼는데, 이 때 테두리는 투명도과 관련이 없습니다.


하지만 **순서는 중요합니다.**

만약, border modifier가 먼저 나오고 opacity가 후에 추가된다면, border 역시 투명도를 가지게 됩니다.

>>오류가 나거나, 개념에 대해 잘 모를 때, Help 탭에 있는 'Developer Documentation'을 클릭하거나 해당 단축키를 눌러 문서를 확인하는 것도 도움이 될 수 있습니다.
>>해당 문서에는 특정 modifier가 적용되는 범위에 대해 알려줍니다.

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
