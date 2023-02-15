

// Defining the protocol

/* protocol MyProtocol {
   // Define requirements
 }
 */


// Adopting the protocol

/**  struct MyStruct:  MyProtocol {  }*/
/**  struct MyClass:  MyProtocol {  }*/

//Demo

protocol CanFly{
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The birds makes a new bird in a shell.")
        }
    }
    
}

class Eagle: Bird {
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
    
//    func fly() {
//        print("The birds flaps its wings and lift off into the sky.")
//    }
    
}

class Penguin: Bird {
    func swim(){
        print("The penguin paddles through the water.")
    }
}

// but penguin can't fly i.e. fly method of Bird class not applicable // should not be inherit

// similar in struct

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}


struct Airplane: CanFly{
    func fly() {
       print("The airplane uses its engine to lift off into tyhe air.")
    }
    
    
}



// to restrict we have defined a protocol above

class Eagles:  CanFly {
    
    func fly() {
            print("The birds flaps its wings and lift off into the sky.")
        
    }
    
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
    
}

//now

let myEagle = Eagles()
myEagle.fly()
myEagle.soar()

let myPlane = Airplane()
myPlane.fly()

let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swim()
//myPenguin.fly()  can't call fly method

let myMuseum = FlyingMuseum()
myMuseum.flyingDemo(flyingObject: myPlane)



