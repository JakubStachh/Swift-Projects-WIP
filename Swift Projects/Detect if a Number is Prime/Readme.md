# 📌 Check if a Number is Prime in Swift

## 🚀 Description
This Swift program checks whether a given integer is a prime number. A prime number is a natural number greater than 1 that has no positive divisors other than 1 and itself.

---

## 🔍 How It Works

### **Concept**
1. The function checks if the number (`num`) is less than 2. If it is, it returns `false` because numbers less than 2 are not prime.
2. Then, the function iterates through the numbers from 2 to `num - 1`. If any of these numbers divide `num` evenly (i.e., the remainder is 0), then `num` is not a prime, and the function returns `false`.
3. If no divisors are found, the function returns `true`, indicating that the number is prime.

---

## 📂 Code Breakdown

### ✅ **isPrime Function**
- **Input:** An integer (`num`).
- **Output:** A boolean value indicating whether the number is prime.

```swift
func isPrime(_ num: Int) -> Bool {
    if num < 2 { return false }
    for i in 2..<num {
        if num % i == 0 { return false }
    }
    return true
}
```
