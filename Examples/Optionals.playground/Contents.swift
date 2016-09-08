struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func getFullName() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        } else {
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me = Person(firstName: "Pasan", middleName: nil, lastName: "Premaratne")
me.getFullName()


let airportCodes = ["CDG": "Charles de Gaulle"]

if let newYorkAirport = airportCodes["JFK"]{
    print(newYorkAirport)
} else {
    print("Whoops that key does not exist!")
}

let weatherDictionary: [String : [String : String]] = ["currently": ["temperature": "22.3"], "daily": ["temperature": "22.3"], "weekly": ["temperature": "22.3"]]

if let dailyWeather = weatherDictionary["daily"], let highTemperature = dailyWeather["temperature"]{
    print(highTemperature)
}


struct Friend {
    let name: String
    let age: String
    let address: String?
}

func createFriend(dict: [String : String]) -> Friend? {
   guard let name = dict["name"], age = dict["age"] else {
    return nil
    }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)

}

