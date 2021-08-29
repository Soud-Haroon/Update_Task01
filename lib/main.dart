import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:update_task01/sign_in.dart';

// void main() {
//   SystemChrome.setEnabledSystemUIOverlays([]);
//   runApp(MyApp());
// }

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alchemative',
      theme: ThemeData(
        primarySwatch: _materialColor,
      ),
      home: SignIn(),
    );
  }
}

const MaterialColor _materialColor = MaterialColor(0xffBF2634, <int, Color>{
  50: Color(0xffBF2634),
  100: Color(0xffBF2634),
  200: Color(0xffBF2634),
  300: Color(0xffBF2634),
  400: Color(0xffBF2634),
  500: Color(0xffBF2634),
  600: Color(0xffBF2634),
  700: Color(0xffBF2634),
  800: Color(0xffBF2634),
  900: Color(0xffBF2634),
});
