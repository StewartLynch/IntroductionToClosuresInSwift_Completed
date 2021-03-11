/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 # Closures as Function Parameters
 */
import Foundation

code(for: "Closures as Function Parameters") {
    func sayHello(to name: String, finallySayIt: (String) -> ()) {
        let newName = name.uppercased()
        finallySayIt(newName)
    }

    // Option 1
//    sayHello(to: "Stewart", finallySayIt: { name in
//        print("Hello \(name)")
//    })

    // Option 2
//    sayHello(to: "Stewart") { (name) in
//        print("Hello \(name)")
//    }

    // Option 3
    let reallySayIt: (String) -> () = { name in
        print("Hello \(name)")
    }
    sayHello(to: "Stewart", finallySayIt: reallySayIt)
}

code(for: "Escaping Trailing Closure") {
    func sayHello(to name: String, finallySayIt: @escaping (String) -> ()) {
        let newName = name.uppercased()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            finallySayIt(newName)
        }
    }
    sayHello(to: "Stewart") { (name) in
            print("Hello \(name)")
    }
}


/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
