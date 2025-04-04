# 📌 Fetch Weather Data Using Swift

## 🚀 Description
This Swift code demonstrates how to fetch the current weather data of a city by making a network request to the OpenWeather API. It extracts the temperature and prints it to the console.

---

## 🔍 How It Works

### Step-by-Step Breakdown:

1. **API Key and URL**:
   - Replace `YOUR_API_KEY` with your actual OpenWeatherMap API key.
   - The URL string is dynamically constructed with the city name and API key, making a GET request to the OpenWeather API endpoint.

2. **Making the Network Request**:
   - `URLSession.shared.dataTask` sends an HTTP GET request asynchronously to the API.
   - It retrieves the data in JSON format and checks if the response contains the temperature information.

3. **Parsing JSON Response**:
   - The JSON response is parsed to extract the temperature under the "main" key.
   - The temperature is then printed in Celsius.

---

## 📂 Code

```swift
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
```
## ✅ Example Output
```
Temperature in New York: 20.5°C
```
