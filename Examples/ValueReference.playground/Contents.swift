struct User {
    var fullName: String
    var email: String
    var age: Int

}

var someUser = User(fullName: "Corey", email: "corey@gmail.com", age: 25)

var anotherUser = someUser

someUser.email = "corey21@gmail.com"

class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int){
        self.fullName = name
        self.email = email
        self.age = age
    }

}

var somePerson = Person(name: "Tim", email: "tim@gmail.com", age: 53)

var anotherPerson = somePerson

somePerson.email = "tim22@gmail.com"

 















