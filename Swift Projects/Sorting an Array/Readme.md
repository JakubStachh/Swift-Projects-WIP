# 📌 Bubble Sort in Swift

## 🚀 Description
This Swift program demonstrates the Bubble Sort algorithm, a simple comparison-based sorting algorithm. It repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order.

---

## 🔍 How It Works

### 🧠 Bubble Sort Logic
- For each pass, compare each pair of adjacent items.
- If the first item is greater than the second, swap them.
- Repeat this process `n` times, reducing the range each time, as the largest unsorted element "bubbles" to the correct position.

---

## 📂 Code

```swift
func bubbleSort(_ arr: inout [Int]) {
    let n = arr.count
    for i in 0..<n {
        for j in 0..<n - i - 1 {
            if arr[j] > arr[j + 1] {
                arr.swapAt(j, j + 1)
            }
        }
    }
}
```
## ✅ Example Usage
```swift
var numbers = [5, 2, 9, 1, 5, 6]
bubbleSort(&numbers)
print(numbers) // Output: [1, 2, 5, 5, 6, 9]
```
## 🎯 Example Output
```
[1, 2, 5, 5, 6, 9]
```
