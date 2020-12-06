import 'package:PETtility2/models/users.dart';
import 'package:flutter/material.dart';
import 'models/users.dart';
import 'package:provider/provider.dart';

class Created extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = Provider.of<List<Users>>(context);
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            body: (users != null)
                ? Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/UI.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                              title: Text('User Name:' + users[index].username),
                              trailing:
                                  Text('Pet Name:' + users[index].petname));
                        }))
                : Center(child: CircularProgressIndicator())));
  }
}
