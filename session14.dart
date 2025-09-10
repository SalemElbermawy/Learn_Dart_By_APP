// future which doesnot make the app stop until do

void main() async {
  // very important
  // Future.delayed(Duration(seconds: 3), () {
  //   print("crazy!?");
  // });
  // -------------------------
  // here I want to make the "print(num);" wait "int num = Info();" to excute
  // to make that you should write "await"
  int num = await Info(); // to make the await valid write "async"
  // but this will not work with a right way because the return it will excute in the "info" before delay
 
  print(num);
  print("object");
}
    
int Info() {
  Future.delayed(Duration(seconds: 3), () {
    print("Hey!!!");
  });
  return 40;
}
