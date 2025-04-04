import Foundation

let quotes = [
    "The only limit to our realization of tomorrow is our doubts of today.",
    "Do what you can, with what you have, where you are.",
    "Success is not final, failure is not fatal: it is the courage to continue that counts."
]

var currentQuote = "Tap for a quote"
print(currentQuote)

// Simulate a button click to get a new quote
let randomQuote = quotes.randomElement() ?? "No quotes available"
currentQuote = randomQuote

// Print the new quote
print(currentQuote)

