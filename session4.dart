void main() {
  // if you want to make cases to check something

  String age = "salem";

  switch (age) {
    case '':
      print("you are adult");
    default:
      print("Yoooooooo");
  }

  switch (age) {
    case 'salem':
    // print("you are adult"); here you will get the value of defult even the condition is true
    default:
      print("Yoooooooo");
  }
  String destination = "";
  double distance = 88;

  if (destination == "PGR") {
    print(distance * 10);
  } else if (destination == "XYZ") {
    print(distance * 8);
  } else {
    print("Invalid");
    return; //the below code will not excute because you have written 'return'
  }

  switch (destination) {
    case "PGR":
      print(distance * 8);
    case "XYZ":
      print(distance * 9);
    default:
      print("lol");
  }
}
