class Address {
    var streetName: String?
    var buildingNumber: String?
    var apartmentNumber: String?
}

class Residence {
    var address: Address?
}


class Person {
    var residence: Residence?
}


let susan = Person()

let address = Address()
address.streetName = "1234 Something Drive"
address.buildingNumber = "Building 10"
address.apartmentNumber = "204"

let residence = Residence()
residence.address = address

susan.residence = residence

if let apartmentNumber = susan.residence?.address?.apartmentNumber{
    print(apartmentNumber)
}





//paternMatching
enum Coin: Double {
    case Penny = 0.01
    case Nickel = 0.05
    case Dime = 0.10
    case Quarter = 0.25
}

let wallet: [Coin] = [.Penny, .Nickel, .Dime, .Dime, .Quarter, .Quarter, .Quarter, .Penny, .Nickel, .Dime, .Penny, .Nickel, .Quarter, .Quarter, .Penny,]
var count: Int = 0

for case .Quarter in wallet {
    count += 1
}

for coin in wallet {
    if case .Nickel = coin{
        print("Not so much money")
    } else if case .Dime = coin {
        print("Eh I guess it's some money")
    }
}

let someOptional: Int? = 42

//Nil Coalescing Operator 

let firstName: String? = "Corey"
let userName = "Core"

var displayName: String

displayName = firstName != nil ? firstName! : userName
displayName = firstName ?? userName







