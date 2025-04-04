# 🧮 Simple Calculator in Swift

## 🚀 Description
This Swift function acts as a simple calculator that can perform basic arithmetic operations: addition, subtraction, multiplication, and division. It takes two numbers and an operator as input and returns the result accordingly.

---

## 🔍 How It Works

### ✅ Parameters:
- `a`: First operand (Double)
- `b`: Second operand (Double)
- `op`: A string representing the operator (`+`, `-`, `*`, `/`)

### ✅ Logic:
- A `switch` statement is used to match the operator.
- Each case performs the corresponding arithmetic operation.
- Division checks for division by zero to avoid errors.
- If the operator is invalid, the function returns `nil`.

---

## 📂 Code

```swift
func calculator(_ a: Double, _ b: Double, _ op: String) -> Double? {
    switch op {
    case "+": return a + b
    case "-": return a - b
    case "*": return a * b
    case "/": return b != 0 ? a / b : nil
    default: return nil
    }
}
```
## ✅ Example Usage
```swift
print(calculator(10, 5, "+")!) // Output: 15.0
print(calculator(10, 5, "-")!) // Output: 5.0
print(calculator(10, 5, "*")!) // Output: 50.0
print(calculator(10, 5, "/")!) // Output: 2.0
print(calculator(10, 0, "/"))  // Output: nil (cannot divide by zero)
print(calculator(10, 5, "^"))  // Output: nil (invalid operator)
```
## 🎯 Example Output
```
15.0
5.0
50.0
2.0
nil
nil
```
