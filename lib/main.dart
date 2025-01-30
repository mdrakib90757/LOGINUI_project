import 'package:flutter/material.dart';

import 'package:multiple_project/views/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      darkTheme: ThemeData(
          primaryColor: Colors.black
      ),
      theme: ThemeData(
          brightness: Brightness.dark,
          textTheme: TextTheme(
              headlineMedium: TextStyle(
                  color: Colors.white

              )
          )
      ),
      home: Loginscreen(),
    );
  }
}

