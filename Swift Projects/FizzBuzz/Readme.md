# 📌 FizzBuzz Program in Swift

## 🚀 Description
This Swift program implements the **FizzBuzz** problem, a common coding challenge. It prints the numbers from 1 to 20, but for multiples of 3, it prints "Fizz" instead of the number, for multiples of 5, it prints "Buzz" instead of the number, and for numbers that are multiples of both 3 and 5, it prints "FizzBuzz".

---

## 🔍 How It Works
- **Fizz** is printed for numbers that are divisible by 3.
- **Buzz** is printed for numbers that are divisible by 5.
- **FizzBuzz** is printed for numbers divisible by both 3 and 5.
- Other numbers are printed normally.

---

## 📂 Code Breakdown

### ✅ **`FizzBuzz` Logic**

The program uses a simple `for` loop that runs through the numbers 1 to 20. Inside the loop, we check the divisibility of each number:

1. If the number is divisible by both 3 and 5, print **"FizzBuzz"**.
2. If the number is divisible by only 3, print **"Fizz"**.
3. If the number is divisible by only 5, print **"Buzz"**.
4. Otherwise, print the number itself.

```swift
for i in 1...20 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}
```

### 🎯 Example Output
```
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz
```
