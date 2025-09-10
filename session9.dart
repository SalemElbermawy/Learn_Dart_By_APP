// Static variables

// it is very useful if you want to save the memory and the variables are constand or fixed for each object

// I just can call it in the calss or by class

// class Greeting {
//   static var greet = "Hello";
//   String name;
//   Greeting(this.name) {
//     print('$greet $name');
//   // you can do static function too, but if you want to use variables in it you should use "static var, too"
//   }
// }

// void main() {
//   Greeting ob = Greeting("Salem");
// }

void main() {}

class Veichel {
  String color = "black";
  int speed = 12;
  int accelerate = 3;
  String? model;
  void Print() {
    print("$speed, $model");
  }
}

class Car extends Veichel {
  int wheels = 4;
  String color = 'blue';
  @override
  void Print() {
    print(wheels);
  }
}

// implemnt

class Bike implements Veichel {
  @override
  String color = "blue";
  @override
  int speed = 22;
  @override
  int accelerate = 3;
  @override
  String? model;
  String owner = "Salem";
  @override
  void Print() {
    print("$speed, $model");
  }
}

// you can implements and extend classes in the same class but use different class for each one

// how can you interhance intializing

// class Info {
//   String name;
//   int age;
//   Info(this.name, this.age) {}
// }

// class Info_1 extends Info {
//   String city;
//   Info_1(name, age, this.city) : super(name, age);
// }
