func mostFrequent(_ arr: [Int]) -> Int? {
    let counts = arr.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    return counts.max(by: { $0.value < $1.value })?.key
}
print(mostFrequent([1, 2, 2, 3, 3, 3, 4])) // Output: 3
