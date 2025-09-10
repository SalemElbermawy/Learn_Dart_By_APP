// abstract class
// OOP
// Polymorphism
// Abstraction
// OOP Brief
// Mixins
// Class modifiers

// void main() {}

// abstract class Vehicle {
//   void Info(name); // this is abstrac class
//   void Print() {
//     print("salem");
//   }
// }

// class child extends Vehicle {
//   @override
//   void Info(name) {
//     print(name);
//   }

// }

void main() {
  // final date = DateTime.now();
  // print(date);
  rabbit ob=rabbit();
  print(ob.move);
}  

   
  
mixin Move{
  int move =10;
}

class rabbit with Move{
  void Print(){
    print(move);
  }
}
