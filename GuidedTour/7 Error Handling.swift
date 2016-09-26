// # Error Handling

enum PrinterError: Error {
  case outOfPaper
  case noToner
  case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
  if printerName == "Never Has Toner" {
    throw PrinterError.noToner
  } else if printerName == "On Fire" { // Experiment 2 part
    throw PrinterError.onFire
  }
  return "Job sent"
}

do {
  let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
  print(printerResponse)
} catch {
  print(error)
}

// Experiment 1
do {
  let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
  print(printerResponse)
} catch {
  print(error)
}


do {
  let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
  print(printerResponse)
} catch PrinterError.onFire {
  print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
  print("Printer error: \(printerError).")
} catch {
  print(error)
}

// Experiment 2
//
let thePrinter = "On Fire" //"Never Has Toner" //"Gutemberg"
do {
  let printerResponse = try send(job: 1440, toPrinter: thePrinter)
  print(printerResponse)
} catch PrinterError.onFire {
  print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
  print("Printer error: \(printerError).")
} catch {
  print(error)
}


let printerSucces  = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")




var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
  fridgeIsOpen = true
  defer {
    fridgeIsOpen = false
  }

  let result = fridgeContent.contains(food)
  return result
}
print(fridgeContains("banana"))
print(fridgeIsOpen)
