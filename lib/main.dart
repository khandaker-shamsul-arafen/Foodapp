import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food/scr/screens/home.dart';
import 'package:food/scr/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: login(),
    );
  }
}