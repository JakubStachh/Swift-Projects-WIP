func calculator(_ a: Double, _ b: Double, _ op: String) -> Double? {
    switch op {
    case "+": return a + b
    case "-": return a - b
    case "*": return a * b
    case "/": return b != 0 ? a / b : nil
    default: return nil
    }
}
print(calculator(10, 5, "+")!) // Output: 15
