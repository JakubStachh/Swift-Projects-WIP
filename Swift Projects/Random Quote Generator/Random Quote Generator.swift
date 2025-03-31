import SwiftUI

struct ContentView: View {
    let quotes = [
        "The only limit to our realization of tomorrow is our doubts of today.",
        "Do what you can, with what you have, where you are.",
        "Success is not final, failure is not fatal: it is the courage to continue that counts."
    ]
    @State private var currentQuote = "Tap for a quote"

    var body: some View {
        VStack {
            Text(currentQuote)
                .padding()
                .multilineTextAlignment(.center)
            
            Button("Get New Quote") {
                currentQuote = quotes.randomElement() ?? "No quotes available"
            }
            .padding()
        }
    }
}
