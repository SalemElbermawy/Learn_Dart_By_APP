// Stream
// it looks like as video on youtude you never wait for all the video to show it. there is some data come and watch them and after sometimes get new data and show them again and so on

void main() {
  (ST().listen((int z) => print(z)));
  print("object");
}

Stream<int> ST() {
//   return Stream.periodic(Duration(seconds: 3), (int x) {
//     return x*2;
//   });// this create infinite call backs you can use for loop to define this process

      return Stream.periodic(Duration(seconds: 3), (int x) {
    return x*2;
  });
}



// -------------------
// we have 2 types of stream Single , Broadcast
// single you have one listen
// brodcast more than one

                    