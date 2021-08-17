import UIKit

var str = "Hello, playground"

// 1. Write code that prints “I will not skip the fundamentals!” numTimes times. Write it a second time using a different loop mechanism.

let numTimes = 10

func twoLoops(numbers: Int) {
    for _ in 1...numTimes {                           // repeat numTimes
        print("I will not skip the fundamentals!")      //      print message
    }
    print("And now for a different method")
    var count1 = 0                                      // initialize count
    while count1 < numTimes {                           // repeat while count < numTimes
        print("I will not skip the fundamentals!")      //      print message
        count1 += 1                                      //      increment count
    }
}
twoLoops(numbers: numTimes)


print("------------------------------------------------------------------------")

// 2. Print the first num square numbers.

let num = 6

func squareNumXTimes(number: Int) {
    var numSquared = 1
    for _ in 0..<number {
        numSquared *= number
        print("\(numSquared)")
    }
}
squareNumXTimes(number: num)


print("------------------------------------------------------------------------")

// 3. Print the powers of 2 that are less than or equal to highVal.

let highVal = 220

func powersOfTwoUpToValue(val: Int) {
    let baseNum = 2
    var squarePosition = 1
    var total3 = 2
    print("\(baseNum) to the power of \(squarePosition) is \(total3)")
    while total3 <= val {
        total3 = total3 * baseNum
        squarePosition += 1
        if total3 <= val {
            print("\(baseNum) to the power of \(squarePosition) is \(total3)")
        }
    }
}
powersOfTwoUpToValue(val: highVal)


print("------------------------------------------------------------------------")

// 4. Given an integer size, draw a square of size x size asterisks.

let size = 4

func drawASquareXSize(x: Int) {
    for _ in 1...x {
        for _ in 1...x {
            print("*", terminator:"")
        }
        print()
    }
}
drawASquareXSize(x: size)

print("------------------------------------------------------------------------")

// 5. Given an integer y draw a rhombus of asterisks like the following example:

//    *
//   ***
//  *****
// *******
//  *****
//   ***
//    *

let y = 9   // original value was 5


func drawRhombus(size5: Int) {
    var spacesToAdd = ""
    var characters = ""
    // Add spaces half the length of y
    for _ in 1...(size5 / 2) {
        spacesToAdd.append(" ")
    }
    // Top half of rhombus
    for _ in 1...(size5 / 2) + 1 {
        // For Loop for spaces
        for _ in 1...1 {
            print(spacesToAdd, terminator: "")
        }
        // For Loop for asterisks
        for _ in 1...1 {
            characters.append("*")
            print(characters)
        }
        if characters.count < size5 {
            characters.append("*")
        }
        if spacesToAdd.count > 0 {
            spacesToAdd.removeFirst()
        }
    }
    //print("There are \(characters.count) asterisks")
    //print("There are \(spacesToAdd.count) spaces")

    // Bottom half of rhombus
    for _ in 1...size5 / 2 {
        // For Loop for spaces
        for _ in 1...1 {
            spacesToAdd.append(" ")
            print(spacesToAdd, terminator: "")
        }
        // For Loop for asterisks
        for _ in 1...1 {
            characters.removeFirst()
            characters.removeLast()
            print(characters)
        }
    }
}

drawRhombus(size5: y)

// PSUEDO print
//print("   *")
//print("  ***")
//print(" *****")
//print("*******")
//print(" *****")
//print("  ***")
//print("   *")

// PSUEDO first half
// repeat
//      if character length <= y
//              print one character
//              increment character length
//              new line
//      else if character length > 0
//              decrement character length
//              print one character
//              new line

// ATTEMPT 4 / FIRST WORKING ATTEMPT (ONLY FIRST HALF COMPLETED)
//var spacesToAdd = ""
//var characters = ""
////var charLength = characters.count
//for _ in 1...(y / 2) {
//    spacesToAdd.append(" ")
//}
//for _ in 1...y {
//    for _ in 1...y {
//        if characters.count <= y {
//            if spacesToAdd.count > 0 {
//                print(spacesToAdd, terminator: "")
//            }
//            characters.append("*")
//            print(characters)
//            characters.append("*")
//            if spacesToAdd.count > 0 {
//                spacesToAdd.removeFirst()
//            }
//        }
//    }
//}

print("------------------------------------------------------------------------")

// 6. Write code that prints the first numFib Fibonacci numbers.

let numFib = 15

// Fibonacci numbers: a series of numbers in which each number is the sum of the two preceding numbers (ie 1, 1, 2, 3, 5, 8...)
func printXFibonacciNumbers(_ amount6: Int) -> [Int] {
    var fib1 = 0
    var fib2 = amount6
    var total6 = 0
    var arrayFib = [Int]()
    for _ in 0..<amount6 {
        total6 = fib1 + fib2
        arrayFib.append(total6)
        fib1 = fib2
        fib2 = total6
    }
    return arrayFib
}
print("The first \(numFib) Fibonacci numbers of \(numFib) are \(printXFibonacciNumbers(numFib))")


// firstValue = 0
// secondValue = numFib
// total = 0
// repeat numFib times
//      total = firstValue + secondValue
//      print total
//      firstValue = secondValue
//      secondValue = total

print("------------------------------------------------------------------------")

// 7. You are given a number. Print "Prime" if the number is a prime and "Not prime" otherwise. Try your code with several different numbers.

let number = 919

func isPrime(num: Int) -> Bool {
    // Corner case
    if num <= 1 {
        return false
    }
    // Check from 2 to n-1
    for digit in 2..<number {
        if num % digit == 0 {
            return false
        }
    }
    return true
}
let state = isPrime(num: number)
func checkIfPrime(status: Bool) {
    if status {
        print("Prime")
    } else {
        print("Not")
    }
}
checkIfPrime(status: state)

// What makes a number prime?
// not evenly divisible (division does not result in a whole number)
// 2 is the smallest prime number
// zero and 1 are not prime
// other prime numbers include: 3, 5, 7, 11
// if the sum of a number's digits is a multiple of 3, that number can be divided by 3 so it is not prime
// every prime number can be represened in the form 6n+1 or 6n-1 (except 2 and 3), where n is a natural number (natural numbers are positive integers (whole numbers))

// Steps:
// if number divided by 2 == whole number
//      not prime
// else if number / 3, 5, 7, 11... == whole number
//      not prime



