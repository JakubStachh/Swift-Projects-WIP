func secondLargest(_ arr: [Int]) -> Int? {
    let uniqueArr = Array(Set(arr)).sorted()
    return uniqueArr.count > 1 ? uniqueArr[uniqueArr.count - 2] : nil
}
print(secondLargest([10, 20, 4, 45, 99, 99])) // Output: 45
