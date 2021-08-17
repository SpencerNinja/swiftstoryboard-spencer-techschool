import UIKit

// 1. Given an array of integers, determine the number of times each number appears in the array. Print the numbers in ascending order followed by their frequency.

var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 6, 5, 3, 2]

// VERSION 3
// Function to get UNIQUE NUMBERS FROM THE GIVEN ARRAY
func makeUniqueArray(list: [Int]) -> [Int] {
    var uniqueSet = [Int]()
    var isUniqueFlag = true
    for numA in list {
        isUniqueFlag = true
        for numB in uniqueSet {
            if numA == numB {
                isUniqueFlag = false
                break
            }
        }
        if isUniqueFlag == true {
            uniqueSet.append(numA)
        }
    }
    return uniqueSet
}
func countingSort(fullList: [Int]) -> [Int:Int] {
    // MAKE A LIST OF UNIQUE NUMBERS FROM THE GIVEN ARRAY
    var uniqueList = makeUniqueArray(list: numbers)
    // SORT LIST
    uniqueList.sort()
    // COUNT HOW MANY OF EACH NUMBER
    var count1 = 0
    var numCount: [Int:Int] = [:]
    for numC in uniqueList {
        count1 = 0
        for numD in fullList {
            if numC == numD {
                count1 += 1
            }
        }
        // ADD NUMBER AND COUNT TO DICTIONARY
        numCount[numC] = count1
    }
    return numCount
}
print(countingSort(fullList: numbers))


// VERSION 2
    // SORT LIST
        // finalArray = [([number], count)]
        // for numZ in numbers
            // FIND LOWEST
                // lowest = 100
                // for numX in numbers
                        // if numX < lowest
                                // lowest = numX
            // ADD SAME DIGITS TO A LIST
                // sortedArray = []
                // for numY in numbers
                        // if numY == lowest
                                // sortedArray.append(numY)
                                // numbers.remove(numY)
            // COUNT LIST
                // count1 = sortedArray.count
            // APPEND ARRAY OF DIGITS & COUNT TO FINAL SORTED ARRAY
                // finalArray = [numbers], count


// VERSION 1
    // finalArray = [ ( sortedNumbers: [Array], count: Int) ]
    // iterate = 0
    // for numX in numbers:
        // count = 0
        // numberChecked = numbers.iterate
        // sortedNumbers: Array = []
        // for numY in numbers:
                // if numY == numberChecked:
                        // sortedNumbers.append(numY)
                        // count += 1
        // finalArray.append( (sortedNumbers, count )
        // iterate += 1
    // print finalArray


// -------------------------------------------------------------


// 2. Given an array of dictionaries where each dictionary contains 2 keys “firstName” and “lastName”, create an array of strings called firstNames that contains only the values for “firstName” from each dictionary. Then print the values of the array.

var people: [[String:String]] = [
    [
        "firstName": "George",
        "lastName": "Boole"
    ],
    [
        "firstName": "Vannevar",
        "lastName": "Bush"
    ],
    [
        "firstName": "Ada",
        "lastName": "Lovelace"
    ],
    [
        "firstName": "Ken",
        "lastName": "Thompson"
    ],
    [
        "firstName": "Dennis",
        "lastName": "Ritchie"
    ],
    [
        "firstName": "Donald",
        "lastName": "Knuth"
    ],
    [
        "firstName": "Doug",
        "lastName": "Engelbart"
    ]
]

// VERSION 1
func getFirstName(arrayDict: [[String:String]]) -> [String] {
    var firstNames = [String]()
    for person in people {
        if let firstName = person["firstName"] {
            firstNames.append(firstName)
        }
     }
    return firstNames
}
print(getFirstName(arrayDict: people))


// firstNames = [Strings]
// for dictionary in people
        // for key in dictionary
            // firstNames.append(key[firstName])
// print array


// -------------------------------------------------------------


// 3. Given the same dictionary from the previous exercise, create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space. Print the values in that array.

func getFullNames(arrayDict: [[String:String]]) -> [String] {
    var fullNames = [String]()
    for person in people {
        if let firstName = person["firstName"] {
            if let lastName = person["lastName"] {
                fullNames.append(firstName + " " + lastName)
            }
        }
    }
    return fullNames
}
print(getFullNames(arrayDict: people))
