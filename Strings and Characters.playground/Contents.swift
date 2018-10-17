import UIKit

var emptyString = ""
var anotherEmpthString = String()
if emptyString.isEmpty {
    print("Nothing to see here")
}

var variableString = "Horse"
variableString += " and carrige"
let constantString = "Highlander"
//constantString += "and another Highlander"
for character in "Dog!🐶" {
    print(character)
}
let exclamationMark: Character = "!"
let catCharacters: [Character] = ["C", "a", "t", "!", "🐈"]
let catString = String(catCharacters)
print(catString)
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
var instruction = "look over"
instruction += string2
welcome.append(exclamationMark)

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}

var welcome2 = "hello"
welcome2.insert("!", at: welcome2.endIndex)
welcome2.insert(contentsOf: " there", at: welcome2.index(before: welcome2.endIndex))
welcome2.remove(at: welcome.index(before: welcome.endIndex))
let range = welcome.index(welcome.endIndex, offsetBy: -6) ..< welcome.endIndex
welcome.removeSubrange(range)




