import UIKit

// set

// 1. 순서가 없고
// 2. 유일한 값을 가진다.

// 중복이 없는 유니크한 item을 관리할 때 사용한다.
var someArray: Array<Int> = [1, 2, 3, 1]
var someSet: Set<Int> = [1, 2, 3, 1]

// isEmpty, count 둘 다 있다
someSet.isEmpty
someSet.count

// contains
someSet.contains(4)
someSet.contains(1)

//------여기까지 Collection 공통 prop

//insert
someSet.insert(5)
someSet

//remove
someSet.remove(1)
someSet


