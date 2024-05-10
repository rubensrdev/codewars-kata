
import Foundation


/*
 func numberToString(number: Int) -> String {
 return String(number)
 }
 
 numberToString(number: 9)
 
 
 
 func disemvowel(_ s: String) -> String {
 let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
 let result = String(s.filter { !vowels.contains($0) })
 return result
 }
 
 disemvowel("Hello World!")
 
 //------------------------------------
 
 func accum(_ cad: String) -> String {
 var index: Int = 0
 var cadResult: String = ""
 for char in cad {
 index += 1
 for i in 1...index {
 if i == 1 {
 cadResult.append("\(char.uppercased())")
 } else {
 cadResult.append("\(char.lowercased())")
 }
 if i == index {
 cadResult.append("-")
 }
 }
 }
 cadResult.removeLast()
 return cadResult
 }
 
 print(accum("cwAt"))
 
 //------------------------------------
 
 
 func isLeapYear(_ year: Int) -> Bool {
 year % 100 == 0 ? year % 400 == 0 : year % 4 == 0
 }
 
 isLeapYear(2020)
 isLeapYear(2000)
 isLeapYear(2015)
 isLeapYear(2100)
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/56f69d9f9400f508fb000ba7
 
 
 func monkeyCount(_ n: Int) -> [Int] {
 var monkeys: [Int] = []
 for i in 1...n {
 monkeys.append(i)
 }
 return monkeys
 }
 print("monkeys: \(monkeyCount(1))")
 print("monkeys: \(monkeyCount(5))")
 print("monkeys: \(monkeyCount(3))")
 print("monkeys: \(monkeyCount(9))")
 
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9/train/swift
 
 func find_short(_ str: String) -> Int {
 if str != "" {
 var wordsInStr = str.split(separator: " ")
 var longToCompare = wordsInStr[0].count
 for word in wordsInStr {
 var longStr = word.count
 if longStr < longToCompare {
 longToCompare = longStr
 }
 }
 //print("Text words: \(wordsInStr) and shortest word have \(longToCompare) letters")
 return (longToCompare != 0) ? longToCompare : 0
 } else {
 return 0
 }
 }
 
 find_short("For Frodo!!")
 find_short("Its sound great")
 find_short("Luke, I am your father! ta ta taa ta ta tan")
 find_short("")
 
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/57f781872e3d8ca2a000007e
 
 func maps(a : Array<Int>) -> Array<Int> {
 var resultArray: [Int] = []
 for n in a {
 resultArray.append(n*2)
 }
 return resultArray
 }
 
 print(maps(a: [5,8,23]))
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/57f780909f7e8e3183000078/swift
 
 func grow(_ arr: [Int]) -> Int {
 var result = 0
 var firstIteration = true
 for n in arr {
 if firstIteration {
 firstIteration = false
 result = n
 } else {
 result = n * result
 }
 }
 return result
 }
 
 print(grow([1,5,3]))
 
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/55d24f55d7dd296eb9000030
 
 func summation(_ n: Int) -> Int {
 var sumation = 0
 if n > 0 {
 for i in 1...n {
 sumation += i
 }
 }
 return sumation
 }
 
 print(summation(17))
 
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/57a0e5c372292dd76d000d7e
 func repeatStr(_ n: Int, _ string: String) -> String {
 var cadResult = ""
 for i in 1...n {
 cadResult.append(string)
 }
 return cadResult
 }
 
 print(repeatStr(7, "Idril"))
 
 func repeatStr(_ n: Int, _ string: String) -> String {
 var cadResult = ""
 var veces = 0
 while veces < n {
 cadResult.append(string)
 veces+=1
 }
 return cadResult
 }
 
 print(repeatStr(7, "Idril"))
 
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/542c0f198e077084c0000c2e
 
 
 func divisors(_ n: Int) -> Int {
 var numberOfDivisors: Int = 0
 for i in 1...50000 {
 if n % i == 0 {
 numberOfDivisors+=1
 }
 }
 return numberOfDivisors
 }
 
 func divisors(_ n: UInt32) -> UInt32 {
 UInt32((1...n).filter {n % $0 == 0}.count)
 }
 
 
 print(divisors(4))
 print(divisors(5))
 print(divisors(12))
 print(divisors(30))
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/58acfe4ae0201e1708000075
 
 
 func inviteMoreWomen(_ arr: [Int]) -> Bool {
 let inviteMore: Bool
 var men: Int = 0
 var women: Int = 0
 for guest in arr {
 if guest == 1 {
 men += 1
 }
 if guest == -1 {
 women += 1
 }
 }
 
 return (men <= women) ? false : true
 }
 
 inviteMoreWomen([1, -1, 1]) //true
 inviteMoreWomen([-1, -1, -1]) //false
 inviteMoreWomen([1, -1]) //false
 inviteMoreWomen([1, 1, 1])  //true
 
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/5412509bd436bd33920011bc
 
 
 func maskify(_ string:String) -> String {
 var maskedText = ""
 if string.count >= 4 {
 let numberOfAllDigitsToCopy = string.count - 5
 for i in 0...string.count - 1 {
 if i <= numberOfAllDigitsToCopy {
 maskedText.append("#")
 } else {
 maskedText.append(Array(string)[i])
 }
 }
 } else {
 maskedText = string
 }
 return maskedText
 }
 
 print(maskify("4556364607935616"))
 print(maskify("1"))
 print(maskify("11111"))
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/6411b91a5e71b915d237332d
 
 
 func validParentheses(_ str: String) -> Bool {
 var valid: Bool = false
 var invalidCharacter: Bool = false
 if 0 <= str.count && str.count <= 100 {
 var openParenthesesCounter: Int = 0
 var closedParenthesesCounter: Int = 0
 for char in str {
 if char == "(" {
 openParenthesesCounter += 1
 }
 if char == ")" {
 closedParenthesesCounter += 1
 }
 if char != "(" || char != ")" || char != " " {
 invalidCharacter = true
 break
 }
 }
 if !invalidCharacter && openParenthesesCounter == closedParenthesesCounter {
 valid = true
 }
 }
 return valid
 }
 
 
 func validParentheses2(_ str: String) -> Bool {
 var balance = 0
 
 for char in str {
 if char == "(" {
 balance += 1
 } else if char == ")" {
 balance -= 1
 if balance < 0 {
 return false
 }
 }
 }
 
 return balance == 0
 }
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/57f8ee485cae443c4d000127
 
 
 func spacify(_ str: String) -> String {
 return str.map { "\($0)" }.joined(separator: " ")
 }
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/56541980fa08ab47a0000040
 
 
 func printerError(_ s: String) -> String {
 var result: String = ""
 if s.count >= 1 {
 var errorCounter: Int = 0
 var numberOfLetters: Int = s.count
 var validLetterCodes: [String] = ["a","b","c","d","e","f","g","h","i","j","k","l","m"]
 for char in s {
 if !validLetterCodes.contains(String(char)) {
 errorCounter += 1
 }
 }
 result.append("\(errorCounter)/\(numberOfLetters)")
 }
 return result
 }
 
 print(printerError("abcdefghijklm"))
 print(printerError("nopqrstuvwxyz"))
 print(printerError("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"))
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/5813d19765d81c592200001a
 
 func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
 var result: Int = 0
 for number in start...end {
 if String(number).contains("5") != true {
 result += 1
 }
 }
 return result
 }
 
 print(dontGiveMeFive(1, 9))
 print(dontGiveMeFive(4, 17))
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/5390bac347d09b7da40006f6  -> return capitalized - my version 👇🏻
 
 
 func toJadenCase(cad: String) -> String {
 var cadParts = cad.split(separator: Character(" "))
 var cadResult = ""
 for part in cadParts {
 cadResult.append("\(String(part).uppercased()) ")
 }
 return cadResult
 }
 
 print(toJadenCase(cad: "hello world! to jaden case"))
 print("hello")
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/58356a94f8358058f30004b5
 
 
 func flyBy(lamps: String, drone: String) -> String {
 var hackResult: String = ""
 var numberOfLampsHacked: Int = drone.count
 var lampTour: Int = 0
 for lamp in lamps {
 lampTour += 1
 if lampTour <= numberOfLampsHacked {
 hackResult.append("o")
 } else {
 hackResult.append(lamp)
 }
 }
 return hackResult
 }
 
 print(flyBy(lamps: "xxxxxx", drone: "====T"))
 print(flyBy(lamps: "xxxxxxxxx", drone: "==T"))
 print(flyBy(lamps: "xxxxxxxxxxxxxxx", drone: "=========T"))
 
 
 //------------------------------------
 // KATA https://www.codewars.com/kata/57ae18c6e298a7a6d5000c7a/


func replaceAll<T: Equatable>(array: [T], old: T, new: T) -> [T] {
    return array.map { $0 == old ? new : $0 }
}

print(replaceAll(array: ["hi", "sir", "hi"], old: "hi", new: "hello"))
print(replaceAll(array: [1,23,6,98,34,134,1,0], old: 1, new: 5))

 //------------------------------------
 // KATA https://www.codewars.com/kata/562f91ff6a8b77dfe900006e
 */

func movie(card: Double, ticket: Double, perc: Double) -> Int {
    var count = 0.0
        var sumA = card
        
        repeat {
            count += 1
            sumA += ticket * pow(perc, count)
        } while sumA.rounded(.up) >= ticket * count
    return Int(count)
}

print(movie(card: 500, ticket: 15, perc: 0.9))
print(movie(card: 100, ticket: 10, perc: 0.95))





