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

//Lv.0 - 배열 원소의 길이
func solution17(_ strlist:[String]) -> [Int] {
    var temp: [Int] = []

    for i in 0...strlist.count-1 {
        temp.append(strlist[i].count)
    }
    return temp
}

var test: [String] = ["I","Love","You"]

solution17(test)

//Lv.0 - 가위 바위 보
func solution11(_ rsp:String) -> String {
    var result: String = ""
    
    for i in rsp.indices {
        switch(String(rsp[i])) {
        case "2":
            result += "0"
        case "0":
            result += "5"
        case "5":
            result += "2"
        default:
            print("알맞지 않는 문자열입니다.")
            break
        }
    }
    return result
}

print(solution11("205"))

//Lv.0 - 배열 회전
func solution1(_ numbers:[Int], _ direction:String) -> [Int] {
    var num: [Int] = []
    
    switch(direction) {
    case "right":
        num.append(numbers[numbers.count-1])
        for i in 0...numbers.count-2 {
            num.append(numbers[i])
        }
    case "left":
        for i in 1...numbers.count-1 {
            num.append(numbers[i])
        }
        num.append(numbers[0])
    default:
        print("알맞지 않은 방향입니다.")
        break
    }
    return num
    
}
print(solution1([5,6,1,2,3], "right"))
//print(solution1([4, 455, 6, 4, -1, 45, 6], "left"))

//Lv.0 - 369
func solution2(_ order:Int) -> Int {
    let temp: String = ""
    var sum: Int = 0
    
    print(temp.indices)
    
    print(temp)
    for i in temp.indices {
        switch(String(temp[i])) {
        case "3":
            sum += 1
        case "6":
            sum += 1
        case "9":
            sum += 1
        default:
            continue
        }
    }
    return sum
}

print(solution2(2222369))

//Lv.0 - 평행
func solution3(_ dots:[[Int]]) -> Int {
    
    var mom: [Int] = []
    var son: [Int] = []
    var gradient: [Double] = []
    
    for i in 0...dots.count-1 {
        for j in 0...dots.count-1 {
            var m: Int = 0
            m = dots[i][0] - dots[j][0]
            if(m != 0) {
                mom.append(m)
            }
        }
    }
    print(mom)
    
    for i in 0...dots.count-1 {
        for j in 0...dots.count-1 {
            var s: Int = 0
            s = dots[i][1] - dots[j][1]
            if(s != 0) {
                son.append(s)
            }
        }
    }
    
    print(son)

    
    for i in 0...mom.count-1 {
        
        if(son[i] > 0 && mom[i] > 0) {
            gradient.append(Double(son[i])/Double(mom[i]))
        }
    }
    print(gradient)
    
    let changeSet: Set = Set(gradient)
    
    if(gradient.count != changeSet.count) {
        return 1
    } else {
        return 0
    }
}

solution3([[1, 4], [9, 2], [3, 8], [11, 6]])
//solution3([[3, 5], [4, 1], [2, 4], [5, 10]])

//Lv.0 - 옹알이
func solution4(_ babbling:[String]) -> Int {
    print("옹알이")
    let original: [String] = ["aya", "ye", "woo", "ma"]
    var count: Int = 0

    for i in 0...babbling.count-1 {
        var temp = babbling[i]
        for j in 0...original.count-1 {
            temp = temp.replacingOccurrences(of: original[j], with: "")
        }
        if temp.contains(where: {$0 != "!"}) {

        } else {
            count += 1
        }
    }
    return count
    
}
//solution4(["aya", "yee", "u", "maa", "wyeoo"])
//solution4(["ayaye", "uuuma", "ye", "yemawoo", "ayaa"])

//Lv.0 - 치킨 쿠폰
//서비스 치킨구하기
func solution5(_ chicken:Int) -> Int {
    print("치킨 쿠폰")
    var coupon: Int = 0
    var service: Int = 0
    
    if chicken > 0 {
        coupon = chicken
    }

    while coupon >= 10 {
        //서비스 개수
        service += coupon/10
        coupon = coupon%10 + coupon/10
    }

    
    return service
}

solution5(1300)


//Lv.0 - 가장 큰 수 찾기
func solution6(_ array:[Int]) -> [Int] {
    var result: [Int] = []
    
    //배열 중 가장 큰 값 뽑기
    if let max = array.max() {
        result.append(max)
        //가장 큰 값이 위치한 인덱스 찾기
        result.append(array.firstIndex(of: max)!)
    }
    return result
}

solution6([1, 8, 3])

//Lv.0 - 연속된 수의 합
func solution(_ num:Int, _ total:Int) -> [Int] {
    
    
    
    return []
}


