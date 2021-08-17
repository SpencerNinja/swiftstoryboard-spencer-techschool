import UIKit

// var apples = 5
var apples: Int = 5



/**
 ==================================================================
 MARCH 4, 2021 NOTES
 ==============================================================
 */

// https://www.hackingwithswift.com/sixty

// PROTOCOLS

// EXTENSIONS

// OPTIONALS


/**
 ==================================================================
 MARCH 2, 2021 NOTES
 ==============================================================
 */


// OBJECT ORIENTED PROGRAMMING


// Swift lets you design your own types in a few ways, of which the most common are call structures or just structs.


// Struc
// strucs are value types
// make separate copies of each Instance
// unlike classes, which are referenced types
// by default, struct and class data members are public not private
// static data members are not accessible in the Instance
// uses protocols
// can customize the initializer

let HOME_LATITUDE = 1234.06
let HOME_LONGITUDE = -3.8
 
struct House {
    var roofType: String
    var firePlace: Bool
    var numWindows: Int
    var numDoors: Int
    var numBedrooms: Int
    var numBathrooms: Double
    var sqFootage: Double
    var location: (Double, Double)
}
 
var myHome = House(roofType: "shingles", firePlace: false, numWindows: 20, numDoors: 3, numBedrooms: 8, numBathrooms: 4.5, sqFootage: 1500.0, location: (HOME_LATITUDE, HOME_LONGITUDE))
var homeCopy = myHome
homeCopy.firePlace = true
 
print(myHome.firePlace)
 
let myHome1 = House(roofType: <#T##String#>, firePlace: <#T##Bool#>, numWindows: <#T##Int#>, numDoors: <#T##Int#>, numBedrooms: <#T##Int#>, numBathrooms: <#T##Double#>, sqFootage: <#T##Double#>, location: <#T##(Double, Double)#>)
 
struct Car {
    var id: Int
    var name: String
    let type: String
    var isRunning: Bool = false
 
    mutating func start() {
        if !isRunning {
            print("Starting the car")
            isRunning = true
        } else {
            print("The car is already running")
        }
 
    }
 
    mutating func stop() {
        if isRunning {
            print("The car has stopped")
            isRunning = false
        } else {
            print("The car isn't running")
        }
 
    }
}
 
var jeep = Car(id: 2345, name: "Bessie", type: "Jeep")
var camaro = Car(id: 10928, name: "Old Red", type: "Chevy")
var prius = Car(id: 08645, name: "White Lightning", type: "Toyota")
var optima = Car(id: 91822, name: "Obsidian", type: "Kia")
var townCar = Car(id: 38485, name: "Tony", type: "Lincoln")
 
var carList = [jeep, camaro, prius, optima, townCar]
 
for car in carList {
    var c = car
    c.start()
}
 
//Computed properties don't actually store a value. Instead, they
// provide a getter and an optional setter to retrieve and set other
// properties and values indirectly
struct Sport {
    var name: String
    var usesBall: Bool
    var isOlympicSport: Bool
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport."
        } else {
            return "\(name) is not an Olympic sport."
        }
    }
}
 
let waterPolo = Sport(name: "Water Polo", usesBall: true, isOlympicSport: true)
let rockClimbing = Sport(name: "Rock Climbing", usesBall: false, isOlympicSport: true)
print(waterPolo.olympicStatus)
print(rockClimbing.olympicStatus)
 
// Property observers
struct Progress {
    var task: String
    var amount: Int {
        willSet {
            print("Task is \(amount)% complete - but about to change to \(newValue)") // before the change happens, it's intercepted. newValue
        }
        didSet {
            print("\(task) is \(amount)% complete")
        }
    }
}
 
var progBar = Progress(task: "Loading data", amount: 0)
 
progBar.amount = 20
 
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        } didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
 
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
 
// Static properties
struct Student {
    static var classSize = 0
    
    private var name: String
    private var id: Int
    private var age: Int = 18
    
    init(name: String, id: Int) {
        self.name = name
        self.id = id
        
        Student.classSize += 1
    }
    
    init(name: String, id: Int, age: Int) {
        self.name = name
        self.id = id
        self.age = age
        
    }
    
}
 
