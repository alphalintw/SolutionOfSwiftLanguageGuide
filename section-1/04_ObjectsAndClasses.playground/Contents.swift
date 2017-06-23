// EXPERIMENT
// Add a constant property with let, and add another method that takes an argument.

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    let createDate = "2007.06.23"
    func changeNumberOfSides(sides: Int) {
        self.numberOfSides = sides
    }
}

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

// EXPERIMENT
// Make another subclass of NamedShape called Circle that takes a radius and a name as arguments to its initializer. Implement an area() and a simpleDescription() method on the Circle class.

class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return radius * radius * Double.pi
    }
    override func simpleDescription() -> String {
        return "A circle with radius \(radius)."
    }
}
let testCircle = Circle(radius: 5.0, name: "my test circle")
testCircle.area()
testCircle.simpleDescription()
