import UIKit

// Classes
/// Classes and structures (structs) are so similar in Swift that it's easy to get them confused at first, but actually there are some important underlying differences:

/// A struct cannot inherit from another kind of struct, whereas classes can build on other classes.
/// You can change the type of an object at runtime using typecasting. Structs cannot have inheritance, so have only one type.
/// If you point two variables at the same struct, they have their own independent copy of the data. With objects, they both point at the same variable.
/// That last point is particularly important: with a struct you know your data is fixed in place, like an integer or other value. This means if you pass your struct into a function, you know it's not going to get modified.

/// override - Child classes can replace parent methods with their own implementations
/// when you declare a class as being final, no other class can inherit from it.

class Dog {
	var name: String
	var breed: String
	
	init(name: String, breed: String) {
		self.name = name
		self.breed = breed
	}
	
	func makeNoise() {}
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

class Poodle: Dog {
	init(name: String) {
		super.init(name: name, breed: "Poodle")
	}
	
	override func makeNoise() {
		print("teste")
	}
}


final class SomeView: UIView {}

class SingerOne {
	var name = "Taylor Swift"
}

var singerOne = SingerOne()
singerOne.name = "Teste"
print(singerOne.name)


struct SingerTwo {
	var name = "Taylor Swift"
}

var singerTwo = SingerTwo()
singerTwo.name = "Teste 2"
print(singerTwo.name)

// Deinitializers

class Person {
	var name = "John Doe"

	init() {
		print("\(name) is alive!")
	}

	func printGreeting() {
		print("Hello, I'm \(name)")
	}
	
	deinit {
		print("\(name) is no more!")
	}
}

for _ in 1...3 {
	let person = Person()
	person.printGreeting()
}

// Mutability
/// If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.
/// However, if you have a constant class with a variable property, that property can be changed.

// Classes summary
/// Classes and structs are similar, in that they can both let you create your own types with properties and methods.
/// One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
/// You can mark a class with the final keyword, which stops other classes from inheriting from it.
/// Method overriding lets a child class replace a method in its parent class with a new implementation.
/// When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
/// Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
/// Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.

