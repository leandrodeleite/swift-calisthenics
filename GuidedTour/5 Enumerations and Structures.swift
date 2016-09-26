// # Enumerations and Structures

enum Rank: Int {
  case ace = 1
  case two, tree, four, five, six, seven, eight, nine, ten
  case jack, queen, king
  func simpleDescription() -> String {
    switch self {
      case .ace:
        return "ace"
      case .jack:
        return "jack"
      case .queen:
        return "queen"
      case .king:
        return "king"
      default:
        return String(self.rawValue)
    }
  }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
print(ace)
print(aceRawValue)
// Experimentx
print(Rank.ace)
print(Rank.jack)
print(Rank.tree)
print(ace.rawValue)

// Experiment 1
//

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}


enum Suit {
  case spades, hearts, diamonds, clubs
  func simpleDescription() -> String {
    switch self {
      case .spades:
        return "spades"
      case .hearts:
        return "hearts"
      case .diamonds:
        return "diamonds"
      case .clubs:
        return "clubs"
    }
  }
  // Experiment 2
  func color() -> String {
    switch self {
      case .spades, .clubs:
        return "black"
      case .hearts, .diamonds:
        return "red"
    }
  }

}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
print(hearts)
print(heartsDescription)
//
print(Suit.hearts)
print(heartsDescription)
// Experiment 2
print(hearts.color())
print(Suit.diamonds.color())
print(Suit.clubs.color())
print(Suit.spades.color())


struct Card {
  var rank: Rank
  var suit: Suit
  func simpleDescription() -> String {
    return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
  }
}
let threeOfSpades = Card(rank: .tree, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print(threeOfSpades)
print(threeOfSpadesDescription)

// Experiment 3
//


enum ServerResponse {
  case result(String, String)
  case failure(String)
}
let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
  case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
  case let .failure(message):
    print("Failure... \(message)")
}

//print(success)
//print(failure)




//Experiment 4
