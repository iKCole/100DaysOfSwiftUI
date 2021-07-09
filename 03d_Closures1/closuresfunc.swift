import UIKit

// Closures
// Function that is assigned to a variable, is called closures. has no name or space to write any parameters
let driving = {
    // do something
    print("driving mode")
}
// Call this variable function with ()
driving()

// Accept parameters in closures
let driving = { (destination: String) in 
    print("I am driving to \(destination) in my car")
}
// ==>
driving("Rochester")

// Return values from closures
let approxMiles = { (averageMiles: String) -> String in
    return "Approximate miles to a destination is \(averageMiles)"
}
let miles = approxMiles("134 miles")
print(miles)

// Closures can be treated as strings/integers, it can be passed into functions
func drivingAction(action: () -> Void) {
    print("details")
    action()
}
drivingAction(action: driving)