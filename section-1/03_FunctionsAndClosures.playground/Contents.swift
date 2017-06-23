// EXPERIMENT
// Remove the day parameter. Add a parameter to include today’s lunch special in the greeting.

func greet(name: String, lunch: String) -> String {
    return "Hello, \(name). Today's lunch special is \(lunch)."
}
greet(name: "Bob", lunch: "sushi")

// EXPERIMENT
// Write a function that calculates the average of its arguments

func averageOf(numbers: Double...) -> Double {
    var sum = 0.0
    var count = 0.0
    for number in numbers {
        sum += number
        count += 1
    }
    return sum / count
}
averageOf(numbers: 42, 597, 12)

// EXPERIMENT
// Rewrite the closure to return zero for all odd numbers.

let numbers = [20, 19, 7, 12]
numbers.map({ (number: Int) -> Int in
    var result = 0
    if number % 2 == 0 {
        result = number
    }
    return result
})
