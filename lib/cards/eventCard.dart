import 'package:flutter/material.dart';
import 'package:update_task01/cards/announCard.dart';

class EventCard extends StatelessWidget {
  String date;
  String month;
  String head;
  String timeDate;
  String pic;
  EventCard(this.date, this.month, this.head, this.timeDate, this.pic);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage('assets/$pic.png'),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          '$date',
                          style: TextStyle(fontSize: 35),
                        ),
                        Text('$month',
                            style: TextStyle(
                                color: darkRed,
                                fontSize: 17,
                                fontWeight: FontWeight.bold)), //color red
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$head',
                          style: TextStyle(
                            fontSize: 16,
                            color: darkRed,
                            fontWeight: FontWeight.bold,
                          ),
                        ), //color red
                        SizedBox(height: 10),
                        Text('$timeDate', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
