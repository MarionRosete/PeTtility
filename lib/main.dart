import 'package:PETtility2/services/firestore_services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Signin.dart';

import 'providers/users_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firestoreService = FirestoreServices();
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => UsersProvider(), lazy: false),
      StreamProvider(create: (context) => firestoreService.getUsers())
    ], child: MaterialApp(title: 'PETtility', home: Signin()));
  }
}