var student1 = Student(name: "Billy", id: 1)
var student2 = Student(name: "Mary", id: 2)
 
print(Student.classSize)
 
 
// Classes
// classes are reference type
// can do Inheritance
 
/*
 Classes have additional capabilities that stucts dont have
 
 Inheritance enables one class to inherit the characteristics of another.
 Type casting enable you to check and interpret the type of a class instance at runtime.
 Deinitializers enable an instance of a class to free up any resources it has assigned.
 Reference counting allows more that one referece to a class instance. CLASSES ARE REFERENCE TYPES NOT VALUE TYPES
 Have to be initialied manually, unlike Strucs which can do it automatically
 
 */
 
class Dog {
    var name: String
    var breed: String
 
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
 
class YellowLab: Dog {
 
    init(name: String) {
        super.init(name: name, breed: "Yellow Lab")
    }
}
 
let fido = Dog(name: "Fido", breed: "Yellow Lab")
 
class Dog {
    func bark() {
        print("Woof")
    }
}
 
class Poodle: Dog {
    
    override func bark() {
        print("Yip")
    }
}
 
let dog = Poodle()
dog.bark()


// CLOSURES
// captures the values of variables and constants that are outside their inner function scope
// can assign to variables
// can pass in as parameters


/**
 ==================================================================
 MARCH 1, 2021 NOTES
 ==============================================================
 */

// CLOSURE
// nameless / anonymous
// can assign to variables
// can accept parameters

// Trailing Closures
// shorthand parameter names: $0, $1 ...


// Rather than this function
func traveling1(place: String) {
    print("I'm traveling in my car to \(place)")
}

traveling1(place: "Gamestop")
let driving1 = {
    print("I'm driving in my car")
}
driving1()

let walking1 = { (place1: String) in
    print("I'm going to \(place1) by foot.")
}
walking1("the store")
let walkingWithReturn = { (place2: String) -> String in
    return "I'm going to \(place2) today!!"
}
let message1 = walkingWithReturn("Gamestop")
print(message1)

/**
 USING CLOSURES WITH OTHER FUNCTIONS
 */
// Passing closures into functions
func travel2(action2: (String) -> String) {
    print("I'm getting ready to go.")
    action2("Comicon")
    print("I have arrived.")
}
travel2 { (place2: String) in
    return "I'm going to \(place2)"
}
travel2{ (place2) in
    "I'm going to \(place2) today!"
}
travel2 {
    "I'm going to \($0) today!"
}
 
func travel3(action3: (String, Int) -> String) {
    print("I'm getting ready to go")
    let description3 = action3("the movies", 60)
    print(description3)
    print("I have arrived")
}
travel3 {
    "I'm going to \($0) at \($1) mph"
}
 
// Trailing closure syntax
 
// If the last parameter to a function is a closure
// pass the closure directly after the parameters inside curly braces
 
travel3 {
    print("I'm driving in my car.")
}
travel3 { (place4) in
    "I'm going to \(place4) today!"
}
 
//If you use any external values inside your closure, Swift captures them
//and essentially makes copies of them. Swift does this behind the scenes
//They are called closures because they "close" over these values
 
 
//If we want to track how often our closure is called
 
func travelCount() -> (String) -> () {
    var count = 0

    return {
        print("I've been to \($0) \(count) times")
        count += 1
    }
}

let closure1 = travelCount()
closure1("Portland")
closure1("Portland")
closure1("Portland")
 
let add = { (val1: Int, val2: Int) -> Int in
    return val1 + val2
}
let sub = { (val1: Int, val2: Int) -> Int in
    return val1 - val2
}
// We can store them in an array just like any other type
var mathArray = [add, sub]
print(mathArray[0](5, 5))
let mult = { (val1: Int, val2: Int) -> Int in
    return val1 * val2
}
mathArray.append(mult)
for mathItem in mathArray {
    print(mathItem(5, 5))
}
let number1 = 10
let number2 = 4
func evaluate(num1: Int, num2: Int, result: (Int, Int, Int)-> ()) {
    let add = num1 + num2
    let sub = num1 - num2
    let mult = num1 * num2
    result(add, sub, mult)
}
evaluate(num1: number1, num2: number2) {
    print("Add: \($0)")
    print("Sub: \($1)")
    print("Mult: \($2)")
}
 
// If the last parameter of a function is a closure, you can use
// trailing closure syntax when you call the function.
// Swift automatically provides shorthand parameter names like $0 and $1
// If you use external values inside a closure, they will be captured
// so the closure can refer to them later
 
// API REQUEST SIMULATION
 
// Function 1
func sampleFunction() {
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
        print("Response from delayed sample function")
    }
}
sampleFunction()
 
 
// Function 2
func sampleFunction2() {
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()) {
        print("Response from delayed sample function")
    }
    print("After the response from delayed sample function")
}
 
