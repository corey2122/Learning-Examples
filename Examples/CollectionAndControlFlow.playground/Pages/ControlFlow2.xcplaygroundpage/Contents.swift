///////If Statement////////
///////////////////////////

var temperature = 9

if temperature < 12 {
    print ("It's getting chilly, I recommend wearing a light sweater.")
} else if temperature < 18 {
print ("It's getting cold. Let's get that jacket out!")
} else {
    print ("It feels great outside. A t-shirt will do.")
}

/////////Logical Operators//////////

if temperature > 7 && temperature < 12 {
    print ("Might want to wear a scarf with that jacket")
}

var isRaining: Bool = true
var isSnowing: Bool = false

if isRaining || isSnowing {
    print ("Get out those rain boots!")
}

if !isRaining {
    print("Yay, the sun it out!")
}
if isRaining || isSnowing && temperature < 2 {
    print("Put some gloves on!")
}

////Switch/////

let airportCodes = ["LGA", "LHR", "CDG", "HKG", "DXB", "LGW", "JFK", "ORY"]
for airportCode in airportCodes {
    switch airportCode {
    case "LGA", "JFK": print("New York")
    case "LHR", "LGW": print("London")
    case "CDG", "ORY": print("Paris")
    case "HKG": print ("Hong Kong")
    default: print("I don't know which city this airport is in!")
    }
}

var randomTemperature = Int
    (arc4random_uniform(UInt32(150)))

switch randomTemperature{
    case 0...<32: print("Forget clothes, you're basically a popsicle.")
    case 32...45: print("It's quite cold.")
    case 45...<70: print("It's a bit chilly.")
    case 70...100: print("It's quite hot.")
    default: print("My face is melting!")
}


for i in 1...100 {
    if (i % 3 == 0)

}







