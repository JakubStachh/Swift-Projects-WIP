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
var numbers = [5, 2, 9, 1, 5, 6]
bubbleSort(&numbers)
print(numbers) // Output: [1, 2, 5, 5, 6, 9]
