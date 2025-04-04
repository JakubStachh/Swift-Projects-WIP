func isPalindrome(_ num: Int) -> Bool {
    let strNum = String(num)
    return strNum == String(strNum.reversed())
}
print(isPalindrome(121)) // Output: true
