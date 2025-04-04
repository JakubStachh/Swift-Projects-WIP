import Foundation

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

fetchExchangeRate(from: "USD", to: "INR", amount: 100)
