import UIKit

var str = "Hello, playground"


let minValue = UInt8.min
let maxValue = UInt8.max

print(minValue)
print(maxValue)

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

let http404Error = (404, "Not found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404
serverResponseCode = nil
var surverAnswer: String?

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString














