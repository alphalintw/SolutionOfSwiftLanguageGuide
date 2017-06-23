protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

// EXPERIMENT
// Write an enumeration that conforms to this protocol.

enum Elements: ExampleProtocol {
    case fire, water, earth, air
    
    var simpleDescription: String {
        switch self {
        case .fire:
            return "fire"
        case .water:
            return "water"
        case .earth:
            return "earth"
        case .air:
            return "air"
        }
    }
    
    mutating func adjust() {
        switch self {
        case .fire:
            self = .water
        case .water:
            self = .earth
        case .earth:
            self = .air
        case .air:
            self = .fire
        }
    }
}

var element = Elements.fire
element.simpleDescription
element.adjust()
element.simpleDescription

// EXPERIMENT
// Write an extension for the Double type that adds an absoluteValue property.

extension Double {
    var absoluteValue:Double {
        return abs(self)
    }
}
print((-3.1415).absoluteValue)

