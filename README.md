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

