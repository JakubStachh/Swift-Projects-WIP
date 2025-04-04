# 📌 GCD (Greatest Common Divisor) in Swift

## 🚀 Description
This Swift program calculates the **Greatest Common Divisor (GCD)** of two integers using **Euclid's algorithm**. The GCD is the largest number that divides both integers without leaving a remainder.

---

## 🔍 How It Works

### **Euclid's Algorithm**
Euclid's algorithm for finding the GCD of two numbers is based on the principle that:
- The GCD of two numbers `a` and `b` is the same as the GCD of `b` and `a % b` (where `%` is the modulus operator).
- The process continues until the second number `b` becomes 0, at which point the first number `a` will be the GCD.

---

## 📂 Code Breakdown

### ✅ **`gcd` Function**
- **Input:** Two integers, `a` and `b`.
- **Output:** The greatest common divisor (GCD) of the two numbers.

```swift
func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}
```
- **Explanation:**

  - If `b` is `0`, then `a` is the `GCD`, and the function returns `a`.

  - Otherwise, the `function` **recursively** calls itself with `b` and the remainder of `a % b`.

## ✅ **`Main` Function (Testing the Implementation)**
- **Calls `gcd` with the integers `48` and `18`.**

- **Prints the result.**

```swift
print(gcd(48, 18)) // Output: 6
```
## 🎯 Example Output
```
6
```
