import 'package:flutter/material.dart';


// ignore: must_be_immutable
class LeaveCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.white,
            ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/ben.jpg'),
                radius: 30,
              ),
              SizedBox(
                width: 20
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Anual Leave',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('20 Anual Leave Pending', style: TextStyle(color: Colors.grey),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}