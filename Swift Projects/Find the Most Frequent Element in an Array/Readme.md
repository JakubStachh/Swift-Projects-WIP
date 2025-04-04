# 📌 Find the Most Frequent Element in an Array

## 🚀 Description
This Swift program finds the most frequent element in an array of integers. The program uses the `reduce(into:)` method to count the occurrences of each element and then identifies the element with the highest frequency.

---

## 🔍 How It Works

### **Finding the Most Frequent Element**
1. The program uses the `reduce(into:)` method to create a dictionary where the keys are the elements of the array and the values are the counts of their occurrences.
2. The `max(by:)` method is used to find the dictionary entry with the highest value (i.e., the most frequent element).

### **Example:**
For the input array `[1, 2, 2, 3, 3, 3, 4]`, the program will determine that the most frequent element is `3`.

---

## 📂 Code Breakdown

### ✅ **mostFrequent Function**
- **Input:** An array of integers `arr`.
- **Output:** The most frequent element in the array (or `nil` if no element exists).

```swift
func mostFrequent(_ arr: [Int]) -> Int? {
    let counts = arr.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    return counts.max(by: { $0.value < $1.value })?.key
}
Explanation:

reduce(into:): Creates a dictionary of element frequencies.

max(by:): Finds the dictionary entry with the highest frequency.

✅ Main Function (Testing the Implementation)
Calls mostFrequent with the array [1, 2, 2, 3, 3, 3, 4].

Prints the result using safe unwrapping with if let.

swift
Kopiuj
Edytuj
if let result = mostFrequent([1, 2, 2, 3, 3, 3, 4]) {
    print(result)  // Output: 3
} else {
    print("No frequent element found")
}
🎯 Example Output
Kopiuj
Edytuj
3
