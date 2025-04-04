# 📌 Factorial Calculation in Swift

## 🚀 Description
This Swift program calculates the **factorial** of a given number `n` recursively. The **factorial** of a number `n` is the product of all positive integers less than or equal to `n`. It is represented as `n!`.

---

## 🔍 How It Works

### **Factorial Formula**
The factorial of a number `n` is defined as:
- `n! = n * (n - 1) * (n - 2) * ... * 1`
- Special case: `0! = 1`.

### **Recursive Approach**
The function uses **recursion** to calculate the factorial. The base case is when `n` is 0, returning 1. For all other values, it multiplies `n` by the factorial of `n - 1`.

---

## 📂 Code Breakdown

### ✅ **`factorial` Function**
- **Input:** A single integer `n`.
- **Output:** The factorial of `n`.

```swift
func factorial(_ n: Int) -> Int {
    return (n == 0) ? 1 : n * factorial(n - 1)
}
```

- **Explanation:**

    - If `n` equals `0`, the function returns `1` (base case).

    - Otherwise, it multiplies `n` by the result of `factorial(n - 1)`.

## ✅ **`Main` Function (Testing the Implementation)**
- **Calls `factorial` with the integer `5`.** 

- **Prints the result.**

```swift
print(factorial(5)) // Output: 120
```
## 🎯 Example Output
```
120
```
