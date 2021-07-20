import Foundation

func solution(_ citations:[Int]) -> Int {
    let sorted: [Int] = citations.sorted(by: >)
    
    return citations.count%2 == 0 ? sorted[citations.count/2] : sorted[(citations.count+1)/2-1]
}

solution([3, 0, 6, 1, 5])
