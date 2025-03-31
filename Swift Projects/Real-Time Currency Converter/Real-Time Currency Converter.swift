import Foundation

func fetchExchangeRate(from base: String, to target: String, amount: Double) {
    let urlString = "https://api.exchangerate-api.com/v4/latest/\(base)"
    guard let url = URL(string: urlString) else { return }

    URLSession.shared.dataTask(with: url) { data, _, error in
        guard let data = data, error == nil else { return }
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
           let rates = json["rates"] as? [String: Double],
           let rate = rates[target] {
            print("\(amount) \(base) = \(amount * rate) \(target)")
        }
    }.resume()
}

fetchExchangeRate(from: "USD", to: "INR", amount: 100)
