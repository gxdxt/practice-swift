import Foundation

func solution(_ numbers:String) -> Int {
    //String -> Int로 casting하고 split
    //17 >> 1, 7, 17, 71
    Array(numbers)[1]
    //와 Split 필요 없이 그냥 Array 안에 집어 넣으면 하나씩 들어가네,,,
    let arrayNum = Array(numbers)
    //위에는 되는데, 왜 빈 Array로 선언한 var이나 let에는 못넣는거지?
    
    
    arrayNum[0]
    
    //먼저 만들 수 있는 모든 숫자들 조회
    var allKindOfNum: [Int] = []
    var targetNum: Int?
    var resultNum: Int?
    for i in 0..<arrayNum.count{
        targetNum = Int(String(arrayNum[i]))
        for j in 0..<arrayNum.count{
            if i == j {
                continue
            }
            resultNum = targetNum! * Int(String(arrayNum[j]))!
            allKindOfNum.append(resultNum!)
        }
    }
    allKindOfNum
    
    
    //소수인지 판별
    
    //소수일 경우, count += 1
    
    
    return 0
}

solution("13244450")
//문제 설명
//한자리 숫자가 적힌 종이 조각이 흩어져있습니다. 흩어진 종이 조각을 붙여 소수를 몇 개 만들 수 있는지 알아내려 합니다.
//
//각 종이 조각에 적힌 숫자가 적힌 문자열 numbers가 주어졌을 때, 종이 조각으로 만들 수 있는 소수가 몇 개인지 return 하도록 solution 함수를 완성해주세요.
//
//제한사항
//numbers는 길이 1 이상 7 이하인 문자열입니다.
//numbers는 0~9까지 숫자만으로 이루어져 있습니다.
//"013"은 0, 1, 3 숫자가 적힌 종이 조각이 흩어져있다는 의미입니다.
//예제 #1
//[1, 7]으로는 소수 [7, 17, 71]를 만들 수 있습니다.
//
//예제 #2
//[0, 1, 1]으로는 소수 [11, 101]를 만들 수 있습니다.
//
//11과 011은 같은 숫자로 취급합니다.

