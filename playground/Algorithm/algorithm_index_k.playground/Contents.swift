import Foundation

func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    
    // 1.array 자르는 함수
    var Results: [Int] = []
    //commands에 있는 배열들의 모든 첫 번째 인자와 두 번째 인자
    for i in 0 ..< commands.count {
        let From: Int = commands[i][0] - 1
        let To: Int = commands[i][1] - 1
        
        let sliceArray = array[From ... To]
        
        // 2.자른 array sort하는 함수
        let sortedSliceArray = sliceArray.sorted()
        
        // 3.sort된 array index 찾는 함수
        let index: Int = commands[i][2] - 1
        let Result: Int = sortedSliceArray[index]
        
        Results.append(Result)
    }
    
    return Results
}
