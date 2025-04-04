# 📌 Fibonacci Sequence in Swift

## 🚀 Description
This Swift program calculates the nth number in the Fibonacci sequence using a recursive approach. The Fibonacci sequence starts with `0` and `1`, and each subsequent number is the sum of the previous two numbers.

---

## 🔍 How It Works

### **Fibonacci Sequence**
- The Fibonacci sequence is defined as follows:
  - F(0) = 0
  - F(1) = 1
  - F(n) = F(n-1) + F(n-2) for n > 1

### **Recursive Approach**
The function `fibonacci` calculates the nth Fibonacci number by recursively calling itself with the previous two Fibonacci numbers (`n-1` and `n-2`), and summing them up.

---

## 📂 Code Breakdown

### ✅ **fibonacci Function**
- **Input:** An integer (`n`), the position in the Fibonacci sequence.
- **Output:** The Fibonacci number at the nth position.

```swift
func fibonacci(_ n: Int) -> Int {
    return n <= 1 ? n : fibonacci(n - 1) + fibonacci(n - 2)
}
```

- **Explanation:**

     - If `n` is `0` or `1`, the function directly returns `n` because `F(0) = 0` and `F(1) = 1`.

     - For any other value of `n`, the function calls itself recursively to calculate the previous two Fibonacci numbers and returns their sum.

## ✅ **`Main` Function (Testing the Implementation)**
- **Calls `fibonacci` with the number `6`.**

- **Prints the result.**

```swift
print(fibonacci(6)) // Output: 8
```
## 🎯 Example Output
```
8
```
