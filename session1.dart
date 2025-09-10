

void main() {
  // comment for me
  String name = "Salem";
  print("Hello! ${name} fuck you \$");
  // if you want to {write $ as a normal sign you should write \$}
  int age = 16;
  print("$name has $age");
  // if I want to write a type of any var
  print(name.runtimeType);

  dynamic variable = "s";
  print(variable.runtimeType);
  variable = 99;
  print(variable.runtimeType);
  final set;
  set = "name";
  print(set);
}


