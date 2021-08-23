import 'package:flutter/material.dart';
import 'package:update_task01/forms/form_2.dart';
import 'package:update_task01/forms/form_3.dart';
import 'package:update_task01/functions/dotbar.dart';

import 'forms/form_1.dart';

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
          padding: EdgeInsets.all(30),
          children: [
            DotLineBar(),
            FormThree(),
            Button(),
          ],
        ),
      ),
    );
  }
}

//-------------------------------------------------//

class Button extends StatelessWidget {   //creating two button: textbutton and simple button
  // var nav;                               //intializing reference for different screens
  // Button(this.nav);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextButton(
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: () {
                  // Navigator.of(context)
                  // .push(MaterialPageRoute(builder: (context) => Nav(0)));//linking to Navigation index 0: see navbar.dart
            },
            child: Text('Skip'),               //skip button
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 70,
            child: ElevatedButton(
              child: Text('Next'),                //next button
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10),
                primary: Color(0xffC53B4B),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => Screen5())); //linking Screen5
              },
            ),
          ),
        ],
      ),
    );
  }
}
