import Foundation

//// 연산자를 구현하기 위해 미리 선언
//prefix operator **
//
//// 제곱을 수행하는 연산자를 정의
//prefix func ** (value: Int) -> Int {
//    return value * value
//}
//
//let minusFive: Int = -5
//let sqrtMinusFive: Int = **minusFive
//
//print(sqrtMinusFive) // 25

// 연산자를 구현하기 위해 미리 선언
prefix operator **

// BinaryInteger - 정수 타입 프로토콜
// 프로토콜이 해당값이면 연산을 수행
prefix func ** <T: BinaryInteger> (value: T) -> T {
    return value * value
}

let minusFive: Int = -5
let five: UInt = 5

let sqrtMinus: Int = **minusFive
let sqrtFive: UInt = **five

print(sqrtMinus) // 25
print(sqrtFive) // 25

func swapToInts(a: inout Int, b: inout Int) {
    let temp: Int = a
    a = b
    b = temp
}

var numberOne: Int = 5
var numberTwo: Int = 10

swapToInts(a: &numberOne, b: &numberTwo)
print("\(numberOne) \(numberTwo)") // 10 5

func swapToStrings(a: inout String, b: inout String) {
    let temp: String = a
    a = b
    b = temp
}

var stringOne: String = "A"
var stringTwo: String = "B"

swapToStrings(a: &stringOne, b: &stringTwo)
print("\(stringOne) \(stringTwo)")


func swapTwoValues<T>(a: inout T, b: inout T) {
    let temp: T = a
    a = b
    b = a
}

swapTwoValues(a: &numberOne, b: &numberTwo) // 10 5
swapTwoValues(a: &stringOne, b: &stringTwo) // B A


struct IntStack {
    var items = [Int]()
    
    mutating func push(_ item: Int) {
        items.append(item)
    }
    
    mutating func pop() -> Int {
        items.removeLast()
    }
}

var integerStack: IntStack = IntStack()

integerStack.push(3)
print(integerStack.items) // [3]

integerStack.push(1)
print(integerStack.items) // [3,1]

integerStack.pop()
print(integerStack.items) // [3]

integerStack.push(2)
print(integerStack.items) // [3,2]

struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        items.removeLast()
    }
}

var doubleStack: Stack<Double> = Stack<Double>()

doubleStack.push(1.0)
print(doubleStack.items) // [1.0]

doubleStack.push(2.0)
print(doubleStack.items) // [1.0, 2.0]

doubleStack.pop()
print(doubleStack.items) // [1.0]

var stringStack: Stack<String> = Stack<String>()

stringStack.push("A")
print(stringStack.items) // ["A"]

stringStack.push("B")
print(stringStack.items) // ["A", "V"]

stringStack.pop()
print(stringStack.items) // "A"]
