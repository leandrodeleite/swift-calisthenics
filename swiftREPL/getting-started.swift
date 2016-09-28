// swift.org/getting-started/#using-the-repl

// 1+2
print(1+2)

let greeting = "Hello!"
print(greeting)

//let answer = "forty"-"two"
let answer = "forty-two"

//"Hi!".re

let numbers = [1,2,3]
for n in numbers.reversed() {
  print(n)
}

// On macOS
// import Darwin
// arc4random_uniform(10)

// On Linux
import Glibc
// random() % 10
let r = random() % 10
print(r)
