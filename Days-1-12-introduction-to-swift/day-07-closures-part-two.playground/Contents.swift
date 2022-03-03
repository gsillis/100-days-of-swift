import UIKit

// Using closures as parameters when they accept parameters
func shouldReturnKeyboard(completion: (Bool)-> Void) {
	completion(true)
}


shouldReturnKeyboard { shouldReturn in
	print(shouldReturn)
}

// Using closures as parameters when they return values
func shouldReturn(completion: @escaping (Bool) -> Bool) {
	let shouldReturn = completion(false)
	print(shouldReturn)
}

shouldReturn { keyboard in
	return keyboard
}

/// shorthand syntax
shouldReturn {
	return $0
}

// Closures with multiple parameters

func firstTravel(action: (String, Int) -> String) {
	let description = action("London", 60)
	print(description)
}

firstTravel {
	return "I'm going to \($0) at \($1) miles per hour."
}

// Returning closures from functions

func travel() -> (String) -> Void {
	return {
		print("I'm going to \($0)")
	}
}

let result = travel()
result("Curitiba")

// Capturing values

func travelResult() -> (String) -> Void {
	var counter = 1

	return {
		print("\(counter). I'm going to \($0)")
		counter += 1
	}
}

let resultTravel = travelResult()
resultTravel("Osasco")
resultTravel("São Paulo")

// Summary
/// You can assign closures to variables, then call them later on.
/// Closures can accept parameters and return values, like regular functions.
/// You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
/// If the last parameter to your function is a closure, you can use trailing closure syntax.
/// Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
/// If you use external values inside your closures, they will be captured so the closure can refer to them later.
