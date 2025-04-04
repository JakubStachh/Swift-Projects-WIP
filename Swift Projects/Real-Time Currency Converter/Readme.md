# 📌 Currency Converter in Swift

## 🚀 Description
This Swift program fetches the exchange rate from an external API and converts an amount from one currency to another. The program uses `curl` to interact with an exchange rate API and returns the converted amount.

---

## 🔍 How It Works
1. The program constructs a URL to fetch the latest exchange rate data for a specified base currency.
2. It uses a `Process` to execute the `curl` command and fetch the data from the API.
3. The response is parsed into JSON format.
4. The program then extracts the exchange rate for the target currency and calculates the converted amount.

---

## 📂 Code Breakdown

### ✅ **fetchExchangeRate Function**

This function takes three parameters: `base`, `target`, and `amount`. It fetches the exchange rate from the external API and performs the conversion.

```swift
func fetchExchangeRate(from base: String, to target: String, amount: Double) {
    let urlString = "https://api.exchangerate-api.com/v4/latest/\(base)"
    
    let task = Process()
    task.executableURL = URL(fileURLWithPath: "/usr/bin/curl")
    task.arguments = ["-s", urlString]
    
    let pipe = Pipe()
    task.standardOutput = pipe
    
    do {
        try task.run()  // Replace launch() with run()
    } catch {
        print("Error running task: \(error)")
        return
    }
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    
    if let jsonString = String(data: data, encoding: .utf8),
       let jsonData = jsonString.data(using: .utf8) {
        if let json = try? JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any],
           let rates = json["rates"] as? [String: Double],
           let rate = rates[target] {
            print("\(amount) \(base) = \(amount * rate) \(target)")
        }
    }
}
URL Construction: The urlString is dynamically created to request data for the base currency.

Running curl: We use Process to run curl and retrieve the data.

JSON Parsing: After receiving the data, we parse it to find the target currency exchange rate and then perform the conversion.

✅ Main Function
The fetchExchangeRate function is called with a base currency, target currency, and an amount to convert.

swift
Kopiuj
Edytuj
fetchExchangeRate(from: "USD", to: "INR", amount: 100)
🎯 Example Output
yaml
Kopiuj
Edytuj
100 USD = 7400.0 INR
