import UIKit

// 1. Print the maximum value from listOfNumbers.

let listOfNumbers = [10, 124, 323, 171, 14]

var maxNum = 0
for num in listOfNumbers {
    if num > maxNum{
        maxNum = num
    }
}
print("\(maxNum)")

// create variable to store max number
// for number in listOfNumbers
//      if current number is greater than max number
//          max number takes on current number value
// print max number


// --------------------------------------------------------

// 2. Print all the odd numbers from evenOrOdd.

let evenOrOdd = [101, 120, 42, 33, 321, 1, 8, 222]

func arrayOddNumbers(list: [Int]) -> [Int] {
    var oddNumbers = [Int]()
    for num in list {
        if num % 2 == 1 {
            oddNumbers.append(num)
        }
    }
    return oddNumbers
}
print("\(arrayOddNumbers(list: evenOrOdd))")


// --------------------------------------------------------

// 3. Print the sum of all the numbers from myList.

let myList = [61, 174, 50, 77, 6, 2018]

func sumOfArray(list: [Int]) -> Int {
    var sum3 = 0
    for num in list {
        sum3 += num
    }
    return sum3
}
print("The sum of the numbers in the array is: \(sumOfArray(list: myList))")


// --------------------------------------------------------

// 4. Print the numbers from values in reverse order on separate lines.

let values = [24, 10, 20, 80, 50, 240, 60]

func printArrayInReverse(array: [Int]) {
    var arrayOfValues = values
    while arrayOfValues.count > 0 {
        print(arrayOfValues[arrayOfValues.endIndex - 1])
        arrayOfValues.removeLast()
    }
}
printArrayInReverse(array: values)


// --------------------------------------------------------

// 5. Find out if x appears in list. Print "Yes" if it does, otherwise print "No".

let list = [10, 17, 69, 29, 38, 24, 2312]
let x = 24

func numberIsInList(number: Int, array: [Int]) -> Bool {
    for num in array {
        if num == x {
            return true
        }
    }
    return false
}
if numberIsInList(number: x, array: list) {
    print("Yes, the number \(x) was in the list.")
} else {
    print("No the number \(x) was not in the list.")
}

// for every number in the array
//      if num is equal to x
//          print "Yes"
//          end search
//


// --------------------------------------------------------

// 6. Create an array of all the unique numbers from nums, and then print the numbers on separate lines.

let nums = [2342, 23, 58, 31, 33, 1, 14, 23, 33, 72, 49, 31, 22]


func makeUniqueArray(list: [Int]) -> [Int] {
    var uniqueSet = [Int]()
    var isUniqueFlag = true
    for numX in list {
        isUniqueFlag = true
        for numY in uniqueSet {
            if numX == numY {
                isUniqueFlag = false
                break
            }
        }
        if isUniqueFlag == true {
            uniqueSet.append(numX)
        }
    }
    return uniqueSet
}
print(makeUniqueArray(list: nums))


// uniqueList = []
// flag = true
// for numX in the list
//      flag = true         Is the number unique?
//      for numY in the uniqueList
//          if numX == numY
//              flag = false    The number is not unique
//              break
//      if flag == true
//          uniqueList.append(numX)


