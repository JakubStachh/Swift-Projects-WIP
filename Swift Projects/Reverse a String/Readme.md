# 📌 Reverse a String in Swift

## 🚀 Description
This Swift function demonstrates how to reverse a given string using built-in functionality. It takes a string as input and returns a new string with the characters in reverse order.

---

## 🔍 How It Works

### ✅ Steps:
1. The function `reverseString` receives a string parameter `str`.
2. It calls the `reversed()` method on the string, which returns a sequence of characters in reverse order.
3. The result of `reversed()` is converted back into a `String` using the `String()` initializer.

---

## 📂 Code Breakdown

```swift
func reverseString(_ str: String) -> String {
    return String(str.reversed())
}
str.reversed(): Returns a reversed view of the original string as a sequence of characters.

String(...): Converts the character sequence into a new string.
```

## ✅ **`Main` Function (Example Usage)**
```swift
print(reverseString("Hello")) // Output: "olleH"
```
## 🎯 Example Output
```
olleH
```
