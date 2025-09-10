// future which doesnot make the app stop until do
// that is great study it again and understand it carefully

void main() async {
  // int num = await Info(); // to make the await valid write "async"
  Info().then((value) => print("object"));
  var name =await Info();
  print(name);
  print("num");
  print("object");
}

Future<String> Info() async {
  return Future.delayed(Duration(seconds: 3), () {
    return ("Hey!!!");
  });
  // return 40;
}
