import 'package:flutter/material.dart';
import 'signin.dart';

class Create extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/5.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
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
                        'Create Account',
                        style: TextStyle(fontSize: 40, fontFamily: 'Caveat'),
                      )),
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/pup.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Pet Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Age',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Pet Type',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Breed',
                      ),
                    ),
                  ),
                  Container(
                    child: Pets(),
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  ),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text('Create Account'),
                        onPressed: () {},
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

//For Drop down list
class Pets extends StatefulWidget {
  final int numPets;
  Pets({this.numPets});

  @override
  _Pets createState() => _Pets();
}

class _Pets extends State<Pets> {
  int dropDownValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        value: dropDownValue,
        onChanged: (int newVal) {
          setState(() {
            dropDownValue = newVal;
          });
        },
        items: [
          DropdownMenuItem(
            value: 0,
            child: Text('Select Pet '),
          ),
          DropdownMenuItem(
            value: 1,
            child: Text('Dogs'),
          ),
          DropdownMenuItem(
            value: 2,
            child: Text('Cat'),
          ),
          DropdownMenuItem(
            value: 3,
            child: Text('Chicken'),
          ),
          DropdownMenuItem(
            value: 4,
            child: Text('Pig'),
          ),
        ],
      ),
    );
  }
}

class ModeSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Pets(),
        ),
      ),
    );
  }
}
