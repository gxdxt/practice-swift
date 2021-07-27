import Foundation

func soluction(_ answer: [Int]) -> [Int] {
    
    let student1 = [1, 2, 3, 4, 5]
    let student2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let student3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var result = [0, 0, 0]
    var final: [Int] = []
    for i in 0..<answer.count {
        let one = i % student1.count
        let two = i % student2.count
        let three = i % student3.count
        
        if answer[i] == student1[one] {
            result[0] += 1
        }
        if answer[i] == student2[two] {
            result[1] += 1
        }
        if answer[i] == student3[three] {
            result[2] += 1
        }
        
        let max = result.max()
        for i in 0..<result.count {
            if max == result[i]{
                final.append(i+1)
            }
           
        }
    }
    
    return final
}


