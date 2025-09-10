import 'package:flutter/material.dart';

class Code extends StatelessWidget {
  const Code({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "DART LEARNING",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          elevation: 10,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: "Basics"),
              Tab(text: "Null Safety"),
              Tab(text: "Control Flow"),
              Tab(text: "Loops"),
              Tab(text: "Functions"),
              Tab(text: "Collections"),
              Tab(text: "OOP"),
            ],
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue.shade50, Colors.white],
            ),
          ),
          child: TabBarView(
            children: [
              // Basics Tab
              ListView(
                children: [
                  _buildWelcomeCard(),
                  ConceptSection(
                    title: "Variables and Data Types",
                    code: """
// Variable Declaration
void main() {
  // Numbers
  int age = 25;
  double height = 5.9;
  
  // Strings
  String name = 'John Doe';
  
  // Boolean
  bool isStudent = true;
  
  // Dynamic
  dynamic dynamicVar = 'Hello';
  dynamicVar = 100; // Can change type
  
  // Constants
  const double pi = 3.14159;
  final currentTime = DateTime.now();
  
  print('Name: \$name, Age: \$age');
  print('Height: \$height, Is Student: \$isStudent');
  print('Dynamic: \$dynamicVar, PI: \$pi');
  print('Current Time: \$currentTime');
}
                    """,
                    description: "Dart supports various data types including int, double, String, bool, and dynamic. Use 'const' for compile-time constants and 'final' for variables that can be set only once.",
                  ),
                  ConceptSection(
                    title: "String Interpolation",
                    code: """
void main() {
  String firstName = 'John';
  String lastName = 'Doe';
  int age = 30;
  
  // String concatenation
  String fullName = firstName + ' ' + lastName;
  
  // String interpolation
  String message = 'My name is \$fullName and I am \$age years old';
  
  // Multi-line string
  String bio = '''
Name: \$firstName \$lastName
Age: \$age
Occupation: Developer
  ''';
  
  print(fullName);
  print(message);
  print(bio);
}
                    """,
                    description: "String interpolation allows you to embed variables and expressions within strings using the \${expression} syntax. Multi-line strings can be created using triple quotes.",
                  ),
                  ConceptSection(
                    title: "Operators",
                    code: """
void main() {
  // Arithmetic operators
  int a = 10;
  int b = 3;
  print('a + b = \${a + b}'); // 13
  print('a - b = \${a - b}'); // 7
  print('a * b = \${a * b}'); // 30
  print('a / b = \${a / b}'); // 3.33...
  print('a ~/ b = \${a ~/ b}'); // 3 (integer division)
  print('a % b = \${a % b}'); // 1 (remainder)
  
  // Comparison operators
  print('a > b: \${a > b}'); // true
  print('a < b: \${a < b}'); // false
  print('a == b: \${a == b}'); // false
  print('a != b: \${a != b}'); // true
  
  // Logical operators
  bool x = true;
  bool y = false;
  print('x && y: \${x && y}'); // false
  print('x || y: \${x || y}'); // true
  print('!x: \${!x}'); // false
}
                    """,
                    description: "Dart supports various operators including arithmetic, comparison, and logical operators. The ~/ operator performs integer division, and % returns the remainder.",
                  ),
                  ConceptSection(
                    title: "Type Conversion",
                    code: """
void main() {
  // String to int
  String stringValue = '123';
  int intValue = int.parse(stringValue);
  print('String to int: \$intValue');
  
  // String to double
  String doubleString = '123.45';
  double doubleValue = double.parse(doubleString);
  print('String to double: \$doubleValue');
  
  // int to String
  int number = 456;
  String numberString = number.toString();
  print('int to String: \$numberString');
  
  // double to String with precision
  double pi = 3.14159;
  String piString = pi.toStringAsFixed(2);
  print('double to String with 2 decimals: \$piString');
  
  // int to double
  int integer = 100;
  double decimal = integer.toDouble();
  print('int to double: \$decimal');
  
  // double to int
  double value = 99.99;
  int intVal = value.toInt();
  print('double to int: \$intVal');
}
                    """,
                    description: "Dart provides methods to convert between different data types. Use parse() to convert strings to numbers, and toString() to convert numbers to strings.",
                  ),
                ],
              ),
              
              // Null Safety Tab
              ListView(
                children: [
                  ConceptSection(
                    title: "Nullable Types",
                    code: """
void main() {
  // Non-nullable variables (cannot be null)
  String name = 'John';
  // name = null; // This would cause a compile error
  
  // Nullable variables (can be null)
  String? nullableName;
  nullableName = 'Jane';
  nullableName = null; // This is allowed
  
  print('Nullable name: \$nullableName');
  
  // Asserting null value
  String? mightBeNull = null;
  // String definiteValue = mightBeNull; // Error
  String definiteValue = mightBeNull!; // Runtime exception if null
  
  // Default values with null-aware operator
  String? nullName;
  String result = nullName ?? 'Default Name';
  print('Result: \$result');
}
                    """,
                    description: "Dart's null safety prevents null reference exceptions. Add '?' after a type to make it nullable. Use the null-aware operator '??' to provide default values for null variables.",
                  ),
                  ConceptSection(
                    title: "Null-aware Operators",
                    code: """
void main() {
  // Null-aware operators
  String? nullableString;
  
  // ?? operator provides default value if null
  String result = nullableString ?? 'Default Value';
  print('Result: \$result');
  
  // ??= operator assigns value only if variable is null
  String? name;
  name ??= 'Assigned Value';
  print('Name: \$name');
       
  // ?. operator accesses property only if object is not null
  String? text;
  int? length = text?.length;
  print('Length: \$length');
  
  // ... with method calls
  String? maybeString;
  String upper = maybeString?.toUpperCase() ?? 'DEFAULT';
  print('Upper: \$upper');
  
  // Complex example
  List<String>? maybeList;
  int listLength = maybeList?.length ?? 0;
  print('List length: \$listLength');
}
                    """,
                    description: "Dart provides several null-aware operators: ?? for default values, ??= for conditional assignment, and ?. for safe member access. These help handle null values gracefully.",
                  ),
                ],
              ),
              
              // Control Flow Tab
              ListView(
                children: [
                  ConceptSection(
                    title: "If-Else Statements",
                    code: """
void main() {
  int score = 85;
  
  // Basic if statement
  if (score >= 60) {
    print('You passed!');
  }
  
  // If-else statement
  if (score >= 90) {
    print('Grade: A');
  } else if (score >= 80) {
    print('Grade: B');
  } else if (score >= 70) {
    print('Grade: C');
  } else if (score >= 60) {
    print('Grade: D');
  } else {
    print('Grade: F');
  }
  
  // Ternary operator
  String status = score >= 60 ? 'Pass' : 'Fail';
  print('Status: \$status');
  
  // Conditional expressions
  String message = score >= 80 
      ? 'Excellent!' 
      : score >= 60 
          ? 'Good' 
          : 'Need improvement';
  print('Message: \$message');
}
                    """,
                    description: "If-else statements allow conditional execution of code. The ternary operator (condition ? expr1 : expr2) provides a concise way to write simple conditionals.",
                  ),
                  ConceptSection(
                    title: "Switch Statements",
                    code: """
void main() {
  String grade = 'B';
  
  // Switch statement
  switch (grade) {
    case 'A':
      print('Excellent!');
      break;
    case 'B':
      print('Good job!');
      break;
    case 'C':
      print('Fair');
      break;
    case 'D':
      print('Needs improvement');
      break;
    case 'F':
      print('Failed');
      break;
    default:
      print('Invalid grade');
  }
  
  // Enhanced switch expression (Dart 3.0+)
  String evaluation = switch (grade) {
    'A' => 'Excellent',
    'B' => 'Good',
    'C' => 'Fair',
    'D' => 'Needs improvement',
    'F' => 'Failed',
    _ => 'Invalid grade',
  };
  print('Evaluation: \$evaluation');
  
  // Switch with patterns
  Object value = 42;
  String result = switch (value) {
    int i => 'Integer: \$i',
    double d => 'Double: \$d',
    String s => 'String: \$s',
    _ => 'Unknown type',
  };
  print('Result: \$result');
}
                    """,
                    description: "Switch statements provide a way to execute different code based on the value of a variable. Dart 3.0 introduced enhanced switch expressions with pattern matching.",
                  ),
                ],
              ),
              
              // Loops Tab
              ListView(
                children: [
                  ConceptSection(
                    title: "For Loops",
                    code: """
void main() {
  // Basic for loop
  print('Basic for loop:');
  for (int i = 0; i < 5; i++) {
    print('Index: \$i');
  }
  
  // For loop with break and continue
  print('For loop with break and continue:');
  for (int i = 0; i < 10; i++) {
    if (i == 2) {
      continue; // Skip iteration
    }
    if (i == 7) {
      break; // Exit loop
    }
    print('Index: \$i');
  }
  
  // For-in loop with list
  print('For-in loop:');
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  for (String fruit in fruits) {
    print('Fruit: \$fruit');
  }
  
  // forEach method
  print('ForEach method:');
  fruits.forEach((fruit) {
    print('Fruit: \$fruit');
  });
  
  // Shorter forEach syntax
  fruits.forEach(print);
}
                    """,
                    description: "For loops execute code repeatedly. The basic for loop has initialization, condition, and increment parts. For-in loops iterate over collections. The forEach method provides a functional approach.",
                  ),
                  ConceptSection(
                    title: "While and Do-While Loops",
                    code: """
void main() {
  // While loop
  print('While loop:');
  int count = 0;
  while (count < 5) {
    print('Count: \$count');
    count++;
  }
  
  // Do-while loop
  print('Do-while loop:');
  int number = 0;
  do {
    print('Number: \$number');
    number++;
  } while (number < 5);
  
  // Infinite loop with break
  print('Infinite loop with break:');
  int i = 0;
  while (true) {
    print('i: \$i');
    i++;
    if (i >= 5) {
      break;
    }
  }
  
  // Real-world example: retry mechanism
  print('Retry mechanism:');
  int attempts = 0;
  bool success = false;
  
  while (!success && attempts < 3) {
    print('Attempt \${attempts + 1}');
    // Simulate operation that might fail
    success = attempts == 2; // Succeeds on third attempt
    attempts++;
  }
  
  if (success) {
    print('Operation succeeded!');
  } else {
    print('Operation failed after \$attempts attempts');
  }
}
                    """,
                    description: "While loops check the condition before executing the loop body. Do-while loops execute the body at least once before checking the condition. Both are useful when the number of iterations is unknown.",
                  ),
                ],
              ),
              
              // Functions Tab
              ListView(
                children: [
                  ConceptSection(
                    title: "Function Basics",
                    code: """
void main() {
  // Calling functions
  greet('Alice');
  
  int sum = add(5, 3);
  print('5 + 3 = \$sum');
  
  // Function with optional positional parameters
  printInfo('Bob', 25, 'USA');
  
  // Function with named parameters
  printDetails(name: 'Charlie', age: 30, country: 'Canada');
  
  // Function with default values
  printMessage('Hello');
  printMessage('Hi', times: 3);
}

// Basic function
void greet(String name) {
  print('Hello, \$name!');
}

// Function with return value
int add(int a, int b) {
  return a + b;
}

// Function with optional positional parameters
void printInfo(String name, [int? age, String? country]) {
  print('Name: \$name');
  if (age != null) {
    print('Age: \$age');
  }
  if (country != null) {
    print('Country: \$country');
  }
}

// Function with named parameters
void printDetails({required String name, int? age, String? country}) {
  print('Name: \$name');
  if (age != null) {
    print('Age: \$age');
  }
  if (country != null) {
    print('Country: \$country');
  }
}

// Function with default values
void printMessage(String message, {int times = 1}) {
  for (int i = 0; i < times; i++) {
    print(message);
  }
}
                    """,
                    description: "Functions are reusable blocks of code. They can have required and optional parameters, named parameters, and default values. Functions can return values or be void (no return).",
                  ),
                  ConceptSection(
                    title: "Arrow Functions and Higher-Order Functions",
                    code: """
void main() {
  // Arrow function
  int square(int n) => n * n;
  print('Square of 5: \${square(5)}');
  
  // Function as variable
  Function multiply = (int a, int b) => a * b;
  print('3 * 4 = \${multiply(3, 4)}');
  
  // Higher-order function: function as parameter
  void processFunction(int a, int b, Function operation) {
    var result = operation(a, b);
    print('Result: \$result');
  }
  
  processFunction(10, 5, (a, b) => a + b);
  processFunction(10, 5, (a, b) => a * b);
  
  // Returning a function
  Function calculator(String operation) {
    if (operation == 'add') {
      return (int a, int b) => a + b;
    } else if (operation == 'multiply') {
      return (int a, int b) => a * b;
    }
    return (int a, int b) => 0;
  }
  
  var adder = calculator('add');
  print('5 + 3 = \${adder(5, 3)}');
  
  // Anonymous function
  var numbers = [1, 2, 3, 4, 5];
  numbers.forEach((number) {
    print('Number: \$number');
  });
  
  // Shorter syntax
  numbers.forEach((number) => print('Number: \$number'));
}
                    """,
                    description: "Arrow functions provide concise syntax for functions with a single expression. Higher-order functions can accept functions as parameters or return functions. Anonymous functions are useful for callbacks.",
                  ),
                ],
              ),
              
              // Collections Tab
              ListView(
                children: [
                  ConceptSection(
                    title: "Lists and Sets",
                    code: """
void main() {
  // List creation
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  print('Fruits: \$fruits');
  
  // Accessing elements
  print('First fruit: \${fruits[0]}');
  print('Last fruit: \${fruits.last}');
  
  // Modifying lists
  fruits.add('Orange');
  fruits.insert(1, 'Mango');
  print('After adding: \$fruits');
  
  fruits.remove('Banana');
  print('After removing Banana: \$fruits');
  
  // List methods
  print('Length: \${fruits.length}');
  print('Contains Apple: \${fruits.contains('Apple')}');
  print('Index of Cherry: \${fruits.indexOf('Cherry')}');
  
  // Iterating through list
  for (String fruit in fruits) {
    print('Fruit: \$fruit');
  }
  
  // Set creation (unique elements)
  Set<int> numbers = {1, 2, 3, 3, 4, 4, 5};
  print('Numbers: \$numbers'); // Duplicates are removed
  
  // Set operations
  Set<int> setA = {1, 2, 3, 4};
  Set<int> setB = {3, 4, 5, 6};
  
  print('Union: \${setA.union(setB)}');
  print('Intersection: \${setA.intersection(setB)}');
  print('Difference: \${setA.difference(setB)}');
}
                    """,
                    description: "Lists are ordered collections that can contain duplicate elements. Sets are unordered collections of unique elements. Both provide various methods for manipulation and querying.",
                  ),
                  ConceptSection(
                    title: "Maps",
                    code: """
void main() {
  // Map creation
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 35,
  };
  print('Ages: \$ages');
  
  // Accessing values
  print('Alice\\'s age: \${ages['Alice']}');
  print('Bob\\'s age: \${ages['Bob']}');
  
  // Adding and updating entries
  ages['David'] = 28; // Add new entry
  ages['Alice'] = 26; // Update existing entry
  print('Updated ages: \$ages');
  
  // Removing entries
  ages.remove('Bob');
  print('After removing Bob: \$ages');
  
  // Checking properties
  print('Keys: \${ages.keys}');
  print('Values: \${ages.values}');
  print('Contains key Charlie: \${ages.containsKey('Charlie')}');
  print('Contains value 35: \${ages.containsValue(35)}');
  
  // Iterating through map
  ages.forEach((key, value) {
    print('\$key is \$value years old');
  });
  
  // Map with different types
  Map<String, dynamic> person = {
    'name': 'John Doe',
    'age': 30,
    'isStudent': false,
    'grades': [90, 85, 95],
  };
  print('Person: \$person');
  
  // Nested maps
  Map<String, Map<String, dynamic>> people = {
    'person1': {
      'name': 'Alice',
      'age': 25,
    },
    'person2': {
      'name': 'Bob',
      'age': 30,
    },
  };
  print('People: \$people');
}
                    """,
                    description: "Maps are collections of key-value pairs. Keys are unique, and each key maps to exactly one value. Maps are useful for storing and retrieving data using meaningful keys.",
                  ),
                ],
              ),
              
              // OOP Tab
              ListView(
                children: [
                  ConceptSection(
                    title: "Classes and Objects",
                    code: """
void main() {
  // Creating objects
  Person person1 = Person('Alice', 25);
  person1.introduce();
  
  Person person2 = Person('Bob', 30);
  person2.introduce();
  
  // Using getters and setters
  person1.age = 26; // Using setter
  print('\\\${person1.name} is now \${person1.age} years old'); // Using getter
  
  // Static member access
  print('Total people created: \${Person.totalPeople}');
}

// Class definition
class Person {
  // Properties
  String name;
  int _age; // Private variable (encapsulation)
  
  // Static property
  static int totalPeople = 0;
  
  // Constructor
  Person(this.name, int age) {
    this._age = age;
    totalPeople++; // Increment static counter
  }
  
  // Getter
  int get age => _age;
  
  // Setter
  set age(int value) {
    if (value > 0) {
      _age = value;
    }
  }
  
  // Method
  void introduce() {
    print('Hello, my name is \$name and I am \$_age years old.');
  }
  
  // Static method
  static void printTotalPeople() {
    print('Total people: \$totalPeople');
  }
}
                    """,
                    description: "Classes are blueprints for creating objects. They encapsulate data (properties) and behavior (methods). Constructors initialize objects, and getters/setters control access to properties.",
                  ),
                  ConceptSection(
                    title: "Inheritance and Polymorphism",
                    code: """
void main() {
  // Creating objects of different classes
  Animal animal = Animal('Generic Animal');
  animal.makeSound();
  
  Dog dog = Dog('Buddy');
  dog.makeSound();
  dog.fetch();
  
  Cat cat = Cat('Whiskers');
  cat.makeSound();
  cat.scratch();
  
  // Polymorphism
  Animal myDog = Dog('Rex');
  myDog.makeSound(); // Calls Dog's implementation
  
  // List of different animals
  List<Animal> animals = [Dog('Fido'), Cat('Mittens'), Animal('Generic')];
  for (Animal animal in animals) {
    animal.makeSound(); // Each makes its own sound
  }
}

// Base class
class Animal {
  String name;
  
  Animal(this.name);
  
  void makeSound() {
    print('\$name makes a sound');
  }
}

// Derived class (inherits from Animal)
class Dog extends Animal {
  Dog(String name) : super(name);
  
  @override
  void makeSound() {
    print('\$name barks');
  }
  
  void fetch() {
    print('\$name fetches the ball');
  }
}

// Another derived class
class Cat extends Animal {
  Cat(String name) : super(name);
  
  @override
  void makeSound() {
    print('\$name meows');
  }
  
  void scratch() {
    print('\$name scratches the furniture');
  }
}
                    """,
                    description: "Inheritance allows a class to inherit properties and methods from another class. Polymorphism enables objects of different classes to be treated as objects of a common superclass, with each providing its own implementation of methods.",
                  ),
                  ConceptSection(
                    title: "Abstract Classes and Interfaces",
                    code: """
void main() {
  // Cannot instantiate abstract class
  // Shape shape = Shape(); // Error
  
  Circle circle = Circle(5.0);
  print('Circle area: \${circle.calculateArea()}');
  print('Circle perimeter: \${circle.calculatePerimeter()}');
  
  Rectangle rectangle = Rectangle(4.0, 6.0);
  print('Rectangle area: \${rectangle.calculateArea()}');
  print('Rectangle perimeter: \${rectangle.calculatePerimeter()}');
  
  // Using interface
  Flyable bird = Bird();
  bird.fly();
  
  Flyable airplane = Airplane();
  airplane.fly();
}

// Abstract class
abstract class Shape {
  // Abstract methods (no implementation)
  double calculateArea();
  double calculatePerimeter();
  
  // Concrete method
  void describe() {
    print('This is a shape');
  }
}

// Concrete class implementing abstract class
class Circle extends Shape {
  double radius;
  
  Circle(this.radius);
  
  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }
  
  @override
  double calculatePerimeter() {
    return 2 * 3.14159 * radius;
  }
}

// Another concrete class
class Rectangle extends Shape {
  double width;
  double height;
  
  Rectangle(this.width, this.height);
  
  @override
  double calculateArea() {
    return width * height;
  }
  
  @override
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

// Interface (abstract class with only abstract methods)
abstract class Flyable {
  void fly();
}

// Class implementing interface
class Bird implements Flyable {
  @override
  void fly() {
    print('Bird is flying');
  }
}

// Another class implementing the same interface
class Airplane implements Flyable {
  @override
  void fly() {
    print('Airplane is flying');
  }
}
                    """,
                    description: "Abstract classes cannot be instantiated and may contain abstract methods (without implementation). Interfaces define a contract that classes must implement. Dart doesn't have a separate interface keyword - any class can serve as an interface.",
                  ),
                  ConceptSection(
                    title: "Mixins and Enums",
                    code: """
void main() {
  // Using classes with mixins
  Duck duck = Duck();
  duck.swim();
  duck.fly();
  duck.quack();
  
  // Using enums
  Day today = Day.wednesday;
  print('Today is \${today.name}');
  
  // Switch with enums
  switch (today) {
    case Day.monday:
    case Day.tuesday:
    case Day.wednesday:
    case Day.thursday:
    case Day.friday:
      print('Weekday');
      break;
    case Day.saturday:
    case Day.sunday:
      print('Weekend');
      break;
  }
  
  // Iterating through enum values
  for (Day day in Day.values) {
    print('Day: \${day.name}');
  }
}

// Mixins
mixin Swimmer {
  void swim() {
    print('Swimming');
  }
}

mixin Flyer {
  void fly() {
    print('Flying');
  }
}

mixin Quacker {
  void quack() {
    print('Quack quack!');
  }
}

// Class using mixins
class Duck with Swimmer, Flyer, Quacker {
  // Duck inherits all methods from mixins
}

// Enum definition
enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

// Enhanced enums (Dart 2.17+)
enum Status {
  pending('Pending', 1),
  approved('Approved', 2),
  rejected('Rejected', 3);
  
  final String description;
  final int code;
  
  const Status(this.description, this.code);
  
  bool get isCompleted => this == Status.approved || this == Status.rejected;
}

void useEnhancedEnum() {
  Status status = Status.approved;
  print('Status: \${status.description}'); // Approved
  print('Code: \${status.code}'); // 2
  print('Is completed: \${status.isCompleted}'); // true
}
                    """,
                    description: "Mixins are a way to reuse code across multiple class hierarchies. Enums define a set of named constants, making code more readable and maintainable. Dart 2.17+ enhanced enums can have properties and methods.",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeCard() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade100, Colors.blue.shade50],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child:  Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  "Welcome to Dart Learning!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  "Explore Dart programming concepts through interactive examples. Each tab contains code samples with explanations and results.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue[800],
                  ),
                  textAlign: TextAlign.center, 
                ),
                SizedBox(height: 16),
                Icon(Icons.code, size: 50, color: Colors.blue),
                SizedBox(height: 16),
                Text(
                  "Start your journey to becoming a Dart developer!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ConceptSection extends StatefulWidget {
  final String title;
  final String code;
  final String description;

  const ConceptSection({
    super.key,
    required this.title,
    required this.code,
    required this.description,
  });

  @override
  State<ConceptSection> createState() => _ConceptSectionState();
}

class _ConceptSectionState extends State<ConceptSection> {
  bool _showDescription = false;
  bool _showResult = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section Title
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              const SizedBox(height: 12),
              
              // Code Display
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: SelectableText(
                  widget.code,
                  style: TextStyle(
                    fontFamily: 'Monospace',
                    fontSize: 14,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              
              // Buttons Row
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _showDescription = !_showDescription;
                          if (_showResult && _showDescription) {
                            _showResult = false;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),    
                      ),   
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _showResult = !_showResult;
                          if (_showDescription && _showResult) {
                            _showDescription = false;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[700],
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        "Result",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              
              // Description Content
              if (_showDescription)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[900],
                    ),
                  ),
                ),
              
              // Result Content
              if (_showResult)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Output:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                        ),
                      ),
                      const SizedBox(height: 8),
                      // This would typically show the actual output
                      // For a real app, you might want to execute the code
                      Text(
                        _getSampleOutput(widget.title),
                        style: TextStyle(
                          fontFamily: 'Monospace',
                          fontSize: 14,
                          color: Colors.green[800],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  String _getSampleOutput(String title) {
    // This is a simplified approach - in a real app, you'd execute the code
    switch (title) {
      case "Variables and Data Types":
        return "Name: John Doe, Age: 25\nHeight: 5.9, Is Student: true\nDynamic: 100, PI: 3.14159\nCurrent Time: 2023-08-15 10:30:45.123";
      case "String Interpolation":
        return "John Doe\nMy name is John Doe and I am 30 years old\nName: John Doe\nAge: 30\nOccupation: Developer";
      case "Operators":
        return "a + b = 13\na - b = 7\na * b = 30\na / b = 3.333...\na ~/ b = 3\na % b = 1\na > b: true\na < b: false\na == b: false\na != b: true\nx && y: false\nx || y: true\n!x: false";
      case "Type Conversion":
        return "String to int: 123\nString to double: 123.45\nint to String: 456\ndouble to String with 2 decimals: 3.14\nint to double: 100.0\ndouble to int: 99";
      case "Nullable Types":
        return "Nullable name: null\nResult: Default Name";
      case "Null-aware Operators":
        return "Result: Default Value\nName: Assigned Value\nLength: null\nUpper: DEFAULT\nList length: 0";
      case "If-Else Statements":
        return "You passed!\nGrade: B\nStatus: Pass\nMessage: Good";
      case "Switch Statements":
        return "Good job!\nEvaluation: Good\nResult: Integer: 42";
      case "For Loops":
        return "Basic for loop:\nIndex: 0\nIndex: 1\nIndex: 2\nIndex: 3\nIndex: 4\nFor loop with break and continue:\nIndex: 0\nIndex: 1\nIndex: 3\nIndex: 4\nIndex: 5\nIndex: 6\nFor-in loop:\nFruit: Apple\nFruit: Banana\nFruit: Cherry\nForEach method:\nFruit: Apple\nFruit: Banana\nFruit: Cherry\nFruit: Apple\nFruit: Banana\nFruit: Cherry";
      case "While and Do-While Loops":
        return "While loop:\nCount: 0\nCount: 1\nCount: 2\nCount: 3\nCount: 4\nDo-while loop:\nNumber: 0\nNumber: 1\nNumber: 2\nNumber: 3\nNumber: 4\nInfinite loop with break:\ni: 0\ni: 1\ni: 2\ni: 3\ni: 4\nRetry mechanism:\nAttempt 1\nAttempt 2\nAttempt 3\nOperation succeeded!";
      case "Function Basics":
        return "Hello, Alice!\n5 + 3 = 8\nName: Bob\nAge: 25\nCountry: USA\nName: Charlie\nAge: 30\nCountry: Canada\nHello\nHi\nHi\nHi";
      case "Arrow Functions and Higher-Order Functions":
        return "Square of 5: 25\n3 * 4 = 12\nResult: 15\nResult: 50\n5 + 3 = 8\nNumber: 1\nNumber: 2\nNumber: 3\nNumber: 4\nNumber: 5\nNumber: 1\nNumber: 2\nNumber: 3\nNumber: 4\nNumber: 5";
      case "Lists and Sets":
        return "Fruits: [Apple, Banana, Cherry]\nFirst fruit: Apple\nLast fruit: Cherry\nAfter adding: [Apple, Mango, Banana, Cherry, Orange]\nAfter removing Banana: [Apple, Mango, Cherry, Orange]\nLength: 4\nContains Apple: true\nIndex of Cherry: 2\nFruit: Apple\nFruit: Mango\nFruit: Cherry\nFruit: Orange\nNumbers: {1, 2, 3, 4, 5}\nUnion: {1, 2, 3, 4, 5, 6}\nIntersection: {3, 4}\nDifference: {1, 2}";
      case "Maps":
        return "Ages: {Alice: 25, Bob: 30, Charlie: 35}\nAlice's age: 25\nBob's age: 30\nUpdated ages: {Alice: 26, Bob: 30, Charlie: 35, David: 28}\nAfter removing Bob: {Alice: 26, Charlie: 35, David: 28}\nKeys: (Alice, Charlie, David)\nValues: (26, 35, 28)\nContains key Charlie: true\nContains value 35: true\nAlice is 26 years old\nCharlie is 35 years old\nDavid is 28 years old\nPerson: {name: John Doe, age: 30, isStudent: false, grades: [90, 85, 95]}\nPeople: {person1: {name: Alice, age: 25}, person2: {name: Bob, age: 30}}";
      case "Classes and Objects":
        return "Hello, my name is Alice and I am 25 years old.\nHello, my name is Bob and I am 30 years old.\nAlice is now 26 years old\nTotal people created: 2";
      case "Inheritance and Polymorphism":
        return "Generic Animal makes a sound\nBuddy barks\nBuddy fetches the ball\nWhiskers meows\nWhiskers scratches the furniture\nRex barks\nFido barks\nMittens meows\nGeneric makes a sound";
      case "Abstract Classes and Interfaces":
        return "Circle area: 78.53975\nCircle perimeter: 31.4159\nRectangle area: 24.0\nRectangle perimeter: 20.0\nBird is flying\nAirplane is flying";
      case "Mixins and Enums":
        return "Swimming\nFlying\nQuack quack!\nToday is wednesday\nWeekday\nDay: monday\nDay: tuesday\nDay: wednesday\nDay: thursday\nDay: friday\nDay: saturday\nDay: sunday";
      default:
        return "Sample output would appear here";
    }
  }
}