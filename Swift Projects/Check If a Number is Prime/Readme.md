# 📌 Check if a Number is Prime in Swift

## 🚀 Description
This Swift program demonstrates how to check if a number is prime. A prime number is a number greater than 1 that has no divisors other than 1 and itself. The program checks if the input number is prime by attempting to divide it by all numbers from 2 up to the number itself.

---

## 🔍 How It Works

### **Concept**
1. The program checks if the input number (`num`) is less than 2. If it is, it immediately returns `false` because numbers less than 2 are not prime.
2. It then checks for divisibility by any number from 2 up to `num - 1`. If any number divides `num` evenly, it returns `false` because the number is not prime.
3. If no divisors are found, it returns `true` because the number is prime.

---

## 📂 Code Breakdown

### ✅ **isPrime Function**
- **Input:** A number (`num`).
- **Output:** A boolean value indicating whether the number is prime.

```swift
func isPrime(_ num: Int) -> Bool {
    if num < 2 { return false }
    for i in 2..<num {
        if num % i == 0 { return false }
    }
    return true
}
