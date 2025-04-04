# 📌 Palindrome Check for Numbers in Swift

## 🚀 Description
This Swift program checks whether a given integer is a palindrome. A **palindrome** is a number that reads the same backward as forward. The program converts the number into a string and compares it with its reverse to determine if it's a palindrome.

---

## 🔍 How It Works
1. The number is first converted into a string.
2. The string is reversed and compared to the original string.
3. If the string and its reversed version are identical, the number is a palindrome.

---

## 📂 Code Breakdown

### ✅ **Palindrome Logic**

We use the `String` initializer to convert the number to a string and the `reversed()` method to reverse the string. If the original string and the reversed string are equal, the function returns `true`, otherwise `false`.

```swift
func isPalindrome(_ num: Int) -> Bool {
    let strNum = String(num)
    return strNum == String(strNum.reversed())
}
✅ Main Function (Testing the Implementation)
The main function tests the isPalindrome function with the number 121:

swift
Kopiuj
Edytuj
print(isPalindrome(121))  // Output: true
🎯 Example Output
arduino
Kopiuj
Edytuj
true
