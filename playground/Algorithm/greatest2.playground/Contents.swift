import Foundation

func solution(_ numbers:[Int]) -> String {
    let sorted: [Int] = numbers.sorted{ Int("\($0)\($1)")! > Int("\($1)\($0)")! }
    if sorted[0] == 0 {
        return "0"
    }
    sorted
    return sorted.reduce("") {
        $0 + "\($1)"
    }
    //reduce("", { (s1: Int, s2: Int) -> String in return "\(s1)" + "\(s2)" }
    //reduece("") { (s1: Int, s2: Int) -> String in return "\(s1)" + "\(s2)" }
    //reduce("") { (s1, s2) in "\(s1)" + "\(s2)" }
    //reduce("") { $0 + "\($1)" }
}

solution([3, 30, 34, 5, 9])
