//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var name = "Peter"
var gender = "male"
var profession = "software developer"
var location = "NYC"

var name2 = "Amy"
var gender2 = "female"
var profession2 = "professor"
var location2 = "SF"

//                          class and initialization

class PersonA {
    var name3: String
    var gender3: String
    var profession3: String
    var location3: String
    
    init(name4:String, gender4:String, profession4:String, location4:String) {
        self.name3 = name4
        self.gender3 = gender4
        self.profession3 = profession4
        self.location3 = location4
    }

}

let peter = PersonA(name4: "Peter", gender4: "male", profession4: "programmer", location4: "NYC")
let amy = PersonA(name4: "Amy", gender4: "female", profession4: "professor", location4: "SF")

//                      initializing when some variables are unknown

class PersonB {
    var nameB1: String
    var genderB1: String
    var professionB1: String
    
    init(nameB2: String) {
        self.nameB1 = nameB2
        self.genderB1 = "unknown"
        self.professionB1 = "unknown"
    }
    
    init(genderB2: String) {
        self.nameB1 = "unknown"
        self.genderB1 = genderB2
        self.professionB1 = "unknown"
    }
    
    init(professionB2: String) {
        self.nameB1 = "unknown"
        self.genderB1 = "unknown"
        self.professionB1 = professionB2
    }
}

let peterB = PersonB(nameB2: "Peter2")

//                      optionals
//                      optional is done when the variable is declared
//                      optional has to be unwrapped when used

class PersonC {
    var nameC1: String
    var genderC1: String
    var professionC1: String

    
    init(nameC1: String, genderC1: String, professionC1: String) {
        self.nameC1 = nameC1
        self.genderC1 = genderC1
        self.professionC1 = professionC1
    }
    
    var partner: PersonC?
    func createRelationship(partner:PersonC) {
        self.partner = partner
    }
    
    func displayRelationshipMessage() {
        if partner != nil {
            print("\(nameC1) is in a relationship with \(partner!.nameC1)")
        }
    }
    
    func displayRelationshipMessage2() {
        if let partner = partner {
            print("\(nameC1) is in a relationship with \(partner.nameC1)")
        }
    }

}

let peterC = PersonC(nameC1: "Peter", genderC1: "male", professionC1: "developer")
let amyC = PersonC(nameC1: "Amy", genderC1: "female", professionC1: "professor")
peterC.createRelationship(partner: amyC)
peterC.displayRelationshipMessage()
peterC.displayRelationshipMessage2()

//                  subclasses

class Circle {
    var color:UIColor
    var radius:Int
    init(color:UIColor, radius:Int) {
        self.color = color
        self.radius = radius
    }
}

class Square {
    var color:UIColor
    var width:Int
    init(color:UIColor, width: Int) {
        self.color = color
        self.width = width
    }
}

class Shape1 {
    var color:UIColor
    init(color:UIColor) {
        self.color = color
    }
}

class Circle1: Shape1 {
}

class Square1: Shape1 {
}

var circle1a:Circle1 = Circle1(color: UIColor.red)
circle1a.color

