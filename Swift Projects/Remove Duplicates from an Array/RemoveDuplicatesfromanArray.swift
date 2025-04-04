func removeDuplicates(_ arr: [Int]) -> [Int] {
    return Array(Set(arr))
}
print(removeDuplicates([1, 2, 2, 3, 4, 4, 5])) // Output: [1, 2, 3, 4, 5]
