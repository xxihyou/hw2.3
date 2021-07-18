//
//  User.swift
//  hw2.3
//
//  Created by Maria Berger on 17.07.2021.
//

import Foundation

struct User {
   let login: String
    let password: Any?
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let myImage: String
    let name: String
    let surname: String
    let address: String
    let age: String
    let aboutMe: String
    let occupation: String
    let photoOne: String
    let photoTwo: String
    let photoThree: String
    
     
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(myImage: "myImage", name: "Maria", surname: "Berger", address: "Санкт-Петербург", age: "25", aboutMe: "Отучилась на китаиста, пожила и поучилась в Китае, но в итоге переехала в Питер и решила связать жизнь с  IT сферой. Разговариваю на пяти языках (пока что), в будущем планирую поучить еще парочку! Люблю путешествовать и фотографировать.", occupation: "Преподаватель английского и китайского", photoOne: "imageOne", photoTwo: "imageTwo", photoThree: "imageThree")
    }
}
