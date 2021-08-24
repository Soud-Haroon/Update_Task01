import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TeamCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: Colors.lime,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 35),
                  Text(
                    'All Check_in Detail',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.red[700]),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Absents',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('On Time',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('Late',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('12',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blue[300])),
                  Text('10',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.green[300])),
                  Text('02',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.red[700])),
                ],
              ),
              SizedBox(height: 30),
              Stack(
                children: [
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width *0.9,
                    lineHeight: 15.0,
                    percent: 0.9,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.red[700],
                  ),
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width*0.9,
                    lineHeight: 15.0,
                    percent: 0.7,
                    backgroundColor: Colors.transparent,
                    progressColor: Colors.green[300],
                  ),
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width*0.9,
                    lineHeight: 15.0,
                    percent: 0.2,
                    backgroundColor: Colors.transparent,
                    progressColor: Colors.blue[300],
                  ),
                ],
              )
            ],
          ),
          //------------Bar------------//
        ),
      ),
    );
  }
}
