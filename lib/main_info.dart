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
        appBar: AppBar(
          title: Text('Hello', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(          //Icon used to pop back
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        ),
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
