import UIKit

// 1. You are working on a game in which your character explores a grid-like map. You are given the original location of the character and an array of steps the character will take. A step .up will increase the y coordinate by 1. A step .down will decrease the y coordinate by 1. A step .right will increase the x coordinate by 1. A step .left will decrease the x coordinate by 1. Print the final location of the character after all the steps have been taken.

enum Direction {
    case up
    case down
    case left
    case right
}

var location = (x: 0, y: 0)

var steps: [Direction] = [.up, .up, .left, .down, .left]


// VERSION 1
for direction in steps {
    switch direction {
    case .up:
        location.y += 1
    case .down:
        location.y -= 1
    case .right:
        location.x += 1
    case .left:
        location.x -= 1
    }
}
print(location)

// for direction in steps
        // if Direction.up
                // location.y += 1
        // elif Direction.down
                // location.y -= 1
        // elif Direction.left
                // location.x -= 1
        // elif Direction.right
                // location.x += 1
        // else
            // print error
// print location


// ------------------------------------------------------

// 2. Given the CoinType enumeration which describes different coin values and moneyArray which has tuples(amount, coinType). Print the total value of the coins.

enum CoinType: Int {
    case penny = 1
    case nickle = 5
    case dime = 10
    case quarter = 25
}

var moneyArray:[(Int,CoinType)] = [
    (22,.penny),
    (17,.nickle),
    (3,.quarter),
    (42,.penny),
    (4,.dime),
    (8,.quarter)]

// VERSION 2
var totalValue2 = 0
for (amount, coinType) in moneyArray {
    switch coinType {
    case .penny:
        totalValue2 += amount * 1
    case .nickle:
        totalValue2 += amount * 5
    case .dime:
        totalValue2 += amount * 10
    case .quarter:
        totalValue2 += amount * 25
    }
}
print(totalValue2)

// VERSION 1
//var totalValue = 0
//for tuple in moneyArray {
//    switch tuple.1 {
//    case .penny:
//        totalValue += 1
//    case .nickle:
//        totalValue += 5
//    case .dime:
//        totalValue += 10
//    case .quarter:
//        totalValue += 25
//    }
//}
//print(totalValue)

// ------------------------------------------------------

// 3. 1) Define an enumeration named HandShape with three members: .rock, .paper, .scissors.
//    2) Define an enumeration named MatchResult with three members: .win, .draw, .lose.
//    3) Write a function called match that takes two hand shapes and returns a match result. It should return the outcome for the first player (the one with the first hand shape).
//    4) Call the match function with the following combinations and print the results:
            // .scissors, .scissors
            // .rock, .scissors
            // .scissors, .paper
            // .rock, .paper


enum HandShape {
    case rock
    case paper
    case scissors
}

enum MatchResult {
    case win
    case draw
    case lose
}

// VERSION 2
func beats(hand1: HandShape, hand2: HandShape) -> MatchResult {
    if hand1 == hand2 {
        return .draw
    } else if hand1 == .rock && hand2 == .scissors {
        return .win
    } else if hand1 == .paper && hand2 == .rock {
        return .win
    } else if hand1 == .scissors && hand2 == .paper {
        return .win
    } else {
        return .lose
    }
}
print("Scissors vs Scissors: \(beats( hand1: .scissors, hand2: .scissors))")
print("Rock vs Scissors: \(beats( hand1: .rock, hand2: .scissors))")
print("Scissors vs Paper: \(beats( hand1: .scissors, hand2: .paper))")
print("Rock vs Paper: \(beats( hand1: .rock, hand2: .paper))")

// VERSION 1
//func beats(hand1: HandShape, hand2: HandShape) -> MatchResult {
//    let combo = (hand1, hand2)
//    switch combo {
//    case (.rock, .rock):
//        return .draw
//    case (.rock, .paper):
//        return .lose
//    case (.rock, .scissors):
//        return .win
//    case (.paper, .rock):
//        return .win
//    case (.paper, .paper):
//        return .draw
//    case (.paper, .scissors):
//        return .lose
//    case (.scissors, .rock):
//        return .lose
//    case (.scissors, .paper):
//        return .win
//    case (.scissors, .scissors):
//        return .draw
//    }
//}
//print("Scissors vs Scissors: \(beats( hand1: .scissors, hand2: .scissors))")
//print("Rock vs Scissors: \(beats( hand1: .rock, hand2: .scissors))")
//print("Scissors vs Paper: \(beats( hand1: .scissors, hand2: .paper))")
//print("Rock vs Paper: \(beats( hand1: .rock, hand2: .paper))")


// ------------------------------------------------------

// 4. Write a function called minmax that takes two integers and returns both the minimum and the maximum values inside a tuple. Call the function with the following values and print the results:
            // 4, 6
            // 7, 2
            // 8, 8

// VERSION 1
func minmax(num1: Int, num2: Int) -> (Int, Int) {
    if num1 < num2 {
        return (num1, num2)
    } else {
        return (num2, num1)
    }
}
print("Given the numbers \(4) and \(6), here are the minimum and maximum (min, max): \(minmax(num1: 4, num2: 6))")
print("Given the numbers \(7) and \(2), here are the minimum and maximum (min, max): \(minmax(num1: 7, num2: 2))")
print("Given the numbers \(8) and \(8), here are the minimum and maximum (min, max): \(minmax(num1: 8, num2: 8))")

