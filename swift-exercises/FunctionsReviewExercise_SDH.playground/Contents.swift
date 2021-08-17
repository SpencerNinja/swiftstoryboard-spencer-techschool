import UIKit


// 1.   Define a function 'shoutItOut' which has no parameters and prints out
//      the string "I understand basic functions!". Call the function. Next modify
//      the function so instead of printing, it returns the same String.

func shoutItOut() -> String {
    return "I understand basic functions!"
}

print(shoutItOut())

// ------------------------------------------

// 2.   Define a function 'repeatItOut' which has 1 parameter 'count'.
//      Assign the return value of 'shoutItOut' to a constant 'message'.
//      Make your function print out 'message' (count) times.

//      Hint: To assign the return value of a function, simply call the funtion and
//      assign it to a variable or constant (i.e let result = getReturnValue()). This
//      is how we capture return values of funtions.

func repeatItOut(count: Int) {
    let message = shoutItOut()
    for _ in 0...count - 1 {
        print(message)
    }
}

repeatItOut(count: 3)


// ------------------------------------------

// 3.   Define an emum Type 'Camping'. Add cases for the following items:
//      bicycle, kayak, tent, sleepingBag, food, money, clothes. Assign a
//      String raw value to each case.

enum Camping: String {
    case bicycle = "bicycle"
    case kayak = "kayak"
    case tent = "tent"
    case sleepingBag = "sleepingBag"
    case food = "food"
    case money = "money"
    case clothes = "clothes"
}

// ------------------------------------------

// 4.   Define a funtion 'packTheCar' which has 1 parameter 'item' of type 'Camping'
//      with an external label name 'with'. Return "You've packed the car with (whatever
//      item you've packed)". Access the raw value

func packTheCar(with item: Camping) -> String {
    return "You've packed the car with \(item)"
}
print(packTheCar(with: Camping.bicycle))

// ------------------------------------------

// 5.   Modify your previous function so that it keeps track of which items you've packed
//      in the car. Change the 'item' parameter to variadic so it accepts multiple values
//      and creates an array of your 'items'. Create an emptry array 'packed'. Iterate through
//      the 'items' and append each item to 'packed' Then have your function return the
//      array 'packed'. Call the function, pack some items, and assign the return value
//      to a constant 'packedStuff'

//      Notice: You can have multiple functions with the same name as long as the parameters
//      are different for each. This is known as "function overloading".

func packedInTheCar(items: Camping...) -> [String] {
    var packed = [String]()
    for item in items {
        packed.append(item.rawValue)
    }
    return packed
}
let insideCar = packedInTheCar(items: Camping.money, Camping.bicycle, Camping.food, Camping.tent, Camping.kayak)
print(insideCar)


// ------------------------------------------

// 6.   Define a function 'checkTheCarFor' which has 2 parameters. 1 for the item
//      you're checking for and another for an array of strings to iterate over.
//      Return true or false depending on whether or not the car is packed with (item)

//      Hint: 'contains' is a method you can use to check if a value exists in an array.

func checkTheCarFor(item: String, packed: [String]) -> Bool {
    if packed.contains(item) {
        return true
    } else {
        return false
    }
}
print(checkTheCarFor(item: "bicycle", packed: insideCar))

// ------------------------------------------

// 7.   Define a function 'checkIfCarIsFull' which checks to see if the car is overpacked.
//      You're given a constant 'maxCapacity' with a value of 5 assigned to it. Your function will
//      return a tuple. If the number of items meet or exceed 'maxCapacity' return "The car is full!"
//      as well as an integer indicating how many excess items are in the car. Otherwise
//      it will return "There's still room in the car." and a value indicating how many more items will
//      fit in the car.

let maxCapacity: Int = 5

func checkIfCarIsFull(_ arrayToCheck: [String]) -> (String, Int) {
    if arrayToCheck.count >= maxCapacity {
        return ("The car is full", (maxCapacity - arrayToCheck.count) * -1 )
    } else {
        return ("There's still room in the car", maxCapacity - arrayToCheck.count)
    }
}
print(checkIfCarIsFull(insideCar))

//      BONUS - Use decomposition to break down the tuple into two constants you can use.

//      Print out a string formatted with the appropriate values (i.e. "The car is full and you need
//      to remove (x) items." or "There's still room in the car for (x) items."

let isRoomInCar = checkIfCarIsFull(insideCar).0
let amountOfSpaceOpen = checkIfCarIsFull(insideCar).1

print(isRoomInCar == "The car is full"  ? "\(isRoomInCar) and you need to remove \(amountOfSpaceOpen) items." : "\(isRoomInCar) for \(amountOfSpaceOpen) items." )
