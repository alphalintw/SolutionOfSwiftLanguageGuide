enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
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
    
    static let allValues = [ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king]
}

// EXPERIMENT
// Write a function that compares two Rank values by comparing their raw values.

func compareRankRaw(firstRank: Rank, sencondRank: Rank) -> String {
    if firstRank.rawValue > sencondRank.rawValue {
        return "First rank's raw value is bigger."
    } else if firstRank.rawValue < sencondRank.rawValue {
        return "First rank's raw value is smaller."
    } else {
        return "Two ranks' raw value are equal."
    }
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
    
    static let allValues = [spades, hearts, diamonds, clubs]
}

// EXPERIMENT
// Add a color() method to Suit that returns “black” for spades and clubs, and returns “red” for hearts and diamonds.

enum SuitWithColor {
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
    
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds:
            return "red"
        }
    }
}
let clubs = SuitWithColor.clubs
let clubsColor = clubs.color()

// EXPERIMENT
// Add a method to Card that creates a full deck of cards, with one card of each combination of rank and suit.

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    static func createDeck() -> [Card] {
        var deck = [Card]()
        for suit in Suit.allValues {
            for rank in Rank.allValues {
                deck.append(Card(rank: rank, suit: suit))
            }
        }
        return deck
    }
}
let deck = Card.createDeck()

// EXPERIMENT
// Add a third case to ServerResponse and to the switch.

enum ServerResponse {
    case Result(String, String)
    case Error(String)
    case UnknownError(String)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese.")

switch success {
case let .Result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .Error(message):
    print("Failure...  \(message)")
case let .UnknownError(message):
    print(message)
}
