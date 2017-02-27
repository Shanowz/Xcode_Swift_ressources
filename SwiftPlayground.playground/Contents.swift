
class Person {
    let firstName:String!
    let lastName:String!
    let age:Int!
    
    init(fName:String, lName:String, age:Int) {
        self.firstName = fName
        self.lastName = lName
        self.age = age
    }
}

class GroupPeople {
    let name:String!
    lazy var allPeoples = [Person]()
    
    init(name:String) {
        self.name=name
    }
    
    func addPeople(person:Person) {
        allPeoples.append(person)
    }
    
    func addPeople(person:[Person]){
        allPeoples.append(contentsOf: person)
    }
    
//    func averageAge() -> Float{
//        var sumOfages = 0
//        for person in allPeoples{
//            sumOfages+=person.age
//        }
//        
//        return Float(sumOfages) / Float(allPeoples.count)
//    }
    
    func averageAge() -> Float{
        if allPeoples.isEmpty{
            return 0.0
        }
        //mieux que de faire un for..
        let sumOfAges = allPeoples.reduce(0) {(total, people) -> Int in
            return total+people.age
        }
        return Float(sumOfAges)/Float(allPeoples.count)
    }
    
    func allFirstNames() -> [String]{
        //un map retourne toujours un tableau
        return allPeoples.map{(personneToto:Person) -> String in
            return personneToto.firstName
        }
    }
}


let group = GroupPeople(name: "The expendables")
group.addPeople(person:[Person(fName: "John", lName: "Matrix", age: 41), Person(fName: "Martin", lName: "Riggs", age: 32)])

var allFirstNames = [String]()

var allLastNames = [String]()

let averageAge = group.averageAge()

print("all firstName : \(allFirstNames)")

print("all lastName : \(allLastNames)")