import UIKit

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
var reversedNames2 = names.sorted(by: { (_ s1: String, _ s2: String) -> Bool in
    return s1 > s2
})
print(reversedNames2)
var reversedNames3 = names.sorted (by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print(reversedNames3)
var reversedNames4 = names.sorted (by: { (s1, s2) -> Bool in
    return s1 > s2
})
print(reversedNames4)
var reversedNames5 = names.sorted (by: { (s1, s2) -> Bool in
    return s1 > s2
})
print(reversedNames5)
var reversedNames6 = names.sorted (by: { s1, s2 in return s1 < s2 })
print(reversedNames6)
var reversedNames7 = names.sorted (by: { s1, s2 in s1 < s2 })
print(reversedNames7)
var reversedNames8 = names.sorted (by: { $0 > $1 })
print(reversedNames8)
var reversedNames9 = names.sorted (by: >)
print(reversedNames9)
var reversedNames10 = names.sorted () { $0 > $1 }
print(reversedNames10)
var reversedNames11 = names.sorted { $0 < $1 }
print(reversedNames11)



let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]
let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}
print(strings)


func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()
let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()
incrementBySeven()
incrementByTen()
let alsoIncrementByTem = incrementByTen
alsoIncrementByTem()


//Escaping Closures（逃逸闭包）
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
func someFunctionWithNonescapintClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 100
    func doSomething() {
        someFunctionWithEscapingClosure {
            self.x = 100
        }
        someFunctionWithNonescapintClosure {
            x = 200
        }
    }
}
let instance = SomeClass()
instance.doSomething()
print(instance.x)
completionHandlers.first?()
print(instance.x)


var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
print("Now serving \(customerProvider())!")
print(customersInLine.count)



func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: { customersInLine.remove(at: 0) })






