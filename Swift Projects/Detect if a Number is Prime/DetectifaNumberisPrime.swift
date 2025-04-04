func isPrime(_ num: Int) -> Bool {
    if num < 2 { return false }
    for i in 2..<num {
        if num % i == 0 { return false }
    }
    return true
}
print(isPrime(17)) // Output: true
