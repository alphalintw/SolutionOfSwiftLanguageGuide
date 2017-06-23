// EXPERIMENT
// Create a constant with an explicit type of Float and a value of 4.

let explicitFloat = 4

// EXPERIMENT
// Try removing the conversion to String from the last line. What error do you get?

// error: binary operator '+' cannot be applied to operands of type 'String' and 'Int'

// EXPERIMENT
// Use \() to include a floating-point calculation in a string and to include someone’s name in a greeting.

let name = "Kent"
let greeting = "Hello, \(name). Do you know how much is \(1.0 + 3.14) ?"
