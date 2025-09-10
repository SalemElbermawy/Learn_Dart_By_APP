



void main() {
  // null values
  String? name;
  // its mean is if name still == null print salem instead of null or not print the normal value
  print(name ?? "salem");
  name = "llll";
  name = null;

  print(
    name?.length,
  ); // if i want to do some operator and i donot sure if it is null or not so if it is null print it or not excute the function


                     

}
