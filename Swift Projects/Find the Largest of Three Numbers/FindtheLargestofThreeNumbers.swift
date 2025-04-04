func largestOfThree(_ a: Int, _ b: Int, _ c: Int) -> Int {
    return max(a, max(b, c))
}
print(largestOfThree(10, 25, 15)) // Output: 25
