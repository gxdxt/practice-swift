import UIKit
// Collection은 항상 커피를 담는 캐리어를 생각
// 커피를 담는 캐리어에는 짜장면을 담을 수 없듯, collection 안에 item들은 통일된 type을 가진다.
// 물론 캐리어가 '음식'을 담는 캐리어라면, 커피와 짜장면을 담을 수도 있다.


// array를 쓰면 좋은 경우
// 1. 순서가 있는 item
// 2. item의 순서를 알면 유용할 때

//짝수를 담는 통을 만든다.
var evenNumbers: [Int] = [2, 4, 6, 8]
//let evenNumbers2: Array<Int> = [2, 4, 6, 8]

evenNumbers.append(10) //array를 let으로 선언하니 item 삽입도 안된다.
//여러 개의 elements를 추가
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])

print(evenNumbers.isEmpty)

print(evenNumbers.count)

print(evenNumbers.first) //이거 출력하면 optional로 찍힌다.
//있을 수도 있고, 없을 수도 있어서

if let firstElement = evenNumbers.first {
    print("first item is = \(firstElement)")
} else {
    print("first item is nil")
}

//최대/최소값
evenNumbers.min()
evenNumbers.max()

//index 가져오기
evenNumbers[0]
evenNumbers[1]
evenNumbers[9]

// range를 집어넣기
let firstThree = evenNumbers[0...2]

//값들 가지고 있는 것 확인
evenNumbers.contains(3)
evenNumbers.contains(4)

//item 추가하기
evenNumbers.insert(0, at: 0)

//item 제거하기
evenNumbers.remove(at: 0)

//특정 item update
evenNumbers[0] = -2
evenNumbers[0...2] = [-2, 0, 2]


//순서 변경
evenNumbers.swapAt(0, 1)

evenNumbers

//빈 통으로 만들기
//evenNumbers.removeAll()
//evenNumbers = []

for num in evenNumbers {
    print(num)
}

//해당 값 index 가져오기
for (index, num) in evenNumbers.enumerated(){
    print("\(index) : \(num)")
}

//(실제로 사라지진 않고) 현재 앞에 3개를 털고 출력
let firstThreeRemoved = evenNumbers.dropFirst(3)
print(firstThreeRemoved)

//(실제 array에서 값은 사라지지 않고) 맨 뒤 빼고 출력
let lastRemoved = evenNumbers.dropLast()
print(lastRemoved)

//앞에 3개만 출력
let firstThree2 = evenNumbers.prefix(3)
//뒤에 3개만 출력
let lastThree = evenNumbers.suffix(3)

// ******진짜 알아야 하는 것******

// 1. isEmpty
// 2. count
// 3. 해당 index 접근법 (evenNumbers[3])
// 4. 해당 index 빼오는 법 (for (index, num) in evenNumbers.enumerated() { print("\(index) : \(num)|) }

