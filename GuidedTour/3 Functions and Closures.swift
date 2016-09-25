// # Functions and Closures

func greet(person: String, day: String) -> String {
  return "Hello \(person), today is \(day)."
}
print(greet(person: "Bob", day: "Tuesday"))

// Experiment 1
//print(greet(person: "Tester"))
//error: missing argument...
func greetx(person: String, day: String, special: String) -> String {
  return "\(person), \(day)'s lunch special is \(special)."
}
print(greetx(person: "Bob", day: "Tuesday", special: "Chilli"))


func greet2(_ person: String, on day: String) -> String {
  return "Hello \(person), today is \(day)."
}
print(greet2("John", on: "Wednesday"))

// Experiment: no labels
func greetx(_ A: String, _ B: String) -> String {
  return "Hi, \(A) and \(B)."
}
print(greetx("Tom", "Jerry"))


func calculateStatistics(scores: [Int]) ->
(min: Int, max: Int, sum: Int) {
  var min = scores[0]
  var max = scores[0]
  var sum = 0

  for score in scores {
    if score > max {
      max = score
    } else if score < min {
      min = score
    }
    sum += score
  }

  return (min, max, sum)
}
let statistics = calculateStatistics(
  scores: [5, 3, 100, 3, 9]
)
print(statistics.sum)
print(statistics.2)
// Experimentx2
print(statistics)


func sumOf(numbers: Int...) -> Int {
  var sum = 0
  for number in numbers {
    sum += number
  }
  return sum
}
print(sumOf) // (Function)
print(sumOf(numbers: 42, 597, 12))
// Experimentx
print(sumOf()) //0

// Experiment 3
func avgOf(numbers: Int...) -> Int {
  var sum = 0
  var count = 0
  for number in numbers {
    sum += number
    count += 1
  }
  return sum/count
}
print(avgOf(numbers: 42, 597, 12))


func returnFifteen() -> Int {
  var y = 10
  func add() {
    y += 5
  }
  add()
  return y
}
print(returnFifteen())


func makeIncrementer() -> ((Int) -> Int) {
  func addOne(number: Int) -> Int {
    return 1 + number
  }
  return addOne
}
var increment = makeIncrementer()
print(increment(7))


func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
  for item in list {
    if condition(item) {
      return true
    }
  }
  return false
}

func lessThanThen(number: Int) -> Bool {
  return number < 10
}

var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanThen))

print(numbers)

let rm =
numbers.map({
  (number: Int) -> Int in
  let result = 3 * number
  return result
})
print(rm)

// Experiment 3
let rodd =
numbers.map({
  (number: Int) -> Int in
  let result = number % 2
  return result
})
print(rodd)


let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)


let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
