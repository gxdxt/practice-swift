import Foundation
print(1)
func squared(_ i: Int, _ j: Int) -> Int {
    if j == 0 {
        return 1
    }
    
    return i * squared(i, j-1)
}

squared(2, 3)

func solution(_ numbers:[Int]) -> String {
    //numbers의 있는 숫자들을 조합하여 양의 정수 만들기
    //애초에 String으로 받아서 이어 붙이는 게 제일 나을듯
    var StringNumbers: [String] = []
    for i in 0..<numbers.count {
        StringNumbers.append(String(numbers[i]))
    }
    var Combined: [String] = []
    var combined: String = ""
    for i in 0..<numbers.count {
        combined += StringNumbers[i]
    }
    Combined.append(combined)
    //Array의 순서를 계속해서 바꾸면서 만들 줄 알아야해
    
    // 10과 거리가 가까운 만큼
    // 1의 자리는 10과
    // 10의 자리는 100과
    // 100의 자리는 1000과
    var distanceFromNine: [Int : Int] = [:]
    for i in 0..<numbers.count {
        var y: Int
        switch numbers[i]/10 {
        case 0 :
            y = 10 - numbers[i]
            distanceFromNine.updateValue(y, forKey: numbers[i])
        case 1 :
            y = 100 - numbers[i]
            distanceFromNine.updateValue(y, forKey: numbers[i])
        default:
            y = 1000 - numbers[i]
            distanceFromNine.updateValue(y, forKey: numbers[i])
        }
    }
    
    
    //배열에 넣기
    
    //가장 큰 수 구하기
    //근데 가장 큰 수 구하는 거라면 array.sorted해서 뒤에서부터 넣으면 끝 아냐?
    let sortedNumbers = numbers.sorted(by: >)
    //가장 높은 자리 값이 9면 맨 앞에
    var greatest: Int = 0
    for i in 0..<sortedNumbers.count {
        greatest += sortedNumbers[sortedNumbers.count-1-i] * (squared(10, i))
    }
    let result: String = String(greatest)
    
    return result
}

solution([3, 30, 34, 5, 9])
//엉키네,,,


