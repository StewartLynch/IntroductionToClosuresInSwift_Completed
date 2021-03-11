/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # A SwiftUI example
 */
import UIKit
import PlaygroundSupport
import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
        VStack {
            Text("Hello")
            Text("World")
        }
        .navigationTitle("SwiftUI Example")
    }
    .playgroundPhone(.iPhoneSE)
  }
}

PlaygroundPage.current.setLiveView(ContentView())
//: [Next](@next)
