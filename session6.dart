void main() {
  // you must call the function here to could run it

  print(Print());

  // sure you can store the return in variable

  String name = Print();

  print(name);

  var variable = random();

  print(variable);

  (int, int) tuple = (12, 55);

  print(tuple);
  print(tuple.$1);
  print(tuple.$2);

  print(info());

  print(info().$1);
  print(info().$2);

  // another way to do that
  var (n, a) = info();
  print(n);
  print(a);
}

// void means this function does not return anything

void Name() {
  print("Salem");
}

String Print() {
  return "Hello!";
}

int random() {
  return 12;
}

(String, int) info() {
  return ("salem", 16);
}
