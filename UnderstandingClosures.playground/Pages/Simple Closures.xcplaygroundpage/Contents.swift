/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # Simple Closures

*/
code(for: "The Simplest Closure") {
    // simplest function - No parameters and returns nothing
    func sayHello() {
        print("Hello")
    }
    sayHello()
    // A closure equivalent
    let sayHelloClosure: () -> () = { print("Hello Closure") }
    sayHelloClosure()
    
}

code(for: "Closures with parameters") {
    // function with a single parameter
    func sayHello(to name: String) {
      print("Hello \(name)")
    }
    sayHello(to: "Bill")

    // The closure equivalent
    let sayHelloClosure: (String) -> () = { name in
        print("Hello \(name)")
    }
    sayHelloClosure("Stewart")
}

code(for: "Closures that return something") {
    // Function with 2 parameters that returns an Int
    func sum(a: Int, b:Int) -> Int {
         a + b
    }
    let answer = sum(a: 5, b: 7)
    print(answer)

    // The closure equivalent
    let sumClosure: (Int, Int) -> Int = { (a, b) in
        a + b
    }
    let closureAnswer = sumClosure(9, 5)
    print(closureAnswer)
}

/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
