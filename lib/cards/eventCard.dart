import 'package:flutter/material.dart';
import 'package:update_task01/cards/announCard.dart';

class EventCard extends StatelessWidget {
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
                      image: AssetImage('assets/back_2.png'), 
                      height: 150,
                      width: MediaQuery.of(context).size.width,                         
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            '31',
                            style: TextStyle(fontSize: 35),
                          ),
                          Text('Jun',
                              style: TextStyle(
                                  color: darkRed, fontSize: 17,fontWeight: FontWeight.bold)), //color red
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'This super leogue Lorem 2017',
                            style: TextStyle(
                              fontSize: 16,
                              color: darkRed,
                              fontWeight: FontWeight.bold,
                            ),
                          ), //color red
                          SizedBox(height: 10),
                          Text('16:04 20/10/2021',
                              style: TextStyle(color: Colors.grey)),
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