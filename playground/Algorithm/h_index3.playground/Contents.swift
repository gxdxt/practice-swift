import Foundation

//어떤 과학자가 발표한 논문 n편 중, h번 이상 인용된 논문이 h편 이상이고 나머지 논문이 h번 이하 인용되었다면 h의 최댓값이 이 과학자의 H-Index입니다.
func solution(_ citations:[Int]) -> Int {
    let sorted: [Int] = citations.sorted(by: >)
    var result: [Int] = []
    for i in 0..<citations.count {
        if i+1 >= sorted[i] {
            result.append(sorted[i])
        } else {
            continue
        }
    }
    result
    
    
    return result==[] ? 0 : result[0]
}
solution([1])
solution([4, 4, 4, 4, 3])
solution([10, 100]) // 이 반례가 있었다,,,
