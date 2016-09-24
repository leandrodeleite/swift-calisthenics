// # Control Flow

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
  if score > 50 {
    teamScore += 3
  } else {
    teamScore += 1
  }
}
print(teamScore)


var optionalString : String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
  greeting = "Hello, \(name)"
}
print(greeting)

// Experiment 1
var optionalName1: String? = nil
var greeting1 = "Hello!"
if let name1 = optionalName1 {
  greeting1 = "Hello, \(name1)"
} else {
  greeting1 = "No one to greet..."
}
print(greeting1)


let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)
// Experiment2
let nickName2: String = "Johnny"
let fullName2: String? = nil
let informalGreeting2 = "Hi \(fullName2 ?? nickName2)"
print(informalGreeting2)


let vegetable = "red pepper"
switch vegetable {
case "celery":
  print("Add some raisins and malke antos on a log.")
case "cucumber", "watercress":
  print("That would make a good tea sandwich.")
//case let x where x.hasSuffix("pepper"):
//  print("Is it a spicy \(x)?")
// error: ... member .hasSuffix
default:
  print("Everything tastes good in soup.")
// Experiment 2
// remove default case
// error: switch must be exhaustive
}



let interestingNumbers = [
  "Prime": [2, 3, 5, 7, 11, 13],
  "Fibonacci": [1, 1, 2, 3, 5, 8],
  "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
  for number in numbers {
    if number > largest {
      largest = number
    }
  }
}
print(largest)

// Experiment 3
var kindest2: String = ""
var largest2 = 0
for (kind2, numbers2) in interestingNumbers {
  for number2 in numbers2 {
    if number2 > largest2 {
      largest2 = number2
      kindest2 = kind2
    }
  }
}
print("\(largest2) on \(kindest2)")


var n = 2
while n < 100 {
  n = n * 2
}
print(n)


var m = 2
repeat {
  m = m * 2
} while m < 100
print(m)


var total = 0
for i in 0 ..< 4 {
  total += i
}
print(total)

var total2 = 0
for i in 0 ... 4 {
  total2 += i
}
print(total2)
