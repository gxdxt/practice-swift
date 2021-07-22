import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var right1: Int = 0
    var right2: Int = 0
    var right3: Int = 0
    var a: [Int] = [1, 2, 3, 4, 5]
    var b: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    var c: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var result: [Int] = []
    for i in 0..<answers.count {
        a.insert(a[i], at: i+5)
        b.insert(b[i], at: i+8)
        c.insert(c[i], at: i+10)
        switch answers[i] {
        case a[i] : right1 += 1
        case b[i] : right2 += 1
        case c[i] : right3 += 1
        default : continue
        }
    }
    result.append(right1)
    result.append(right2)
    result.append(right3)
    result.sort(by: >)
    ㅌㅈ
    
    return result
}

solution([1,2,3,4,5])

