import Foundation

func solution(_ numbers:[Int]) -> String {
    //모든 경우의 수
    
    
    //string으로 변경
    var stringNum: [String] = []
    for i in 0..<numbers.count {
        //i * i-1 * i-2 ... * 1의 경우의 수로 갯수가 생성될껀데
        stringNum.append(String(numbers[i]))
    }
    
    
    //stringBuilder
    return ""
}
