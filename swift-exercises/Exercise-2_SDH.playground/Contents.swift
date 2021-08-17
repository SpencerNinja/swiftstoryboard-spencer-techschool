import UIKit


// 1. You are given two numbers a and b print the largest one.

let a = 11
let b = 22

print(a > b ? a : b)

// Alternate 1:
//if a > b {
//    print(a)
//} else {
//    print(b)
//}

// Alternate 2:
//if a > b {
//    print(a)
//}
//print(b)

// ---------------------------------------

// 2. You are given a number. Print even if the number is even or odd otherwise.

let number = 2

print(number % 2 == 0 ? "Even" : "Odd")

// Alternate 1:
//if number % 2 == 0 {
//    print("Even")
//} else {
//    print("Odd")
//}

// ---------------------------------------

// 3. You are given two numbers x and y. Print "divisible" if x is divisible by y and "not divisible" otherwise.

let x = 12
let y = 3

print(x % y == 0 ? "divisible" : "not divisible")

// Alternate 1:
//if x % y == 0 {
//    print("divisible")
//} else {
//    print("not divisible")
//}

// ---------------------------------------

// 4. You are given three variables v1, v2 and v3. Check if at least two variables have the same value. If that is true print "At least two variables have the same value." Otherwise, print "All the values are different."

let v1 = 2
let v2 = 3
let v3 = 2

print(v1 == v2 || v1 == v3 || v2 == v3 ? "At least two variables have the same value." : "All the values are different.")

// Alternate 1
//if v1 == v2 || v1 == v3 || v2 == v3 {
//    print("At least two variables have the same value.")
//} else {
//    print("All the values are different.")
//}

// ---------------------------------------

// 5. You are working on a smart-fridge. The smart-fridge knows the age of the eggs and bacon in it. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days). Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you need to throw out. If you can cook bacon and eggs print "You can cook bacon and eggs." If you need to throw out any ingredients, for each one print a line with the text "Throw out <ingredient>" (where <ingredient> is bacon or eggs) in any order.

let baconAge = 6 // the bacon is 6 days old
let eggsAge = 12 // eggs are 12 days old

let baconExpDate = 7
let eggsExpDate = 21

if baconAge < baconExpDate && eggsAge < eggsExpDate {
    print("You can cook bacon and eggs.")
} else if baconAge > baconExpDate && eggsAge < eggsExpDate {
    print("Throw out the bacon.")
} else if baconAge < baconExpDate && eggsAge > eggsExpDate {
    print("Throw out the eggs.")
} else {
    print("Throw out both the bacon and the eggs.")
}

// ---------------------------------------

// 6. You are given a year, determine if it’s a leap year. Look up the rules for determining leap years.

let year = 2000

if year % 4 == 0 {
    if year % 100 != 0 {
        print("Leap year")
    } else if year % 400 == 0 {
        print("Leap year")
    } else {
        print("Not a leap year")
    }
} else {
    print("Not a leap year")
}

// ---------------------------------------

// 7. You are given four variables x1, x2, x3 and x4. Print the value of the smallest one.

let x1 = 5
let x2 = 6
let x3 = 3
let x4 = 4

var arrayX = [x1, x2, x3, x4]
var smallest = arrayX[0]
for vari in arrayX {
    if smallest > vari {
        smallest = vari
    }
}
print(smallest)

// ---------------------------------------

// 8. Test if someNum is divisible by 3, 5 and 7. For example 105 is divisible by 3, 5 and 7, but 120 is divisible only by 3 and 5 but not by 7. If the number is divisible by 3, 5 and 7 print "Number is divisible by 3, 5 and 7." Otherwise print "Number is not divisible by 3, 5 and 7."

let someNum = 210

print(someNum % 3 == 0 && someNum % 5 == 0 && someNum % 7 == 0 ? "Number is divisible by 3, 5 and 7." : "Number is not divisible by 3, 5 and 7.")

// Alternate 1:
//if someNum % 3 == 0 && someNum % 5 == 0 && someNum % 7 == 0 {
//    print("Number is divisible by 3, 5 and 7.")
//} else {
//    print("Number is not divisible by 3, 5 and 7.")
//}

// ---------------------------------------

// 9. Determine if a point (xCoord, yCoord) is inside of the rectangle with the lower-left corner in (lowX, lowY) and the upper-right in (highX, highY). Print "inside" or "not inside" depending on the result.

let xCoord = 1
let yCoord = 2
let lowX = 1
let lowY = 1
let highX = 3
let highY = 3

print((xCoord >= lowX && xCoord <= highX) && (yCoord >= lowY && yCoord <= highY) ? "inside" : "not inside")

// Alternate 1:
//if (xCoord >= lowX && xCoord <= highX) && (yCoord >= lowY && yCoord <= highY) {
//    print("inside")
//} else {
//    print("not inside")
//}

// ---------------------------------------
