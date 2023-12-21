import UIKit

// Int는 +, - 부호를 정수를 뜻하며 이 중 - 부호를 포함하지 않은 0을 포함한 양의 정수는 UInt로 표현
// Int와 UInt는 각각 8비트 16비트 32비트 64비트로
// Int8 Int16 Int32 Int64 UInt8 UInt16 UInt32 UInt64

var integer: Int = -100
let unsignedInteger: UInt = 50
print("integer 값: \(integer), unsignedInteger 값: \(unsignedInteger)")
print("Int 최댓값: \(Int.max), Int 최솟값: \(Int.min)")
print("UInt 최댓값: \(UInt.max), UInt 최솟값: \(UInt.min)")

let largetInteger: Int64 = Int64.max
let smallUnsignedInteger: UInt8 = UInt8.max

//let tooLarge: Int = Int.max + 1 // Int의 표현 범위를 초과하므로 오류를 냅니다.
//let cannotBeNegative: UInt = -5 // UInt는 음수가 될 수 없으므로 오류를 냅니다.

//integer = unsignedInteger // 스위프트에서 Int와 UInt는 다른 타입입니다.
integer = Int(unsignedInteger) // Int 타입의 값으로 할당해주어야 합니다.

let decimalInteger: Int = 28
let binaryInteger: Int = 0b11100 // 2진수로 10진수 28을 표현
let octalInteger: Int = 0o34 // 8진수로 10진수 28을 표현
let hexadecimalInteger: Int = 0x1C // 16진수로 10진수 28을 표현

// Bool - true 와 false 값만으로 표현 가능

var boolean: Bool = true
boolean.toggle() // true - false 반전
let iLoveYou: Bool = true
let isTimeUnlimited: Bool = false
print("시간은 무한합니까? \(isTimeUnlimited)")

// Float과 Double
// Float과 Double 은 부동소수점을 사용하여 실수며 부동소수 타입이라고 합니다.
// 흔히 우리가 말하는 소수점 자리가 있는 수 입니다.
// Double은 64비트의 부동소수 표현가능
// Float은 32비트의 부동소수 표현가능

// Float이 수용할 수 있는 범위를 넘어섭니다.
// 자신이 수용할 수 있는 만큼만 남기므로 정확도가 떨어짐
var floatValue: Float = 1234567890.1
let doubleValue: Double = 1234567890.1

print("floatValue: \(floatValue), doubleValue: \(doubleValue)")

// Float이 수용할 수 있는 범위의 수로 변경
floatValue = 123456.1
print(floatValue)

// Character
// 말그대로 문자를 의미 합니다. 단어, 문장처럼 문자의 집합이 아닌 단 하나의 문자를 의미

let alphabetA: Character = "A"
print(alphabetA)

// Character 값에 유니코드 문자를 사용할 수 있습니다.
let commandCharacter: Character = "♡"
print(commandCharacter)

let 한글변수이름: Character = "ㄱ"
print("한글의 첫 자음: \(한글변수이름)")

// String
// String은 문자의 나열, 즉 문자열 입니다.
// String은 Character와 마찬가지로 유니코드를 사용할 수 있으며, 값의 앞뒤에 큰 따옴표를 사용하여 표현

// 상수로 선언된 문자열은 변경이 불가능
let name: String = "yagom"

// 이니셜라이저를 사용하여 빈 문자열을 생성할 수 있습니다.
// var 키워드를 사용하여 변수를 생성했으므로 문자열의 수정 및 변경이 가능합니다.
var introduce: String = String()

// append() 메서드를 사용하여 문자열을 이어붙일 수 있습니다.
introduce.append("제 이름은")

// + 연산자를 통해서도 문자열을 이어붙일 수 있습니다.
introduce = introduce + " " + name + "입니다."
print(introduce)

// name에 해당하는 문자의 수를 셀 수 있습니다.
print("name의 글자 수: \(name.count)")
// 빈 문자열인지 확인해 볼 수 있습니다.
print("introduce가 비어있습니까?: \(introduce.isEmpty)")

// 유니코드의 스칼라값을 사용하면 값에 해당하는 표현이 출력됩니다.
let unicodeScalarValue: String = "\u{2665}"

// 연산자를 통한 문자열 결합
let hello: String = "Hello"
let yagom: String = "yagom"
var greeting: String = hello + " " + yagom + "!"
print(greeting)

greeting = hello
greeting += " "
greeting += yagom
greeting += "!"
print(greeting)

// 연산자를 통한 문자열 비교
var isSameString: Bool = false

isSameString = hello == "Hello"
print(isSameString)

isSameString = hello == "hello"
print(isSameString)

isSameString = yagom == "yagom"
print(isSameString)

isSameString = yagom == hello
print(isSameString)

// 메서드를 통한 접두어, 접미어 확인
var hasPrefix: Bool = false
hasPrefix = hello.hasPrefix("He")
print(hasPrefix)

hasPrefix = hello.hasPrefix("HE")
print(hasPrefix)

hasPrefix = greeting.hasPrefix("Hello ")
print(hasPrefix)

hasPrefix = yagom.hasPrefix("gom")
print(hasPrefix)

hasPrefix = hello.hasPrefix("Hello")
print(hasPrefix)

var hasSuffix: Bool = false
hasSuffix = hello.hasSuffix("He")
print(hasSuffix)

hasSuffix = hello.hasSuffix("llo")
print(hasSuffix)

hasSuffix = hello.hasSuffix("He")
print(hasSuffix)

hasSuffix = greeting.hasSuffix("yagom")
print(hasSuffix)

hasSuffix = greeting.hasSuffix("yagom!")
print(hasSuffix)

hasSuffix = yagom.hasSuffix("gom")
print(hasSuffix)

// 메서드를 통한 대소문자 변환
var convertedString: String = ""
convertedString = hello.uppercased()
print(convertedString)

convertedString = hello.lowercased()
print(convertedString)

convertedString = yagom.uppercased()
print(convertedString)

convertedString = greeting.uppercased()
print(convertedString)

convertedString = greeting.lowercased()
print(convertedString)

// 프로퍼티를 통한 빈 문자열 확인
var isEmptyString: Bool = false
isEmptyString = greeting.isEmpty
print(isEmptyString)

greeting = "안녕"
isEmptyString = greeting.isEmpty
print(isEmptyString)

greeting = ""
isEmptyString = greeting.isEmpty
print(isEmptyString)

// 프로퍼티를 이용해 문자열 길이 확인
print(greeting.count)

greeting = "안녕하세요"
print(greeting.count)

greeting = "안녕!"
print(greeting.count)

greeting = """
여러줄의 문자열을 쓰고 싶으시면
큰따음표 3개를 이어서 작성하면
다음과 같이 작성 가능합니다
"""
print(greeting)
