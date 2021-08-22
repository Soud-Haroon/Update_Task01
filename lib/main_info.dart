import 'package:flutter/material.dart';
import 'package:update_task01/functions/dotbar.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/sign_in.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            DotLineBar(),
          ],
        ),
      ),
    );
  }
}
