import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'ui/homepage/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static bool validated;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.redAccent,
        //brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        primaryColor:Color.fromARGB(255,226,8,32),
      ),
      home: HomePage(),
    );
  }
}
