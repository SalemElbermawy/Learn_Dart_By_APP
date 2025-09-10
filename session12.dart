void main() {
  final employee1 = Employee("Salem", Gender.male);
  print(employee1);
}

enum Gender {
  male("!!"),
  female("??");

  final String sign;
  const Gender(this.sign);
}

class Employee {
  final String name;
  final Gender type;
  Employee(this.name, this.type);
  void Print() {
    print(type.sign);
  }
}
