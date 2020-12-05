import 'package:PETtility2/services/firestore_services.dart';
import 'package:flutter/material.dart';
import 'package:PETtility2/models/users.dart';
import 'package:uuid/uuid.dart';

class UsersProvider with ChangeNotifier {
  final firestoreService = FirestoreServices();
  String _username;
  String _password;
  String _petname;
  int _age;
  String _pet;
  String _petbreed;
  var uuid = Uuid();

  //Get
  String get username => _username;
  String get password => _password;
  String get petname => _petname;
  int get age => _age;
  String get pet => _pet;
  String get petbreed => _petbreed;
  //Set
  userName(String value) {
    _username = value;
    notifyListeners();
  }

  passWord(String value) {
    _password = value;
    notifyListeners();
  }

  petName(String value) {
    _petname = value;
    notifyListeners();
  }

  agE(String value) {
    _age = int.parse(value);
    notifyListeners();
  }

  peT(String value) {
    _pet = value;
    notifyListeners();
  } 

  petBreed(String value) {
    _petbreed = value;
    notifyListeners();
  }

  saveUsers() {
    print("$username,$password");
    var newUser = Users(
        userID: uuid.v4(),
        username: username,
        password: password,
        petname: petname,
        age: age,
        pet: pet,
        petbreed: petbreed);
    firestoreService.saveUsers(newUser);
  }
}
