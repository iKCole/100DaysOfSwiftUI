//
//  func.swift
//  02d_Functions
//
//  Created by Isaac Coleman on 7/7/21.
//

import Foundation
// Accept paramater, must have a data type
    func receive(incomingMessage: String) {
        // do something with incomingMessage
        print("you have received \(incomingMessage)")
    }
// Calling this func
    //receive(incomingMessage: "Hey")


// To send data out after calling func, must have specific type
// use tuples if return multiple data
    func send(newMessage: String) -> String {
        return newMessage
    }
    
    let sendMsg = send(newMessage: "Hi")

 // Paramater labels: when you want to use one inside a function and other externally when calling the function
    func sendMessage(to receiver: String) {
        print("Sending to a receiver, \(receiver)")
    }
    
   // sendMessage(to: "send to")
    
// Omitting paramater label, use an underscore _, especially for external paramater
    func delivered(_ sentMsg: String) {
        print("Delivery: \(sentMsg)")
    }
    
   // delivered("Sent")

// Variadic function: accepting any number of parameters of the same type, To make function variadic, use "..."" after its type. (Note: Swift converts input to an array)
    func sendToMany(addresses: String...) {
        for address in addresses {
            print("message to addresses: \(address)")
        }
    }

   //sendToMany(addresses: "ike", "Maa", "Cole", "Bella")

// Throwing functions using throws keyword
    func sendConfirm(_ sentMsg: String) throws -> Bool {
        if sentMsg.isEmpty {
            throw SendFailure.blankMessage
        }

        return true
    }

    enum SendFailure: Error {
        case invalidAddress
        case blankMessage
    }

// To able to run throwing functions (handling error thrown), use '"try" and handle errors using "catch"
    do {
        try sendConfirm("")
        print("sent successfully")
    } catch {
        print("Not successful due to error")
    }
