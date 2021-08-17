import UIKit

var str = "Hello, playground"


// ----------------------------------------


// 1. You are given 2 Doubles d1 and d2. Print their average.

let d1 = 2.0
let d2 = 5.0


func getAverage(numbers: Double ...) -> Double {
    var averageNum = 0.0
    var count = 0.0
    for num in numbers {
        averageNum += num
        count += 1
    }
    return averageNum / count
}
print("1. The average is \( getAverage(numbers: d1, d2) )")

// Alternate 1:
//func getAverage(num1: Double, num2: Double) -> Double {
//    return (num1 + num2) / 2
//}
//print("1. The average is \(getAverage(num1: d1, num2: d2))")


// ----------------------------------------


// 2. You are given 3 grades stored in 3 variables of type Double - finalsGrade, midtermGrade, and projectGrade. These grades are used to compute the grade for a class. finalsGrade represents 50% of the grade. midtermGrade represents 20% of the grade. projectGrade represents 30% of the final grade. Print the grade for the class.

let finalsGrade = 40.0
let midtermGrade = 80.0
let projectGrade = 60.0


var classGrade = 0.0
func getClassGrade() -> Double {
    let finalsPercent = 0.50
    let midtermPercent = 0.20
    let projectPercent = 0.30
    
    let calcFinalsGrade = finalsGrade * finalsPercent
    let calcMidtermGrade = midtermGrade * midtermPercent
    let calcProjectGrade = projectGrade * projectPercent
    
    classGrade = calcFinalsGrade + calcMidtermGrade + calcProjectGrade
    return classGrade
}
print("2. The grade for the class is \( getClassGrade() )")



// ----------------------------------------


// 3. You have the cost of a meal at a restaurant stored in a variable mealCost of type Double. You would like to leave a tip of a certain percentage. The percentage is stored in a variable tip of type Int. Print the total cost of the meal.

let mealCost:Double = 16.25
let tip:Int = 18


func calcTotalCost() -> Double {
    var totalCost = 0.0
    let tipPercentage = (Double(tip) / 100)
    totalCost = mealCost * tipPercentage + mealCost
    return totalCost
}
print("3. The total cost of the bill is \( calcTotalCost() )")


// ----------------------------------------


// 4. You are given three grades obtained by 3 students in a class stored in variables grade1, grade2, grade3 of type Double. You are also given your grade in the class stored in a variable yourGrade of type Double. Print "Above average" if your grade is greater than the class average or "Below average” otherwise. Note: the average of the class includes your grade.

let grade1 = 75.0
let grade2 = 90.0
let grade3 = 53.0
let yourGrade = 82.0


func gradeComparedToAvg() -> String {
    var resultMessage = ""
    var avgGrade = 0.0
    avgGrade = Double( (grade1 + grade2 + grade3 + yourGrade) / 4 )
    if avgGrade > yourGrade {
        resultMessage = "ABOVE AVERAGE"
    } else {
        resultMessage = "BELOW AVERAGE"
    }
    return resultMessage
}
print("4. Your grade is \( gradeComparedToAvg() )")


// ----------------------------------------


// 5. A farmer harvests wheat from a number of wheat fields, given in a variable numberOfFields of type Int. Each field produces the same quantity of wheat provided in a variable wheatYield of type Double. Sometimes the harvest is increased by 50% due to favorable weather conditions. You are given this information in a variable weatherWasGood of type Bool. Print the total amount of wheat that the farmer will harvest.

let numberOfFields:Int = 5
let wheatYield:Double = 7.5
let weatherWasGood:Bool = true


func wheatHarvested() -> Double {
    var harvestedWheat = Double(numberOfFields) * wheatYield
    if weatherWasGood {
        harvestedWheat *= 1.5   // amount of wheat increased by 50%
    }
    return harvestedWheat
}
func weatherCondition() -> String {
    if weatherWasGood {
        return "good"
    } else {
        return "bad"
    }
}
print("5. The amount of harvested wheat was \( wheatHarvested() ) because the weather was \( weatherCondition() )")

