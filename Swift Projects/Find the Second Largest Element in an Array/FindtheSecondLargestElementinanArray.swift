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
