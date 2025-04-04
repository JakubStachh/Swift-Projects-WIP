# 📌 Largest of Three Numbers in Swift

## 🚀 Description
This Swift program determines the **largest number** among three given integers. The program uses the `max` function to compare the values and find the largest.

---

## 🔍 How It Works

### **Finding the Largest Number**
The program compares the three integers using the `max` function, which returns the largest of the two numbers. By nesting the `max` function, the program finds the largest of the three.

### **Example:**
For the input values `10`, `25`, and `15`, the program will determine that `25` is the largest.

---

## 📂 Code Breakdown

### ✅ **largestOfThree Function**
- **Input:** Three integers: `a`, `b`, and `c`.
- **Output:** The largest integer among the three.

```swift
func largestOfThree(_ a: Int, _ b: Int, _ c: Int) -> Int {
    return max(a, max(b, c))
}
Explanation:

The function uses the max function to compare a, b, and c.

It first compares b and c, and then compares the result with a to find the largest number.

✅ Main Function (Testing the Implementation)
Calls largestOfThree with the integers 10, 25, and 15.

Prints the result.

swift
Kopiuj
Edytuj
print(largestOfThree(10, 25, 15)) // Output: 25
🎯 Example Output
Kopiuj
Edytuj
25
