//: Playground - noun: a place where people can play

import UIKit

//Takes a meal and adds the tip and tax

var mealCost = 15.50
var tipPercent = 15
var taxPercent = 10

var tip = mealCost / Double(tipPercent)
tip = tip * mealCost / 10
var tax = mealCost / Double(taxPercent)
tax = tax * mealCost / 10
var totalCost = mealCost + tip + tax
print("The total meal cost is \(Int(round(totalCost))) dollars.")

//condtional statements 
var n = 24
if n % 2 != 0 {
    print("Weird")
} else if n % 2 == 0 && (n >= 2 && n <= 6) {
    print("Not Weird")
} else if n % 2 == 0 && (n >= 6 && n <= 20){
    print("Weird")
} else if n % 2 == 0 && n > 20 {
    print("Not Weird")
}


// Multiplication loop for the number two...1-10

var x = 2
for i in 1...10{
print("\(x) x \(i) = \(x * i)")
}


/////////


class Person {
    var age: Int = 0
    
    init (initialAge: Int) {
        // Add some more code to run some checks on initialAge
        if initialAge < 0 {
            print("𝙰𝚐𝚎 𝚒𝚜 𝚗𝚘𝚝 𝚟𝚊𝚕𝚒𝚍, 𝚜𝚎𝚝𝚝𝚒𝚗𝚐 𝚊𝚐𝚎 𝚝𝚘 𝟶")
        } else {
            self.age = initialAge
        }
    }
    
    func amIOld () {
        // Do some computations in here and print out the correct statement to the console
        if (self.age < 13){
            print("You are young.")
        } else if (self.age >= 13 && self.age < 18){
            print("You are a teenager.")
        } else {
            print("You are old.")
        }
    }
    
    func yearPasses() {
        // Increment the age of the person in here
        self.age++
    }
}

let person = Person.init(initialAge: 20)
person.amIOld()