// You can see that you have to wait until you get your response from
// the API first before you can on to dealing with that response. We deal
// with that using a completion
 
// A completion block is a block of code that will be executed after the
// main task is completed. We use a closure for this
 
 
 
func simulateApiRequest(completion: @escaping() -> ()) {
    
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
        print("Response from delayed sample function")
        completion() // To be executed after the main task
    }
        
}
 
simulateApiRequest {
    print("API request completed!")
}


// LAMBDA

/**
 ==================================================================
 DAY 3 NOTES
 ==============================================================
 */

var str = "Hello, playground"

/**
 FUNCTIONS
 */

// functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to "CALL" the function to perform its task when needed.
// when you define a function, you can optionally define one or more name typed values that the function takes as input, know as parameters. You can also optionally define a type of value that the function will pasas back as output when its done, known as its return type.




func moveForward(numTimes: Int) {       // pass in parameters
    for _ in 1...numTimes {
        print("Move forward")
    }
}

moveForward(numTimes: 5)                // pass in arguments




print("a", "b", "c", separator: ":", terminator: "\n")      // alternate way to format strings

func sayHello(to name: String) {        // label "to" is external, name is internal (only usable in the function's scope
    print("Hello \(name)")      // string interpolation: using variables inside a string
}

sayHello(to: "Kam")



// Ways in which you can accept arguments

// example of multiple paraments and a default value
func greet(_ person: String, nicely: Bool) {     // adding an underscore removes the need to display type in the function call
    if nicely {
        print("Hello \(person)")
    } else {
        print("Oh no, its \(person)!")
    }
}

greet("Tom", nicely: false)    // You don't have to pass in a boolean argument if you assign the Boolean to true in the parameter because the default is true

// Functions that return a value

func reverse(word: String) -> String {
    var result = ""
    for char in word {  // loop through each character in our word
        result.insert(char, at: result.startIndex)     // insert each character at the start index of result
    }
    return result
}

print(reverse(word: "Hello"))

let myResult1 = reverse(word: "Superman")

myResult1.count
print(myResult1)

// Return a tuple
func squareMe(number: Int) -> (Int, Int) {
    return (number, number * number)
}

print(squareMe(number: 3))

let results = squareMe(number: 5)

let (firstValue, secondValue) = results

print(firstValue)
print(secondValue)



func isDivisibleBy(_ number: Int, _ number2: Int) -> Bool {
    number % number2 == 0 ? true : false
}

isDivisibleBy(478, 12)



func getRandomNumber(low: Int, high: Int) -> Int {
    Int.random(in: low...high)
}

print(getRandomNumber(low: 5, high: 27))

// variadic parameters (multiple parameters of the same TYPE
func printNumbers(numbers: Int ...) {
    print(numbers)
}

printNumbers(numbers: 1,2,3,4,5)



/**
 ==================================================================
 DAY 2 NOTES
 ==============================================================
 */

var str2 = "Hello, playground"

/**
 OPERATOR
*/

// an operator is a special symbol or phrase that you use to check, change, or combine values

// Arithmetic operators
// + - * / % **

// urany operate o a single target
// binary operate on two targets
// ternary operate on three targets

// The values that the operators affect are called operands

let first = 48
let second = 3

var total = first + second
var otherNum = -5

let difference = first - second
let product = first * second
let divided = first / second

