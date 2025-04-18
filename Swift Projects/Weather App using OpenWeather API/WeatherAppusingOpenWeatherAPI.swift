import Foundation

func getWeather(city: String) {
    let apiKey = "YOUR_API_KEY"
    let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&units=metric"
    guard let url = URL(string: urlString) else { return }

    URLSession.shared.dataTask(with: url) { data, _, error in
        guard let data = data, error == nil else { return }
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
           let dict = json as? [String: Any],
           let main = dict["main"] as? [String: Any],
           let temp = main["temp"] as? Double {
            print("Temperature in \(city): \(temp)°C")
        }
    }.resume()
}

getWeather(city: "New York")
