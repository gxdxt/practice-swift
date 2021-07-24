import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var right1: Int = 0
    var right2: Int = 0
    var right3: Int = 0
    var a: [Int] = [1, 2, 3, 4, 5]
    var b: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    var c: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var result: [Int : Int] = [:]
    for i in 0..<answers.count {
        a.insert(a[i], at: i+5)
        b.insert(b[i], at: i+8)
        c.insert(c[i], at: i+10)
        if answers[i] == a[i] {
            right1 += 1
        }
        if answers[i] == b[i] {
            right2 += 1
        }
        if answers[i] == c[i] {
            right3 += 1
        } else {
            continue
        
        }
    }
    result.updateValue(right1, forKey: 1)
    result.updateValue(right2, forKey: 2)
    result.updateValue(right3, forKey: 3)
    result.sorted(by: >)
    
    return []
}

solution([1,3,2,4,2])

