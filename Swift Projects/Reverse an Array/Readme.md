# 📌 Reverse an Array in Swift

## 🚀 Description
This Swift function demonstrates how to reverse the order of elements in an array using the built-in `reversed()` method. It takes an array of integers as input and returns a new array with elements in reverse order.

---

## 🔍 How It Works

### ✅ Steps:
1. The function `reverseArray` accepts an array of integers as a parameter.
2. It applies the `reversed()` method to generate a sequence of the elements in reverse order.
3. The result is converted back into an array using `Array(...)`.

---

## 📂 Code Breakdown

```swift
func reverseArray(_ arr: [Int]) -> [Int] {
    return Array(arr.reversed())
}
```
- `arr.reversed()`: Returns a reversed sequence view of the array.

- `Array(...)`: Converts the sequence into an actual array.

## ✅ Example Usage
```swift
print(reverseArray([1, 2, 3, 4, 5])) // Output: [5, 4, 3, 2, 1]
```
## 🎯 Example Output
```
[5, 4, 3, 2, 1]
```
