import UIKit

// 1. You are given the firstName and lastName of a user. Create a string variable called fullName that contains the full name of the user. Print fullName.

let firstName = "Eric"
let lastName = "Clapton"

func getFullName(first: String, last: String) -> String {
    let fullName = first + " " + last
    return fullName
}
print(getFullName(first: firstName, last: lastName))

// -----------------------------------------------------------


// 2. Given a string stored in the variable aString, create a new string called reverse that contains the original string in reverse order. Print the reversed string.

var aString = "the quick brown fox jumps over the lazy dog"

func reverseString(text: String) -> String {
    var reverse = ""
    for char in text {
        let character2 = "\(char)"
        reverse = character2 + reverse
    }
    return reverse
}
print(reverseString(text: aString))


// reversedString = ""
// for char in aString
//      let aString
// print reversedString

// -----------------------------------------------------------


// 3. Print true if sample is a palindrome, and false otherwise. Test your code with several different words.

let sample = "rotator"
//let sample = "batman"

func checkPalindrome(script: String) -> Bool {
    let sample2 = reverseString(text: script)
    if sample == sample2 {
        return true
    } else {
        return false
    }
}
print("'\(sample)' is a palindrome. \(checkPalindrome(script: sample))")

// -----------------------------------------------------------

// 4. Find the longest word in the given sentence

var sentence = "Find the longest word in the problem description"

func findLongestWord(phrase: String) -> String {
    var currentWord = ""
    var longestWord = ""
    for char in phrase {
        if char != " " {
            currentWord.append(char)
        } else {
            if currentWord.count > longestWord.count {
                longestWord = currentWord
            }
            currentWord = ""
            continue
        }
        if currentWord.count > longestWord.count {
            longestWord = currentWord
        }
    }
    return longestWord
}
print("The longest word is: \(findLongestWord(phrase: sentence))")



// currentWord = ""
// longestWord = ""
// for char in sentence
//      if char != " "
//          currentWord.append(char)
//      else
//          if currentWord.length > longestWord.length
//              longestWord = currentWord



