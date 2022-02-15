import UIKit

// Structs

struct Person {
	let firstName: String
	let lastName: String
	let age: Int
}

let user = Person(firstName: "Pessoa", lastName: "Generica", age: 88)
print(user)
print(user.lastName)

// Computed properties
struct Address {
	let street: String
	var city: String
	let state: String
	
	var fullAddress: String {
		return "\(street), \(city), \(state)"
	}
	
	mutating func setCity()  {
		city = "SP"
	}
}

let address = Address(street: "Rua 1", city: "Cidade 2", state: "Estado 3")
print(address.fullAddress)

// Property observers

struct Progress {
	var task: String
	var amount: Int {
		// observers action after a property changes
		didSet {
			print("\(task) is now \(amount)% complete")
		}
		// observers action before a property changes,
		willSet {
				   print("\(task) is now \(amount)% complete")
		}
	}
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// Methods
struct City {
	var population: Int

	func collectTaxes() -> Int {
		return population * 1000
	}
}

let london = City(population: 9_000_000)
print(london.collectTaxes())

// Mutating methods

struct Person2 {
	var name: String

	mutating func makeAnonymous() {
		name = "Anonymous"
	}
}

var person2 = Person2(name: "Ed")
print(person2.makeAnonymous())