let num1 = 15
let num2 = 4

let remainder = num1 % num2
print(remainder)

if num1 % 2 == 0 {
    print("\(num1) is even")
}

let classSize = 45
let treats = 200

print(treats % classSize)

// Compound Assignment Operators
var score = 77
score = score + 5
score += 10     // score = score + 10
score -= 20

var count = 0
let list = [1, 2, 3]
for _ in list {
    count += 1
}

// Operator overloading
var array1 = [0, 2, 4]
var array2 = [5, 7, 9]

print(array1 + array2)  // concatonates arrays into one

// Comparison Operators

let numA = 12
let numB = 16

numA == numB    // returns false
numA != numB    // returns true
numA > numB     // returns false
numA < numB     // returns true
numA >= numB    // returns false
numA <= numB    // returns true

"John" <= "Ringo"   // returns true. It compares not by the length, but alphabetically which comes first. J is less than R

// Conditionals

// blackjack sim

let card1 = 5
let card2 = 9
var totalDrinks = 0
let skyIsBlue = false
let totalBJ = card1 + card2

totalDrinks += 3

if totalBJ == 21 {
    print("Blackjack")
} else if (totalBJ <= 16 || totalDrinks > 5) && skyIsBlue {
    print("Hit me")
} else if card1 == card2 && totalBJ < 14 {
    print("Double down")
} else {
    print("Go home")
}

// inventory
var inventory = [String]()
inventory.append("arrows")
inventory.append("bow")
inventory.append("compass")
inventory.append("cards")

print(inventory)

//inventory.removeAll()

if inventory[2] == "compass" {
    print("We have a compass")
} else {
    print("We have no compass")
}


// driver license

let age1 = 15

if age1 >= 16 {
    print("Can drive")
} else {
    print("Sorry pal, you're talking the bus.")
}

if !(age1 < 16) {
    print("Can drive")
} else {
    print("Sorry pal, you're talking the bus.")
}

// Logical Operators
// && and
// || or
// !  not


// Switch Statement
// better if/else for single value conditional
// has to be exhaustive (include all conditions)

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Grab your coat")
case "sunny":
    print("Wear sunscreen")
default:
    print("Have a nice day")
}


let x = 3
var y = 0

switch x {
case 1:
    y = 1
case 2:
    y = 2
default:
    y = 5
}


let score1 = 77

switch score1 {
case 0...50:    // any value between 0 and 50 inclusive
    print("Miserable failure")
case 51..<88:   // any value from 51 up to 87
    print("Not bad!")
default:
    print("You did fantastic!")
}

// Ternary Operator

// instead of doing this:
if score1 >= 85 {
    print("You did great")
} else {
    print("Not so good")
}

// do this:
print(score1 >= 85 ? "You did great" : "Not so good")


/**
 LOOPS
 */

var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

// For in loop
for number in numbers {
    print(number)
}

var count1 = 0

for _ in 5...20 {
    count1 += 1
    print("This is a test \(count1)")
}

// nested for loops
for _ in 1...10 {
    for num in numbers {
         print(num)
    }
}

// While loop
var numberA = 100

while numberA != 10 {
    print(numberA)
    numberA -= 5
}

// Repeat While Loop
// performs a single pass through the loop first, before considering the loop's condition
repeat {
    print(numberA)
} while numberA >= 10


var numberB = 100

while numberB != 10 {
    if numberB % 2 == 0 {
        print(numberB)
        numberB -= 5
        print("Now is \(numberB)")
    } else {
        print(numberB)
        numberB -= 3
        print("Now is \(numberB)")
    }
}



/**
 ==================================================================
 DAY 1 NOTES
 ==============================================================
 */

var str3 = "Hello, playground"   // String type variable

let myNum = 34  // Constant keyword, the variable is unable to change. Preferred method.

// ____________________________________
// Strings

//var result = ""
//var greeting = "Hello there"
//
//let myCount = greeting.count
//print(myCount)
//
//let quotation = """
//abc
//def
//ghi
//"""
//
//var part1 = "Hello"
//var part2 = " there"
//
//print(part1 + part2)
//print("My greeting is: \( part1 + part2 )")     // string interpolation
//
//let maximumNumberOfLoginAttempts = 10
//var currentLoginAttempt = 0

