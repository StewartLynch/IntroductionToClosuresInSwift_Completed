/*:
 [< Previous](@previous)           [Home](Introduction)

 ## Returning Closures and Capturing Values
More information here

*/

code(for: "Function returning a closure") {
    // function with no parameters returning a closure that has a parameter
    func sayIt() -> (String) -> Void {
        return { name in
            print("Hello \(name)")
        }
    }
//    sayIt()("Stewart")
    let greetings = sayIt()
    greetings("Stewart")
}

code(for: "Capturing Values") {
    // Closure that captures a value
    func counter() -> () -> Void {
        var count = 1
        return {
            print("The count is \(count)")
            count += 1
        }
    }
    let gameCounter = counter()
    gameCounter()
    gameCounter()
}


/*:

 [< Previous](@previous)           [Home](Introduction)
 */
