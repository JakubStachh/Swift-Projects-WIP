# 📌 Check if a Number is Even in Swift

## 🚀 Description
This Swift program demonstrates how to check if a number is even. An even number is any integer that is divisible by 2 without a remainder. The program checks if the input number (`num`) is even by using the modulus operator.

---

## 🔍 How It Works

### **Concept**
1. The function checks if the input number (`num`) modulo 2 is equal to 0.
2. If `num % 2 == 0`, it returns `true`, indicating that the number is even.
3. If `num % 2 != 0`, it returns `false`, indicating that the number is odd.

---

## 📂 Code Breakdown

### ✅ **isEven Function**
- **Input:** A number (`num`).
- **Output:** A boolean value indicating whether the number is even.

```swift
func isEven(_ num: Int) -> Bool {
    return num % 2 == 0
}
```
## ✅ **`Main` Function (Testing the Implementation)**
- **Calls `isEven` with the number `8`.**

- **Prints the result.**

```swift
print(isEven(8)) // Output: true
```
## 🎯 Example Output

```
true
```
