// # A Swift tour

print("Hello, world!")

// ## Simple Values

var myVariable = 42
myVariable = 50
let myConstant = 42

print(myVariable)
print(myConstant)

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

print(implicitInteger)
print(implicitDouble)
print(explicitDouble)

// Experiment 1
let explicitFloat = 4

print(explicitFloat)

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

print(widthLabel)

// Experiment 2
// error: binary operator...
//let widthLabel = label + width

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print(appleSummary)
print(fruitSummary)

// Experiment 3
let name = "Ann"
let xp3a = "Greetings \(name)\(explicitFloat)!"
print(xp3a)
let greet3 = name + String(explicitFloat)
let xp3b = "Greetings \(greet3)!"
print(xp3b)


var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
print(shoppingList)

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
print(occupations)

let emptyArray = [String]()
let emptyDictionary = [String:Float]()
print(emptyArray)
print(emptyDictionary)

shoppingList = []
occupations = [:]
print(shoppingList)
print(occupations)
