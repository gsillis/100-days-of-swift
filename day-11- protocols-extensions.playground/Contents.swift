import UIKit

// Protocol
protocol Model: Codable, Hashable {}

struct MyModel: Model {}

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

// Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

// Extensions
/// Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
print(number.squared())

// Protocol extensions
/// Protocols let you describe what methods something should have, but don’t provide the code inside. Extensions let you provide the code inside your methods, but only affect one data type – you can’t add the method to lots of types at the same time.

/// Protocol extensions solve both those problems: they are like regular extensions, except rather than extending a specific type like Int you extend a whole protocol so that all conforming types get your changes.

/// Swift’s arrays and sets both conform to a protocol called Collection, so we can write an extension to that protocol to add a summarize() method to print the collection neatly

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

// Protocol-oriented programming

protocol Id {
    var id: String { get set }
    func identify()
}

extension Id {
    func identify() {
        print("My ID is \(id).")
    }
}

struct Users: Id {
    var id: String
}

let twostraws = Users(id: "twostraws")
twostraws.identify()

// Summary
/// Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
/// You can build protocols on top of other protocols, similar to classes.
/// Extensions let you add methods and computed properties to specific types such as Int.
/// Protocol extensions let you add methods and computed properties to protocols.
/// Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.
