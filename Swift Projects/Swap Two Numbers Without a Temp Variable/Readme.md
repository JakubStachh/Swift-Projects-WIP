# 🔄 Swap Two Variables in Swift

## 🚀 Description
This Swift snippet demonstrates a clean and elegant way to swap the values of two variables using tuple destructuring. No temporary variable is needed.

---

## 🔍 How It Works

### Tuple Destructuring
In Swift, you can swap two values by assigning them as a tuple. The right-hand side tuple `(b, a)` is unpacked into the left-hand side `(a, b)`, effectively swapping the values.

---

## 📂 Code

```swift
var a = 5, b = 10
(a, b) = (b, a)
print("a: \(a), b: \(b)") // Output: a: 10, b: 5
```
## ✅ Example Output
```
a: 10, b: 5
```
