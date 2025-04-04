# 📌 Swift Quote Generator

## 🚀 Description
This Swift program randomly selects a quote from an array of predefined quotes and displays it. The program simulates a button click, which triggers the selection of a new quote.

---

## 🔍 How It Works
1. An array of quotes is defined.
2. A "Tap for a quote" message is displayed initially.
3. The program simulates a button click using `randomElement()` to choose a random quote.
4. The selected quote is displayed.

---

## 📂 Code Breakdown

### ✅ **Quote Array**

The `quotes` array contains a few inspirational quotes:

```swift
let quotes = [
    "The only limit to our realization of tomorrow is our doubts of today.",
    "Do what you can, with what you have, where you are.",
    "Success is not final, failure is not fatal: it is the courage to continue that counts."
]
✅ Quote Selection and Display
We initially display a message saying "Tap for a quote", and then simulate the selection of a random quote using randomElement().

swift
Kopiuj
Edytuj
var currentQuote = "Tap for a quote"
print(currentQuote)

// Simulate a button click to get a new quote
let randomQuote = quotes.randomElement() ?? "No quotes available"
currentQuote = randomQuote

// Print the new quote
print(currentQuote)
🎯 Example Output
kotlin
Kopiuj
Edytuj
Tap for a quote
Success is not final, failure is not fatal: it is the courage to continue that counts.
