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

//Lv.0 - 중복된 숫자 개수
func solution13(_ array:[Int], _ n:Int) -> Int {
    var same: Int = 0
    for i in 0...array.count-1 {
        if(array[i] == n) {
            same += 1
        }
    }
    return same
}

solution13(num, 2)

//Lv.0 - 머쓱이보다 키 큰 사람
func solution14(_ array:[Int], _ height:Int) -> Int {
    var person: Int = 0
    for i in 0...array.count-1 {
        if(array[i] > height) {
            person += 1;
        }
    }
    return person
}

solution14(num, 0)

//Lv.0 - 점의 위치 구하기
func solution15(_ dot:[Int]) -> Int {
    var x: Int = 0
    var y: Int = 0
    var result: Int = 0;
    
    x = dot[0]
    y = dot[1]
    
    if(x > 0 && y > 0) {
        result = 1
    } else if (x < 0 && y > 0) {
        result = 2
    } else if (x < 0 && y < 0) {
        result = 3
    } else if (x > 0 && y < 0) {
        result = 4
    }
    return result
}

solution15([5, -7])

//Lv.0 - 배열 뒤집기
func solution16(_ num_list:[Int]) -> [Int] {
    var temp: [Int] = []
    
    for i in stride(from: num_list.count-1, through: 0, by: -1) {
        temp.append(num_list[i])
    }
        
    return temp

}

solution16([1,2,3,4,5])
