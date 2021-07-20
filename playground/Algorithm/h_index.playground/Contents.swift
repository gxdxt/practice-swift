import Foundation

func solution(_ citations:[Int]) -> Int {
    let total: Int = citations.count
    var many: Int?
    var countUp: Int = 0
    var countDown: Int = 0
    var nominateIndex: [Int] = []
    for i in 0..<total {
        many = citations[i]
        for j in 0..<total {
            if many! < citations[j] {
                countDown += 1
            } else {
                countUp += 1
            }
        }
        if countUp == countDown {
            nominateIndex.append(many!)
        } else {
            continue
        }
        countUp = 0
        countDown = 0
    }
    
    
    return nominateIndex.max()!
}

solution([3, 0, 6, 1, 5])
