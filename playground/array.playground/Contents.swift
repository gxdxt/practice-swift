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
