func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}
print(gcd(48, 18)) // Output: 6
