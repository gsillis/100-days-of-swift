import UIKit

// Lazy properties
/// Swift will only create a lazy var when it’s first accessed
/// Lazy properties must have an initializer

struct LazyExample {
	lazy var view = UIView()
}

// Static properties and methods
// share specific properties and methods across all instances of the struct by declaring them as static
struct StaticExample {
	let example1: String
	static let example2:  String = "example"
}

print(StaticExample.example2)

// Access control
/// restrict which code can use properties and methods
/// private, fileprivate, internal, public and open
// *https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html*
/// Open access is the highest (least restrictive) access level and private access is the lowest (most restrictive) access level.

struct Person3 {
	private var id: String
	
	init(id: String) {
		self.id = id
	}
	
	func identify() -> String {
		return "My social security number is \(id)"
	}
}

// Summary
// You can create your own types using structures, which can have their own properties and methods.
// You can use stored properties or use computed properties to calculate values on the fly.
// If you want to change a property inside a method, you must mark it as mutating.
// Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
// Use the self constant to refer to the current instance of a struct inside a method.
// The lazy keyword tells Swift to create properties only when they are first used.
// You can share properties and methods across all instances of a struct using the static keyword.
// Access control lets you restrict what code can use properties and methods.