// ____________________________________
// Subscript syntax

let greeting = "Guten Tag!"

greeting[greeting.startIndex]

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)

// ____________________________________
// Integers
var age = 18
var ammo = 50
var health = 100

// ____________________________________
// Doubles
let weight = 195.7
var cost = 1_2500.00   // use underscore where a comma would be

// ____________________________________
// Boolean
var isAlive = true
isAlive = false
var isLoggedIn = false

/**
 COMPLEX TYPES
 */

/**
an array stores values of the smae type in an ordered list. the same value can appear in an array multiple times at different positions
 */
// Arrays
// old way, not used much
var myArray: Array<Int> = []

// new way
var emptyArray = [Int]()

let dad = "Homer"
let mom = "Marge"
let son = "Bart"
let daughter1 = "Lisa"
let daughter2 = "Maggie"

var simpsons = [dad, mom, son, daughter1, daughter2]

print(simpsons.count)

let bart1 = simpsons[2]

var newArray = [String]()

newArray.append(dad)
newArray.append(mom)
newArray.append(son)
newArray.append(daughter1)
newArray.append(daughter2)

print(newArray.count)

let bart = newArray[2]

newArray.append("Grandpa")
print(newArray)

// Sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "blue", "red", "blue"])

print(colors)
print(colors2)

// Dictionaries
var namesOfIntegers = [Int:String]()

namesOfIntegers[1] = "one"
namesOfIntegers[2] = "two"
namesOfIntegers[3] = "three"

print(namesOfIntegers)

for (key, value) in namesOfIntegers {
    print("\(key) => \(value)")
}

for item in namesOfIntegers.keys {
    print(item)
}

for item in namesOfIntegers.values {
    print(item)
}

print(namesOfIntegers.keys)

namesOfIntegers = [:]   // empties dictionary

let capitals = [
    "Alabama": "Montgomery",
    "Alaska": "Juno",
    "Arizona": "Phoenix",
    "Arkansas": "Little Rock"
]

let city = capitals["Alabama", default: "Unknown"]

// Tuples
// enable you to create and pass around groupings of values
// you can use a tuple to return multiple values from a function as a single compound value
// the values can be of any type and don't have to be the same TYPE as each other
// fixed in size and you cannot add or remove items or change the TYPE
// access elements using the index or the name

var fullName = (first: "George", last: "Bool")

// by index
let givenName = fullName.0

// by name
let lastName = fullName.last

fullName.1 = "Costanza"

print(fullName)

let http404Error = (404, "Not Found")

// decomposition
let(statusCode, statusMessage) = http404Error

print("The status code is \(statusCode)") // prints "The status code is 404"

// Enums (Enumeration)
// an enumberation defines a common TYPE for a group of related values and enables you to work with those values in a type-safe way within your code

// if you wanted to write some code to represent a success or failure of a process, you could represent it as strings

let result = "failure"
let result2 = "failed"
let result3 = "fail"

// with enums we can define a result TYPE that is either a success or failure

enum Result {
    case success
    case failed
}

let myResult = Result.success
let otherResult = Result.failed

enum ActivityWithValue {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volumne: Int, song: String)
}

let activity = ActivityWithValue.talking(topic: "sports")
let sing = ActivityWithValue.singing(volumne: 5, song: "Take me out to the ballgame")

// along with storing simple values, enums can also store associated values attached to each case.

// raw values
enum Planet: Int {
    case mercury = 1
    case venus  // each additional case will adopt the consecutive number
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
    case pluto
}

let earth = Planet(rawValue: 3)

enum Pokemon: String {
    case pika = "Pikachu"
    case bulb = "Bulbasaur"
    case rai = "Raichu"
    case gold = "Goldeen"
}

print(Pokemon.pika.rawValue)

// iterate
enum Drinks: CaseIterable {
    case coffee, tea, juice
}

var allDrinks = Drinks.allCases

for x in allDrinks {
    print(x)
}

print(allDrinks.count)


