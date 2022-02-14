import Foundation

// For loops

let count = 1...10

/// O(n)
for i in count {
    print("the number is \(i)")
}

/// O(n2)
for _ in count {
    for x in count {
        print("number \(x)")
    }
}

let albums = ["Red", "1989", "Reputation"]

/// O(n)
for album in albums {
    print("\(album) is on Apple Music")
}

var number = 1

/// nesse caso é O(n)
while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

/// nesse caso é O(n)
repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

var countDown = 10
/// nesse caso é O(n)
while countDown >= 0 {
    print(countDown)

    /// essa condição especifica é O(1)
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}

/// O(n)
for i in 1...10 {
    
    /// essa condição especifica é O(n)
    if i % 2 == 1 {
        continue
    }

    print(i)
}

// Resumo
/// Loops let us repeat code until a condition is false.
/// The most common loop is for, which assigns each item inside the loop to a temporary constant.
/// If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
/// There are while loops, which you provide with an explicit condition to check.
/// Although they are similar to while loops, repeat loops always run the body of their loop at least once.
/// You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
///  You can skip items in a loop using continue.
/// Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!
