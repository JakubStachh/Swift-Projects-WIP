func factorial(_ n: Int) -> Int {
    return (n == 0) ? 1 : n * factorial(n - 1)
}
print(factorial(5)) // Output: 120
