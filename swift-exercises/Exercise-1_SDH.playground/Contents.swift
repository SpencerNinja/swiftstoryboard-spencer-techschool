import UIKit

var str = "Hello, playground"

// _________________________________________________

// 1. You are given two variables a and b, compute their sum and store it in another variable named total then print the result.

let a = 42
let b = 77

let total = a + b
print("1. The sum of a and b is: \(total).")

// _________________________________________________

// 2. Determine the number of seconds in a year and store the number in a variable named secondsInAYear. Make your code clear.
let daysInAYear = 365       // # of days
let hoursInADay = 24        // # of hours
let minutesInAHour = 60     // # of minutes
let secondsInAMinute = 60   // # of seconds
let secondsInAYear = daysInAYear * hoursInADay * minutesInAHour * secondsInAMinute
print("2. There are \(secondsInAYear) seconds in a year.")

// _________________________________________________

// 3. You are given the width and height of a screen in pixels. Calculate the total number of pixels on the screen and store the result in a variable named numberOfPixels.

let width = 1920
let height = 1080

let numberOfPixels = width * height
print("3. There are \(numberOfPixels) pixels in the screen.")

// _________________________________________________

// 4. You are given the sum and the difference of two numbers. Determine the values of the original numbers and store them in variables v1 and v2.

let sum = 16 // v1 + v2
let diff = 4 // v1 - v2

// x + y = 16
// x - y = 4
// ------------
// 2x = 20
// x = 10
var total4 = sum + diff
var firstVar = 2
let v1 = total4 / firstVar
let v2 = sum - v1
print("4. The variable v1 is equal to \(v1), v2 is equal to \(v2).")

// _________________________________________________

// 5. Given two variables val1 and val2, swap their values. That is the new value of val1 will become the old value of val2 and vice versa.

var val1 = 3
var val2 = 7

var copyVal1 = 3
val1 = val2
val2 = copyVal1
print("5. The variable val1 was 3 and now is \(val1). val2 was 7 and now is \(val2).")

// _________________________________________________

// 6. You are given a number num. Print the last digit of num.

let num = 123

var lastDigit = num % 120
print("6. The last number is \(lastDigit)")

// Alternate 1:
//var numString = String(num)
//var numArray = [String]()
//for char in numString {
//    numArray.append(String(char))
//}
//print("6. The last number is \(numArray.last!)")   // adding the ! force-unwraps the value to avoid the Optional warning. Previous warning message: "Expression implicitly coerced from 'String' to 'Any'"

// _________________________________________________

// 7. You are given Rocky’s age in dog years. Print Rocky’s age in human years. You know that 1 human year is 7 dog years.

let rockysAge = 50

let dogYears = 7
var rockysHumanAge = rockysAge / dogYears
print("7. While Rocky is 50 years old in dog years, he is only \(rockysHumanAge) years old in human years.")

// _________________________________________________

// 8. x years from now Alice will be y times older than her brother Bob. Bob is 12 years old. How old is Alice?

let x = 3
let y = 2
let bob = 12

// 3 + alice = y * bob
// alice = (2 * bob) - 3
var alice = bob * y - x
print("8. Alice is \(alice) years old.")

// _________________________________________________

// 9. You have numApples apples. Bob trades 3 oranges for 5 apples. He does not accept trades with cut fruit. How many oranges can you get from Bob and how many apples will you have left?

    // The number of apples you will have left should be stored in a variable named apples. The number of oranges you will have after the trade should be stored in a variable named oranges.

let numApples = 17

var oranges = 0
var apples = numApples
while apples>4 {
    apples -= 5
    oranges += 3
}
print("9. You can get \(oranges) oranges from Bob and you will have \(apples) apples left over.")

// _________________________________________________

// 10. A class consists of numberOfBoys boys and numberOfGirls girls. Print the percentage of boys in the class followed by the percentage of girls in the class. The percentage should be printed rounded down to the nearest integer. For example 33.333333333333 will be printed as 33.

let numberOfBoys = 30
let numberOfGirls = 60

let totalNumberOfStudents = numberOfBoys + numberOfGirls
var percentOfBoys: Double = Double(numberOfBoys) / Double(totalNumberOfStudents)
var percentOfGirls: Double =  Double(numberOfGirls) / Double(totalNumberOfStudents)
percentOfBoys = Double(round(percentOfBoys * 10000) / 100)
percentOfGirls = Double(round(percentOfGirls * 10000) / 100)
print("10. The class consists of \(percentOfBoys)% boys and \(percentOfGirls)% girls.")



