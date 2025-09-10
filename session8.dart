void main() {
  Info info = Info("salem");
  print(info._password);
  //   info.edit("new_password");
  info.edit = "sa";
  print(info._password);
}

                 
// class Info {
//   String name;
//   int age;
//   String city;     

//   Info(this.name, this.age, this.city) {
//     print(name);
//     print(age);
//     print(city);
//   }

// }

// class Info {
//   String? name; // if you donot want to set ? you should say requierd
//   int? age;
//   Info( {required String abaas, required age}) {
//     this.name = abaas;
//     this.age = age;
//     print(age);
//     print(name);
//   }

// }

// private variables I can call it in any place in its file but I can not do this out

// getters and setters

class Info {
  String? _password;
  Info(password) {
    this._password = password;
  }
  //getter
  String? get password =>
      _password; // this is the syntax of writing a code of getter in dart
  // you will call this by object.'password'

  //setter
  //   void edit(String new_password) {
  //     _password = new_password;
  //   }
  // or
  set edit(String new_password) {
    _password = new_password;
  }
}
