// if statement
// !True -----> False
// False -----> True

void main() {
  int age = 13;
  double salary = 1000;
  if (age >= 18 && salary <= 1000) {
    print("You 're adult");
  } else if (salary <= 1000 || age > 14) {
    print("good");
  } else {
    print("not adult");
  }

  // short if statement
  String name = 'ake';
  print(name.startsWith('s') ? "good" : 11);
  // using of switch
}
