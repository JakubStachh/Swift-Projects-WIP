# 📌 Remove Duplicates from an Array in Swift

## 🚀 Description
This Swift program demonstrates how to remove duplicate elements from an array of integers. It leverages Swift’s built-in `Set` data structure, which automatically stores unique values, to efficiently eliminate duplicates.

---

## 🔍 How It Works

### ✅ Step-by-Step:
1. The input array is passed to the function `removeDuplicates`.
2. A `Set` is created from the array. Since sets only allow unique elements, duplicates are automatically removed.
3. The set is then converted back to an array using `Array(Set(arr))`.
4. The resulting array with only unique elements is returned.

---

## 📂 Code Breakdown

```swift
func removeDuplicates(_ arr: [Int]) -> [Int] {
    return Array(Set(arr))
}
```
- `Set(arr)`: Constructs a set from the input array, filtering out duplicates.

- `Array(...)`: Converts the set back to an array.

### ✅ **`Main` Function (Testing the Implementation)**
```swift
print(removeDuplicates([1, 2, 2, 3, 4, 4, 5])) // Output: [1, 2, 3, 4, 5]
```
## 🎯 Example Output
```
[1, 2, 3, 4, 5]
```
