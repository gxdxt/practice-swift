import Foundation

func solution(_ citations: [Int]) -> Int{
    let sorted: [Int] = citations.sorted(by: >)
    for i in 0..<sorted.count {
        if i >= sorted[i] {
            return i
        }
    }
    return sorted.count
}

solution([10, 100])