//Lv.0 - 다음에 올 숫자
func solution8(_ common:[Int]) -> Int {
    //최소 3개원소로 이루워진 값이 들어옴
    //공차로 등차수열인지 확인
    var result: Int = 0
    if(common[1]-common[0] == common[2]-common[1]) {
        //마지막 원소 값에 공차를 더하여 리턴
        if let last = common.last {
            result = last + common[1]-common[0]
        }
    } else { //등차수열 혹은 등비수열이 아닌 경우는 없으므로
            //등차수열이 아니라면 곧 등비수열이다.
        if let last = common.last {
            result = last * common[1]/common[0]
        }
    }
    return result
}

//solution8([1, 2, 3, 4])
solution8([2, 4, 8])


//Lv.0 - 분수의 덧셈
func solution9(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    var result: [Int] = []
    //분모의 곱으로 덧셈
    let boonmo: Int = denom1*denom2
    let boonja: Int = numer1*denom2 + numer2*denom1
    let value: Int = gcd(boonmo, boonja)
    
    result.append(boonja/value)
    result.append(boonmo/value)
    
    return result
}

//유클리드 호제법
func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

solution9(1, 2, 3, 4)



/*:Lv.0 - 세균 증식
 > 세균은 1시간에 두배만큼 증식, 처음 세균 7마리(n)가 15시간(t) 경과했을 때 세균의 수
 - 1시간 후 세균 수 : 14마리 → 2^1*7
 - 2시간 후 세균 수 : 14마리 → 2^2*7
 - 3시간 후 세균 수 : 14마리 → 2^3*7
 - t시간 후 세균 수 : 14마리 → 2^t*7
 
    pow(x: Decimal, y: Int)는 Decimal로 반환된다.이 값은 Int로 형변형하여 저장 할 수 없어서
    pow(lhs: Float, rhs: Float)을 사용하여 마지막에 Int로 형변형했다.
 */

//
func solution10(_ n:Int, _ t:Int) -> Int {
    return Int(pow(Float(2), Float(t)))*n
}

//solution10(2,10)
solution10(7,15)

/*:Lv.0 - 로그인 성공?
 - id 일치 + pw 일치 = login
 - id 일치 + pw 불일치 = wrong pw
 - id 불일치 = fail
 
    주의❗️
    if db[i][0] == id_pw[0] {...} else { result = "fail" } 로 구현할 경우
    db 내에 입력한 아이디와 일치하는 값이 존재하더라도 db 마지막 원소값이 입력한 아이디와 일치하지 않을 경우 무조건 fail이 리턴된다.
 */

func solution12(_ id_pw:[String], _ db:[[String]]) -> String {
    var result = "fail"

    for i in 0...db.count-1 {
        //아이디 일치
        if db[i][0] == id_pw[0] {
            //비밀번호 일치
            if db[i][1] == id_pw[1] {
                result = "login"
            } else {
                //비밀번호 불일치
                result = "wrong pw"
            }
        }
    }
    return result
}

//solution12(["meosseugi", "1234"], [["rardss", "123"], ["yyoom", "1234"], ["meosseugi", "1234"]])
solution12(["programmer01", "15789"], [["programmer02", "111111"], ["programmer01", "1145"], ["programmer00", "134"]])
//solution12(["programmer01", "15789"], [["programmer02", "111111"], ["programmer00", "134"], ["programmer01", "1145"]])
//solution12(["rabbit04", "98761"], [["jaja11", "98761"], ["krong0313", "29440"], ["rabbit00", "111333"]])


//:Lv.0 - 안전지대
func solution14(_ board:[[Int]]) -> Int {
    let all = board.count * board.count
    var landmine: [[Int]] = []
    var dangerousZone: [[Int]] = []
    var removeDulplicates: Set<[Int]>
    
    //지뢰 위치 찾기
    for i in 0...board.count-1 {
        for j in 0...board.count-1 {
            if(board[i][j] == 1) {
                landmine.append([i,j])
            }
        }
    }

    
    //지뢰개수가 all 개수와 같다면 모두 지뢰인 것
    if all != landmine.count {
        //위험구역 찾기
        let x = [-1, -1, -1, 0, 1, 1, 1, 0]
        let y = [0, 1, -1, 1, -1, 1, 0, -1]
        
        for n in landmine {
            for i in 0...x.count-1 {
                let dangerX = n[0] + x[i]
                let dangerY = n[1] + y[i]
                //board영역 벗어날경우 dangerousZone에 추가 하지 않음.
                if dangerX < 0 || dangerX >= board.count || dangerY < 0 || dangerY >= board.count {
                    continue
                }
                
                //지뢰가 위치해 있는 곳이 아니라면 지뢰위험지역으로 추가
                //지뢰가 위치한 곳을 추가하지 않기 위함
                //지뢰는 1, 지뢰가 없는 곳은 0
                if board[dangerX][dangerY] == 0 {
                    dangerousZone.append([dangerX, dangerY])
                }
                
            }
        }

        removeDulplicates = Set(dangerousZone)
        return all-removeDulplicates.count-landmine.count
    }
    return 0
}

