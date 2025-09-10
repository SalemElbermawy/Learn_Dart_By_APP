void main() {
  // // Lists
  // // Dynamic List
  // List list = [1, 2, 3, 4, 5, 4, 'salem'];
  // // print(list);
  // Set<int> list2 = {2,3,4,5,6,7,4,3,2,3,54,34,3,43,2,2,1,3,4,2};
  // print(list2);

  // var edited_list = (list2.where((n) {return n%2 == 0;})).toList();
  // print(edited_list.runtimeType);
  // print(list2.toSet());

  // // .where() ....
  // //for loop .....
  // //using oop ....
  // // set
  // ------------------------------------
  // map
  // Map<String, int> marks = {"salem": 30, "hazem": 12, "wael": 33};

  // marks.addAll({"zoz": 12, "moya": 12, "moatz": 54});

  // print(marks);
  // marks.remove("moatz");
  // print(marks);
  // // loop on the dic
  // for (final String key in marks.keys.toList()) {
  //   print("$key : ${marks[key]}");
  // }
  // // there is a method do the same thing

  // marks.forEach((key, val) {
  //   print("$key : $val");
  // });

  // Map<String, List<int>> mar = {
  //   "Salem": [212, 12, 23, 1],
  //   "Layla": [23, 24, 34, 2, 3],
  // };
  // print(mar["Layla"]);

  List<Map<String, int>> mm = [
    {"salem": 1, "mazen": 12},
    {"mohamed": 32, "kero": 143},
  ];
// map here is the same idea of the map in python
// you can do any thing on the items and return them and store them in new variable

  mm.map((e) {
    print(e);
  }).toList();
 
}
