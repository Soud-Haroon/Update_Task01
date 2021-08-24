import 'package:flutter/material.dart';
import 'package:update_task01/forms/form_2.dart';
import 'package:update_task01/forms/form_3.dart';
import 'package:update_task01/home.dart';
import 'forms/form_1.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 1;
  Map<int, Widget> map = {
    1: FormOne(),
    2: FormTwo(),
    3: FormThree(),
    4: TasksScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/sign_in.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          padding: EdgeInsets.all(30),
          children: [
            Container(
              child: map[counter],
            ),
            //-----------------------------------//
            Container(
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
                    child: Text('Skip'), //skip button
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      child: Text('Next'), //next button
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        primary: Color(0xffC53B4B),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        if (counter < 3) {
                          setState(() {
                            counter ++;
                          });
                        } else {
                          counter = 1;
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => Experience_Pg5()));
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
