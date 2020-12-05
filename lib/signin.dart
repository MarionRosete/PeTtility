import 'package:flutter/material.dart';
import 'create.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.all(18.0),
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
                        'Welcome',
                        style: TextStyle(fontSize: 20, fontFamily: 'Caveat'),
                      )),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 40, fontFamily: 'Caveat'),
                      )),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text("User Name",
                      style: TextStyle(fontSize: 25, fontFamily: 'Caveat')),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                      child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter User Name"))),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Password",
                      style: TextStyle(fontSize: 25, fontFamily: 'Caveat')),
                  Container(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Password"),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: FlatButton(
                        onPressed: () {
                          //forgot password screen
                        },
                        textColor: Colors.blue,
                        child: Text('Forgot Password'),
                      )),
                  Container(
                      alignment: Alignment.center,
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text('Login'),
                        onPressed: () {},
                      )),
                  Container(
                      child: Row(
                    children: <Widget>[
                      Text('Does not have account?'),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Create()));
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
