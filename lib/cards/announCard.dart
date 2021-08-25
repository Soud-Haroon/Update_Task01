import 'package:flutter/material.dart';

final darkRed = Color(0xffbf2634);

class MiniCardAnn extends StatelessWidget {
  
  //reuse but with changing
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Text(
              'This super Leogue lorem 2017',
              style: TextStyle(
                color: darkRed, //color red
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Hello guys, we have discussed about post-corona vacation plan and out decision is to go to bali. We have have a very big party after this corona ends!',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 50),
            Text(
              '14:01 20/10/2020',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ],
        ),
    );
  }
}

// String head;
//   String body;
//   String date;
//   MiniCardAnn(this.head, this.body, this.date);