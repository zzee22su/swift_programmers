import UIKit

//Lv.0 - 짝수의 합
func solution(_ n:Int) -> Int {
    var sum: Int = 0;
    
    for i in 1...n  {
     if(i%2 == 0) {
        sum += i
        }
    }
    return sum
}

solution(10)

//Lv.0 - 배열의 평균 값
func average(_ numbers:[Int]) -> Double {
    var sum: Int = 0;
    for i in 0...numbers.count-1 {
        sum += numbers[i]
    }
    return Double(sum)/Double(numbers.count)
}

var num: [Int] = [1,2,3]

average(num)


//Lv.0 - 양꼬치 (서비스가 있는 음식 계산)
func solution12(_ n:Int, _ k:Int) -> Int {
    var service: Int = 0
    var total: Int = 0
    
    if(n >= 10) {
        service = n/10
    }
    total = n*12000 + (k-service)*2000
    return total
}