//solution14([[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 0, 0], [0, 0, 0, 0, 0]])
solution14([[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 1, 0], [0, 0, 0, 0, 0]])
//solution14([[1]])
//solution14([[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]])


/*:Lv.0 - 특이한 정렬
 */
func solution15(_ numlist:[Int], _ n:Int) -> [Int] {
    var temp: [Int] = []
    var result: [Int] = []
    var arrange: [Int : Int] = [:]
    
    //음수를 양수로 변환
    for i in 0...numlist.count-1 {
        if numlist[i]-n < 0 {
            temp.append((numlist[i]-n) * -1)
        } else {
            temp.append(numlist[i]-n)
        }
    }
    
    //key값에는 temp의 인덱스를, value에는 temp값(numlist[원소값]-n)을 저장
    for i in 0...temp.count-1 {
        arrange[i] = temp[i]
    }
        
    //거리 값이 같으면 numlist 인덱스로 접근해서 정수값을 비교
    let arrangeResult = arrange.sorted{ (first, second) in
        if first.value == second.value {
            return numlist[first.key] > numlist[second.key]
        }
        return first.value < second.value
    }
    
    //정렬된 값의 key를 기준으로 저장 (key에는 numberslist의 인덱스가 저장되어있기 때문)
    for i in 0...arrangeResult.count-1 {
        result.append(numlist[arrangeResult[i].key])
    }
    
   return result
}

//solution15([1, 2, 3, 4, 5, 6], 4)
solution15([10000,20,36,47,40,6,10,7000], 30)



//: Lv.0 - 컨트롤 제트
func solution16(_ s:String) -> Int {
    var temp = s.split(separator: " ")
    var result: Int = 0

    //Z가 위치한 인덱스 저장
    var indexZ = temp.indices.filter{temp[$0] == "Z"}

    //Z 존재유무 판단
    if indexZ.count >= 1 {
        //Z가 위치해 있는 곳 + Z 앞에 위치해 있는 값을 0으로 세팅
        for i in 0...indexZ.count-1 {
            temp[indexZ[i]] = "0"
            temp[indexZ[i]-1] = "0"
        }
    }
    
    //가공한 temp값을 더함
    for i in 0...temp.count-1 {
        if let r = Int(temp[i]) {
            result += r
        }
    }
    
    return result
}

func solution16_1(_ s:String) -> Int {
    let temp = s.split(separator: " ")
    var result: Int = 0
    
    //temp값을 모두 더하되 Z 앞의 값을 빼줌.
    for i in 0...temp.count-1 {
        if temp[i] == "Z" {
            if let k = Int(temp[i-1]) {
                result -= k
            }
            continue;
        }
        
        if let k = Int(temp[i]) {
            result += k
        }
    }
    
    return result
}



solution16("1 2 Z 3")
//solution16("10 20 30 40")
//solution16("10 Z 20 Z 1")
//solution16("10 Z 20 Z")
//solution16("-1 -2 -3 Z")

//: Lv.0 - 영어가 싫어요
func solution18(_ numbers:String) -> Int64 {
    
    let define: [String:String] = ["zero" : "0", "one" : "1", "two" : "2", "three" : "3", "four" : "4", "five" : "5", "six" : "6", "seven" : "7", "eight" : "8", "nine" : "9"]
    var result: String = numbers
    
    //replacingOccurrences는 모든 define에 대해 한 번씩 변환하고 그 결과를 덮어씌운다. -> 즉, 초기값인 ""인 변수에 변환한 값을 저장해 봤자 마지막으로 변환한 값만 저장된다.
    //ex)"onefourzerosixseven"을 넘겨주면 replacingOccurrences 마지막 결과값은 onefourzerosix7가 된다.
    for i in define {
        result = result.replacingOccurrences(of: i.key, with: i.value)
    }
    
    if let resultConvert = Int64(result) {
        return resultConvert
    } else {
        return 0
    }
}

//solution18("onetwothreefourfivesixseveneightnine")
solution18("onefourzerosixseven")

//: Lv.0 - 중복된 문자 제거
func solution19(_ my_string:String) -> String {
    //my_string으로 넘어오는 String을 각각 저장해준다. ex) pe -> "p", "e"...
    let temp = Array(my_string)
    var result: String = ""
    
    for (index, element) in temp.enumerated() {
        //첫 번째 인덱스는 무조건 저장 -> 뒤에 중복된 값이 나왔을경우 맨 앞에 있는 값만 저장해야하므로
        if (index) != 0 {
            //현재 element가 이전에 저장해놓은 element값과 같다면 저장하지 않고 continue 처리
            if temp[0..<index].contains(element) {
                continue
            }
        }
        //결과값을 누적해서 저장시킨다
        result += String(element)
    }
    return result
}

