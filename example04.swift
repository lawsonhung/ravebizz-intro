import Foundation

// MARK: - Example
class Car {
    var speed: Int
    
    init(speed: Int) {
        self.speed = speed
    }
    
    func drive() {
        print("Driving at \(speed) miles/hr.")
    }
    
}

/// FlyingCar is a subclass of the Car class and gains the Car class's drive() function and speed int
class FlyingCar: Car {
    func fly() {
        print("Flying at \(speed) miles/hr.")
    }
}

/// TeleportingCar is a subclass of the Car class
class TeleportingCar: Car {
    func teleport(to location: String) {
        print("Teleported to \(location) at speed \(speed * 0)")
    }
}

let flyingCar = FlyingCar(speed: 50)
flyingCar.drive()
flyingCar.fly()
let teleportingCar = TeleportingCar(speed: 60)
teleportingCar.teleport(to: "Mt. Everest")

/// Swift only support single inheritance
/// We cannot make a class that inherits both FlyingCar and TeleportingCar


// MARK: - Question
/**
# Make a base class called Animal with:
    1. func eat() that prints "eating"
    2. property age: Int, and weight: Int
        - starts out at age 0 and weight 10
    3. func growOneYear() that increase weight by 10 and age by 1
    4. func stats() that prints out age and weight
 
# Make a sub class of Animal called Pet with function play() that prints "playing"
 
# Make a sub class of Animal called Predator with:
    1) funciton hunt() that prints "hunting"
        - hunt() function should call eat() function 1 out of 2 times randomly
 
 */
class Animal {
    var age: Int
    var weight: Int
    
    init(){
        age = 0
        weight = 10
    }
    
    func eat(){
        print("Eating")
    }
    
    func growOneYear(){
        self.weight = self.weight + 10
        self.age = self.age + 1
    }
    
    func stats(){
        print("Your age is \(age) and your weight is \(weight)")
    }
}

class Predator: Animal{
    func hunt(){
        let eatTimes = Int.random(in 1...2)
        for _ in 1...eatTimes {
            self.eat()
        }
    }
}

let animal = Animal()
animal.eat()
animal.stats()
animal.growOneYear()
animal.stats()
let predator = Predator()
predator.hunt()
predator.stats()
predator.growOneYear()
predator.stats()
