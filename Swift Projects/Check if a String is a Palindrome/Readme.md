# 📌 Check if a String is a Palindrome in Swift

## 🚀 Description
This Swift program checks whether a given string is a palindrome. A palindrome is a word, phrase, number, or other sequence of characters that reads the same forward and backward (ignoring spaces, punctuation, and capitalization).

---

## 🔍 How It Works

### **Concept**
1. The function compares the string (`str`) with its reversed version.
2. If the string is equal to its reversed version, it returns `true`, indicating that the string is a palindrome.
3. If the string is not equal to its reversed version, it returns `false`.

---

## 📂 Code Breakdown

### ✅ **`isPalindrome` Function**
- **Input:** A string (`str`).
- **Output:** A boolean value indicating whether the string is a palindrome.

```swift
func isPalindrome(_ str: String) -> Bool {
    return str == String(str.reversed())
}
```

## **Explanation:**

- `str.reversed()` returns a reversed sequence of characters from the input string.

- `String()` converts the reversed sequence back into a string to compare with the original.

## ✅ **`Main` Function (Testing the Implementation)**
- **Calls `isPalindrome` with the string `"madam"`.**

- **Prints the result.**

```swift
print(isPalindrome("madam")) // Output: true
```
## 🎯 Example Output
```
true
```