//solution19("people")
solution19("We are the world")

//: Lv.0 - 중복된 문자 제거 (간편 ver.)
func solution19_1(_ my_string:String) -> String {
    var temp = Array(my_string)
    
       temp = temp.enumerated().filter({ (index, element) -> Bool in
           // 첫번째 원소는 유지하고, 나머지 중에서 첫번째 원소와 중복되지 않는 값만 남김
           return index == 0 || !temp[0..<index].contains(element)
       }).map({ $0.element })

       return String(temp)
}

solution19_1("We are the world")

//: Lv.0 - 문자열 밀기
func solution20(_ A: String, _ B: String) -> Int {
    var tempA = Array(A)
    var count: Int = 0
    
    //길이가 다르면 위치를 변경할 필요조차 없으니 바로 return 처리 해준다.
    if A.count != B.count {
        return -1
    }

    while String(tempA) != B {
        //마지막 값을 맨 앞자리로 위치 변경
        let last = tempA.removeLast()
        tempA.insert(last, at: 0)
        
        //A를 B로 만들 수 없는 경우 (A를 오른쪽으로 밀 수 있는 횟수는 A.count 뿐이다)
        if count == A.count {
            return -1
        }
        
        count += 1
    }
    
    return count
}
//solution20("hello","ohell")
//solution20("apple","elppa")
solution20("atat","tata")
//solution20("abc","abc")

//: Lv.0 - 문자열 밀기 (왼쪽으로 밀었을 경우)
func solution20_1(_ A: String, _ B: String) -> Int {
    var count = 0
    var tempA = Array(A)
    
    if A.count != B.count {
        return -1
    }
    
    
    while A != B {
        // 문자열 A를 한 칸씩 밀기
        let first = tempA.removeFirst()
        tempA.append(first)
        
        // 문자열 A를 문자열 B로 만들 수 없는 경우
        if count == A.count {
            return -1
        }
        count += 1
    }
    
    return count
}

//: Lv.0 - 최빈값 구하기
func solution21(_ array: [Int]) -> Int {
    var dic: [Int: Int] = [:]

    //딕셔너리는 중복을 허용하지 않는다
    //같은 원소가 들어오면 1을 더해주면서 세팅한다
    for i in array {
        dic[i, default: 0] += 1
    }

    //dic에서 가장 자주 나오는 값 찾기 (이전에 자주 나오는 값에 1씩 더해줬기 때문에 자주 나오는 값은 가장 큰 값이 된다)
    let maxCount = dic.values.max()!
    //최빈값이 같은 키 찾기
    let keys = dic.filter { $0.value == maxCount }.keys
    
    //최빈값이 여러개인 경우
    if keys.count > 1 {
        return -1
    } else {
        //아닌경우
        return keys.first!
    }
}

solution21([1, 2, 3, 3, 3, 4])
//print(solution21([1, 1, 2, 2]))
//solution21([1])




//: Lv.0 - 겹치는 선분의 길이 (결과 80점 -> 다시 풀어야 함 )
func solution22(_ lines:[[Int]]) -> Int {
    var startPoint: Int = 0
    var endPoint: Int = 0
    var overlap: [Int] = []
    var result: Int = 0
    
    for i in 0..<lines.count {
        
        if i == 2 {
            startPoint = max(lines[i][0],lines[0][0]) //시작점 중 큰 값 선택
            endPoint = min(lines[i][1],lines[0][1]) //끝점 중 작은 값 선택
        } else {
            startPoint = max(lines[i][0],lines[i+1][0]) //시작점 중 큰 값 선택
            endPoint = min(lines[i][1],lines[i+1][1]) //끝점 중 작은 값 선택
        }
        
        let temp = endPoint-startPoint
        
        if temp > 0 {
            overlap.append(temp)
        }
    }
    
    //3개의 선분이 모두 겹쳤을 경우
    if overlap.count == 3 {
        //겹치는 선분 길이 중 가장 큰 값을 찾아서 더한다
        if let maxIndex = overlap.firstIndex(of: overlap.max() ?? 0) {
            result += overlap[maxIndex]
        }
        //겹치는 선분 길이 중 가장 작은 값을 찾아서 더한다
        if let minIndex = overlap.firstIndex(of: overlap.min() ?? 0) {
            result += overlap[minIndex]
        }
        return result
    }
    
    for i in overlap {
        result += i
    }
    
    return result
}

//solution22([[0, 1], [2, 5], [3, 9]])
//solution22([[-1, 1], [1, 3], [3, 9]])
solution22([[0, 5], [3, 9], [1, 10]])



