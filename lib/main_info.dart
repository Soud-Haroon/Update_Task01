import 'package:flutter/material.dart';
import 'package:update_task01/functions/dotbar.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F7),
      body: Center(
        child: DotLineBar(),
      ),
    );
  }
}
