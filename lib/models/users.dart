

class Users {
  final String userID;
  final String username;
  final String password;
  final String petname;
  final int age;
  final String pet;
  final String petbreed;

  Users(
      {this.userID,
      this.username,
      this.password,
      this.petname,
      this.age,
      this.pet,
      this.petbreed});
  Map<String, dynamic> toMap() {
    return {
      'userID': userID,
      'username': username,
      'password': password,
      'petname': petname,
      'age': age,
      'pet': pet,
      'petbreed': petbreed
    };
  }

  Users.fromFirestore(Map<String, dynamic> firestore)
      : userID = firestore['userID'],
        username = firestore['username'],
        password = firestore['password'],
        petname = firestore['petname'],
        age = firestore['age'],
        pet = firestore['pet'],
        petbreed = firestore['petbreed'];

  

  
}
