
protocol FullyNameable {
    var fullName: String { get }
}

struct User: FullyNameable {
    var fullName: String
}

let user = User(fullName: "John Smith")

struct Friend: FullyNameable {
    let firstName: String
    let middleName: String
    let lastName: String
    
    
    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    
    }
}

let friend = Friend(firstName: "Taylor", middleName: "Alison", lastName: "Swift")
friend.fullName


//////////////////////////////
import Foundation

protocol Payable {
    func pay() -> (basePay: Double, benefits: Double, deductions: Double, vacationTime: Int)
}

enum EmployeeType {
    case Manager
    case NotManager
}

class Employee {
    let name: String
    let address: String
    let startDate: NSDate
    let type: EmployeeType
    
    var department: String?
    var reportsTo: String?
    
    init(fullName: String, employeeAddress: String, employeeStartDate: NSDate, employeeType: EmployeeType) {
        self.name = fullName
        self.address = employeeAddress
        self.startDate = employeeStartDate
        self.type = employeeType
    }
    
}

func payEmployee(employee: Payable) {
    let paycheck = employee.pay()
}

class HourlyEmployee: Employee, Payable {
    var hourlyWage: Double = 15.00
    var hoursWorked: Double = 0
    let availableVacation = 0
    
    func pay() -> (basePay: Double, benefits: Double, deductions: Double, vacationTime: Int) {
        return(hourlyWage * hoursWorked, 0, 0, availableVacation)
    }
}


let hourlyEmployee = HourlyEmployee (fullName: "Corey", employeeAddress: "none", employeeStartDate: NSDate(), employeeType: .NotManager)
let employee = Employee(fullName: "Corey", employeeAddress: "some address", employeeStartDate: NSDate(), employeeType: .Manager)



///////////////////////

protocol Blendable {
    func blend()
}

class Fruit: Blendable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func blend() {
        print("I'm much")
    }
}

class Dairy {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Cheese: Dairy {}

class Milk: Dairy, Blendable{
    func blend() {
        print("I haven't changed. I'm still milk")
    }
}

func makeSmoothie(ingredients: [Blendable]) {
    for ingredient in ingredients {
        ingredient.blend()
    }
}

let strawberry = Fruit(name: "Strawberry")
let cheddar = Cheese(name: "Cheddar")
let chocolateMilk = Milk(name: "Chocolate")

let ingredients: [Blendable] = [strawberry, chocolateMilk]

makeSmoothie(ingredients)

/////////////////////////////

protocol Printable {
    func description() -> String
}
protocol PrettyPrintable: Printable{
    func prettyDescription() -> String
}


struct Users: PrettyPrintable {
    let name: String
    let age: Int
    let address: String
    func description() -> String {
        return "\(name), \(age), \(address)"
    }
    func prettyDescription() -> String {
        return "name: \(name)\nage: \(age)\naddress: \(address)"
    }

}

let users = Users(name: "Pasan", age: 28, address: "Some Address")
users.prettyDescription()

print(users.prettyDescription())



///////////////////////////////////////////////

struct Point {
    let x: Int
    let y: Int
    
    func pointsAroundMe(withRange range: Int) -> [Point] {
        var results: [Point] = []
        
        for x in (self.x - range)...(self.x + range) {
            for y in (self.y - 1)...(self.y + 1) {
                let point = Point(x: x, y: y)
                results.append(point)
            }
        }
        
        return results
    }
}
enum Direction {
    case Up, Down, Right, Left
}

protocol Movable {
    func move(direction: Direction, distance: Int)
}

protocol Destructable {
    func decreaseLife(factor: Int)
}

protocol Attackable{
    var strength: Int { get }
    var range: Int { get }
    
    func attack(player: PlayerType)
}

protocol PlayerType {
    var position: Point { get set }
    var life: Int { get set }
    
    init(point: Point)
}












