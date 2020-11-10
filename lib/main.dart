import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img.png"),
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
                        child: Text('Mating Place',
                            style:
                                TextStyle(fontSize: 40, fontFamily: 'Caveat'))),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text('Create Account'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Create()));
                          },
                        )),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text('Login'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signin()));
                          },
                        )),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text('Guest'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signin()));
                          },
                        ))
                  ],
                ))));
  }
}

class Create extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img.png"),
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
                  FlatButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    textColor: Colors.blue,
                    child: Text('Forgot Password'),
                  ),
                  Container(
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
                          //signup screen
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

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img.png"),
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
                        'Sign in',
                        style: TextStyle(fontSize: 40, fontFamily: 'Caveat'),
                      )),
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
                  FlatButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    textColor: Colors.blue,
                    child: Text('Forgot Password'),
                  ),
                  Container(
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
                          //signup screen
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
