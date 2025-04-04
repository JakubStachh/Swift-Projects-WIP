Powiedziałeś(-aś):
func secondLargest(_ arr: [Int]) -> Int? {
    let uniqueArr = Array(Set(arr)).sorted()
    return uniqueArr.count > 1 ? uniqueArr[uniqueArr.count - 2] : nil
}

// Safe unwrapping with if let
if let result = secondLargest([10, 20, 4, 45, 99, 99]) {
    print(result)  // Output: 45
} else {
    print("No second largest element")
}



2/2

ChatGPT powiedział:
md
Kopiuj
Edytuj
# 📌 Find the Second Largest Element in an Array

## 🚀 Description
This Swift program finds the second largest element in an array of integers. The program first removes any duplicate elements by converting the array to a `Set`, then sorts the array and retrieves the second largest element.

---

## 🔍 How It Works

### **Finding the Second Largest Element**
1. The program first converts the array into a `Set` to eliminate duplicate values.
2. It then sorts the unique elements in ascending order.
3. If the sorted array has more than one element, the second largest element is the second-to-last element in the sorted array. If there is only one unique element or fewer, the program returns `nil`.

### **Example:**
For the input array `[10, 20, 4, 45, 99, 99]`, the program will determine that the second largest element is `45`.

---

## 📂 Code Breakdown

### ✅ **secondLargest Function**
- **Input:** An array of integers `arr`.
- **Output:** The second largest element in the array (or `nil` if not possible).

```swift
func secondLargest(_ arr: [Int]) -> Int? {
    let uniqueArr = Array(Set(arr)).sorted()
    return uniqueArr.count > 1 ? uniqueArr[uniqueArr.count - 2] : nil
}
Explanation:

Set(arr): Removes duplicate elements.

sorted(): Sorts the unique elements in ascending order.

uniqueArr.count > 1: Ensures that there are at least two unique elements before returning the second largest.

✅ Main Function (Testing the Implementation)
Calls secondLargest with the array [10, 20, 4, 45, 99, 99].

Prints the result using safe unwrapping with if let.

swift
Kopiuj
Edytuj
if let result = secondLargest([10, 20, 4, 45, 99, 99]) {
    print(result)  // Output: 45
} else {
    print("No second largest element")
}
🎯 Example Output
Kopiuj
Edytuj
45
