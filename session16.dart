void main() {}

class Parent {
  String? name;
  String? nd_name;
  String? country;
  String? city;
  int? age;

  Parent({this.name, this.age, this.city, this.country, this.nd_name}) {
    print("$name $nd_name");
  }
}
