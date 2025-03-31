func fibonacci(_ n: Int) -> Int {
    return n <= 1 ? n : fibonacci(n - 1) + fibonacci(n - 2)
}
print(fibonacci(6)) // Output: 8
