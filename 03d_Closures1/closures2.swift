// Accepting closures as parameters
func actionPerformed(action: (String) -> Void) {
    // do something
}
// calling this function
actionPerformed{ (string: String) in
    // do something \(place)
}

// Using closures as parameters when they return values
func actionPerformed(action: (String) -> String) {
    // do something
}
actionPerformed{ (string: String) -> String in 
    return string
}
// --> Shorthand parameter names
actionPerformed{ string -> String in 
    return string
}
// --> 
actionPerformed{ string in
    // do something that returns, with or without a return keyword
}
