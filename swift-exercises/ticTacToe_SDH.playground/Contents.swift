import UIKit

/**
 You are working on a program which simulates moves in tic tac toe
 
 
 You will need to draw a 3 by 3 board using any configuration of X, O, _ .
 Make sure that no other characters besides X, O, and _ can be used. There are several ways to do this. Be thoughtful. Write it in pseudo and then begin writing your code.
 */

/**
 VERSION 4 - Draw Board
 func drawBoard() {
    var characters = getRandomChars()
    for _ in 1...3 {
        for _ in 1...3 {
            print(characters, terminator: "")
            characters.removeFirst()
        }
        print()
    }
 }
 print(drawBoard())
*/


/**
 VERSION 3 - Draw Board
 get array of random characters
 for line in rangeOf3 (3 lines)
    for space in rangeOf3 (3 spaces on each line)
        print character, no terminator
    print
*/


/**
 VERSION 2 - Draw Board
 if char != X, 0, or _
         print("invalid character")
 else
         for line in range3
                 for space in range3
                         print character, no terminator
                 print
*/


/**
 VERSION 1 - Draw Board
 print("___")
 print("___")
 print("___")
*/


// Write a function which randomizes an array of symbols to be passed into your function which draws the board.


/**
VERSION 3 - Generate Random Characters Array
func getRandomChars() -> [String] {
    var arrayOfChars = [String]()
    let availCharsArray = ["X", "O", "_"]
    for _ in 1...9 {
        let char = availCharsArray.randomElement()
        if char == "X" || char == "O" || char == "_" {
            arrayOfChars.append(char!)
        }
    }
    return arrayOfChars
}
print(getRandomChars())
*/
 

/**
 VERSION 2 - Generate Random Characters Array
 func getRandomChar() {
    arrayOfChars = []
    availCharsArray = ["X", "O", "_"]
    for _ in 1...9 {
        char = availCharsArray.random
        if char == "X" or char == "O" or char == "_" {
            arrayOfChars.append(char)
 */


/**
 VERSION 1 - Generate Random Characters Array
 create empty array to store characters (emptyArray)
 create array of available characters (availArray)
 repeat this 9 times
         if char == X, 0, or _
                 emptyArray.append(availArray.random)
 return emptyArray (which now should have 9 random characters)
*/


// Draw the board, passing in your randomized array of symbols


//VERSION 1 - Random
func getRandomChars() -> [String] {
    var arrayOfChars = [String]()
    let availCharsArray = ["X", "O", "_"]
    for _ in 1...9 {
        let char = availCharsArray.randomElement()
        if char == "X" || char == "O" || char == "_" {
            arrayOfChars.append(char!)
        }
    }
    return arrayOfChars
}
func printBoard(moves: [String]) {
    var list = moves
//    print(list)
    for _ in 1...3 {
        for _ in 1...3 {
            print(list.first!, terminator: "")
            list.removeFirst()
        }
        print()
    }
}
printBoard(moves: getRandomChars())


/** */
//VERSION 1 - Realistic
//func setEmptyBoard() -> [String] {
//    var charArray = [String]()
//    for _ in 1...9 {
//        charArray.append("_")
//    }
//    return charArray
//}
//print(setEmptyBoard())
//func drawEmptyBoard() {
//    for _ in 1...3 {
//        for _ in 1...3 {
//            print("_", terminator: "")
//        }
//        print()
//    }
//}
//drawEmptyBoard()
//func xPlayerMove(board: [String]) -> [String] {
//    var newBoard = [String]()
//    var xChar = ["X"]
//    var randomIndex = (1...9).randomElement()
//    while board.randomIndex == "X" || board.randomIndex == "O" {
//        random.Index = (1...9).randomElement()
//    }
//    board.randomIndex = xChar
//    return board
//}
//func oPlayerMove(board: [String]) -> [String] {
//    var newBoard = [String]()
//    var oChar = ["O"]
//    var randomIndex = (1...9).randomElement()
//    while board.randomIndex == "X" || board.randomIndex == "O" {
//        random.Index = (1...9).randomElement()
//    }
//    board.randomIndex = oChar
//    return board
//}
//func drawBoard(board: [String]) {
//    for _ in 1...3 {
//        for _ in 1...3 {
//            print(board.first!, terminator: "")
//            board.removeFirst()
//        }
//        print()
//    }
//}



/**
 VERSION 1 - Realistic & Random
 get empty array
 print board
 first move
 print board
 second move
 print board
 third move
 print board
 fourth move
 print board
 ...
*/
