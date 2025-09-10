// how to write the exception error

void main() {
  try {
    print(10 ~/ 0);
  } catch (e) {
    print("fuck error");
  } finally { // it is always excute whatever the state 
    print("anything");
  }
}
 