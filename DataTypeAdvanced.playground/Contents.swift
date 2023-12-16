import UIKit

// 타입 추론
// 타입을 지정하지 않았으나 타입 추론을 통하여 name은 String 타입으로 선언
var name = "Sungjin"

// 앞서 타입 추론에 의해 name은 String 타입의 변수로 지정되었기 때문에
// 정수를 할당하려고 시도하면 오류가 발생
//name = 100

// 타입 별칭
typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age: MyInt = 100
var year: YourInt = 2080

// MyInt도, YourInt도 Int이기 때문에 같은 타입으로 취급
year = age
let month: Int = 7
let percentage: MyDouble = 99.9


// 튜플
// 지정된 데이터의 묶음이라고 표현할 수 있음

// String,Int, Double의 타입을 갖는 튜플
var person: (name: String, age: Int, height: Double) = ("yagom", 100, 182.5)

// 인덱스를 통해서 값을 빼 올 수 있음
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")

person.age = 99
person.2 = 178.5

print("이름: \(person.name), 나이: \(person.age), 신장: \(person.height)")

typealias PersonTuple = (name: String, age: Int, height: Double)

let yagom: PersonTuple = ("yagom", 100, 178.5)
let eric: PersonTuple = ("eric", 150, 183.5)

print("이름: \(yagom.name), 나이: \(yagom.age), 신장: \(yagom.height)")
print("이름: \(eric.name), 나이: \(eric.age), 신장: \(eric.height)")


// 배열

var names: Array<String> = ["yagom", "chulsoo", "younghee", "yagom"]
var names2: [String] = ["yagom", "chulsoo", "younghee", "yagom"]

var emptyArray: [Any] = [Any]()
var emptyArray2: [Any] = Array<Any>()
// 배열의 타입을 정확히 명시해줬다면 [] 만으로도 빈 배열을 생성할 수 있음
var emptyArray3: [Any] = []

print(emptyArray3.isEmpty)
print(names.count)

print(names[2])
names[2] = "jenny"
print(names[2])
//print(names[4]) //인덱스 범위를 벗어났기 때문에 오류가 발생

names.append("elsa")
print(names)
names.append(contentsOf: ["john", "max"])
print(names)
names.insert(contentsOf: ["jinhee", "minsoo"], at: 5)
print(names)

print(names.firstIndex(of: "yagom"))
print(names.firstIndex(of: "christal"))
print(names.first)
print(names.last)

let firstItem: String = names.removeFirst()
let lastItem: String = names.removeLast()
let indexZeroItem: String = names.remove(at: 0)

print(firstItem)
print(lastItem)
print(indexZeroItem)
print(names[1...3])

// 딕셔너리
var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()
var numberForName2: [String: Int] = [String: Int]()
// 딕셔너리의 키와 값 타입을 정확히 명시해줬다면 [:] 만으로도 빈 딕셔너리를 생성할 수 있음
var numberForName3: [String: Int] = [:]

// 초깃값을 주어 생성해 줄 수도 있음
var numberForName4: [String: Int] = ["yagom": 100, "chulsoo": 200, "jenny": 300]

print(numberForName.isEmpty)
print(numberForName4.count)

print(numberForName4["chulsoo"])
print(numberForName4["minji"])

numberForName4["chulsoo"] = 150
print(numberForName4["chulsoo"])

numberForName4["max"] = 999
print(numberForName4["max"])

print(numberForName4.removeValue(forKey: "yagom"))

// 위에서 yagom 키에 해당하는 값이 이미 삭제되었으므로 nil이 반환
// 키에 해당하는 값이 없으면 기본값을 돌려주도록 할 수 있음
print(numberForName4.removeValue(forKey: "yagom"))

// yagom 키에 해당하는 값이 없으면 기본으로 0이 반환
print(numberForName4["yagom", default: 0])

// 세트
// 같은 타입의 데이터를 순서없이 하나의 묶음으로 저장하는 형태

//var sets: Set<String> = Set<String>()
//var sets2: Set<String> = []

// Array와 마찬가지로 대괄호를 사용
var sets: Set<String> = ["yagom", "chulsoo", "younghee", "yagom"]

// 그렇기 때문에 타입 추론을 사용하게 되면 컴파일러는 Set가 아닌 Array로 타입을 지정합니다.
var numbers = [100, 200, 300]
print(type(of: numbers))

print(sets.isEmpty)
print(sets.count)

sets.insert("jenny")
print(sets.count)

print(sets.remove("chulsoo"))
print(sets.remove("john"))

// 열거형
// 열거형은 배열이나 딕셔너리 같은 타입과 다르게 프로그래머가 정의해준 항목 값 외에는 추가/ 수정이 불가

//enum School {
//    case primary
//    case element
//    case middle
//    case high
//    case college
//    case university
//    case graduate
//}
//
////var highestEducationLevel: School = School.university
//var highestEducationLevel: School = .university
//highestEducationLevel = .graduate


// 열거형의 원시 값 지정과 사용
enum School: String {
    case primary = "유치원"
    case element = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let highestEducationLevel: School = School.university
print("저의 최종학력은 \(highestEducationLevel.rawValue) 졸업입니다.")

enum WeekDays: Character {
    case mon = "월"
    case tue = "화"
    case wed = "수"
    case thr = "목"
    case fri = "금"
    case sat = "토"
    case sun = "일"
}

let today: WeekDays = WeekDays.sun
print("오늘은 \(today.rawValue)요일 입니다.")


enum Numbers: Int {
    case zero
    case one
    case two
    case ten = 10
}

print("\(Numbers.zero.rawValue) , \(Numbers.one.rawValue) , \(Numbers.two.rawValue) , \(Numbers.ten.rawValue)")


// 연관 값을 갖는 열거형

//enum MainDish {
//    case pasta(taste: String)
//    case pizza(dough: String, topping: String)
//    case chicken(withSauce: Bool)
//    case rice
//}

//var dinner: MainDish = MainDish.pasta(taste: "크림")
//dinner = .pizza(dough: "치즈 크러스트", topping: "불고기")
//dinner = .chicken(withSauce: true)
//dinner = .rice

enum PastaTaste {
    case cream, tomato
}
enum PizzaDough {
    case cheeseCrust, thin, original
}
enum PizzaTopping {
    case pepperoni, cheese, bacon
}

enum MainDish {
    case pasta(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(withsauce: Bool)
    case rice
}

var dinner: MainDish = MainDish.pasta(taste: PastaTaste.tomato)
dinner = MainDish.pizza(dough: PizzaDough.cheeseCrust, topping: PizzaTopping.bacon)
