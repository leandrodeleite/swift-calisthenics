// # Protocols and Extensions

protocol ExampleProtocol {
  var simpleDescription: String { get }
  mutating func adjust()
}

class SimpleClass: ExampleProtocol {
  var simpleDescription: String = "A very simple class."
  var anotherProperty: Int = 69105
  func adjust(){
    simpleDescription += " Now 100% adjusted."
  }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
print(aDescription)
print(a.anotherProperty)

struct SimpleStructure: ExampleProtocol {
  var simpleDescription: String = "A simple structure"
  mutating func adjust() {
    simpleDescription += " (adjusted)"
  }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
print(bDescription)
print(b.simpleDescription)

// Experiment 1
//


extension Int: ExampleProtocol {
  var simpleDescription: String {
    return "The number \(self)"
  }
  mutating func adjust() {
    self += 42
  }
}
print(7.simpleDescription)
//
var x = 7
x.adjust()
print(x)

// Experiment 2
//


let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
//print(protocolValue.anotherProperty)
// Uncomment to see the error
