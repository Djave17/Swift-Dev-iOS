import Cocoa

struct Person {
    let id: String
    let name: String
}

extension Person: Hashable {
    static func ==(l:Person, r: Person) -> Bool {
        return l.id == r.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}

let maria  = Person(id: "1", name: "Maria")
let maria2  = Person(id: "2", name: "Maria")

let result = maria == maria2

protocol DoctorRepresentable {
    func checkPerson()
}

class Hospital {
    let doctor: DoctorRepresentable
    let name: String
    
    init(doctor: DoctorRepresentable, name: String) {
        self.doctor = doctor
        self.name = name
    }
    
    func check(){
        doctor.checkPerson()
    }
}

class Andres: DoctorRepresentable{
    func checkPerson() {
        print("Sacar sangre")
    }
}
class Juan: DoctorRepresentable{
    func checkPerson() {
        print("Sacar sangre al estilo Juan")
    }
}


let newHospital = Hospital(doctor: Juan(), name: "Militar")


print(newHospital.check())
