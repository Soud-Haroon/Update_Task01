import 'package:flutter/material.dart';

final darkRed = Color(0xffbf2634);

class BirthDayCard extends StatelessWidget {
  //creating birthday card
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width *0.85,
        // height: 100,
        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(10.0), //add border radius here
                child: Image.asset('assets/ben.jpg',height: 85), //add image location here
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Hamza Ali', style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                    Icon(Icons.date_range,size: 17,color: Colors.grey,),
                    SizedBox(width: 5),
                    Text('20 May, 2020', style: TextStyle(color: Colors.grey)),
                  ]),
                  Text('3 day', style: TextStyle(color: darkRed)),
                ],
              ),
              ]),
              // SizedBox(width: 100),
              Align(
                alignment: Alignment.center,
                child: IconButton(
                    icon: Icon(
                      Icons.celebration_outlined,
                      size: 45,
                      color: darkRed,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Hamza Ali'),
                          content: Text('Happy Birthday'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Okay'),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
    );
  }
}
