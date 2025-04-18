func mostFrequent(_ arr: [Int]) -> Int? {
    let counts = arr.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    return counts.max(by: { $0.value < $1.value })?.key
}

// Safe unwrapping with if let
if let result = mostFrequent([1, 2, 2, 3, 3, 3, 4]) {
    print(result)  // Output: 3
} else {
    print("No frequent element found")
}
