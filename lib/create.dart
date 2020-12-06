import 'package:PETtility2/created_users.dart';
import 'package:PETtility2/providers/users_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'signin.dart';
import 'functions/dropdown.dart';
import 'functions/Filepicker.dart';

class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    final usersProvider = Provider.of<UsersProvider>(context);
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/UI.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'PetTility',
                        style: TextStyle(
                            fontFamily: 'Caveat',
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 80),
                      )),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Welcome',
                        style: TextStyle(fontSize: 20, fontFamily: 'Caveat'),
                      )),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Create Account',
                        style: TextStyle(fontSize: 40, fontFamily: 'Caveat'),
                      )),
                  SizedBox(
                    height: 40.0,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/pet.jpg"),
                    radius: 80,
                    child: InkWell(
                      onTap: () {
                        Picker();
                      },
                    ),
                  ),
                  Text("User Name",
                      style: TextStyle(fontSize: 25, fontFamily: 'Caveat')),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter User Name"),
                      onChanged: (value) {
                        usersProvider.userName(value);
                      },
                    ),
                  ),
                  Text("Password",
                      style: TextStyle(fontSize: 25, fontFamily: 'Caveat')),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Password',
                        ),
                        onChanged: (value) {
                          usersProvider.passWord(value);
                        }),
                  ),
                  Text("Pet Name",
                      style: TextStyle(fontSize: 25, fontFamily: 'Caveat')),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Pet Name",
                        ),
                        onChanged: (value) {
                          usersProvider.petName(value);
                        }),
                  ),
                  Text("Age",
                      style: TextStyle(fontSize: 25, fontFamily: 'Caveat')),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Age",
                        ),
                        onChanged: (value) {
                          usersProvider.agE(value);
                        }),
                  ),
                  Text("Pet Type:",
                      style: TextStyle(fontSize: 25, fontFamily: 'Caveat')),
                  Container(
                    child: Pets(),
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  ),
                  Text("Pet Breed",
                      style: TextStyle(fontSize: 25, fontFamily: 'Caveat')),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Ex. aspin,",
                        ),
                        onChanged: (value) {
                          usersProvider.petBreed(value);
                        }),
                  ),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text('Create Account'),
                        onPressed: () {
                          usersProvider.saveUsers();
                          Navigator.of(context).pop();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Created()));
                        },
                      )),
                  Container(
                      child: Row(
                    children: <Widget>[
                      Text('Have an Account?'),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signin()));
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ))
                ],
              ))),
    );
  }
}
