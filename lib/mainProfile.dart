import 'package:flutter/material.dart';
import 'package:update_task01/cards/announCard.dart';
import 'package:update_task01/cards/birthCard.dart';
import 'package:update_task01/cards/leaveCard.dart';

final darkRed = Color(0xffbf2634);

class MainProfile extends StatefulWidget {
  @override
  _MainProfileState createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/back.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Color(0xfff4f4f4),
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.50,
              child: Stack(
                children: [
                  //--------------backimage-----------------//
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/foggy.jpg'),
                        fit: BoxFit.cover,
                      )),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/ben.jpg'),
                            maxRadius: 40,
                          ),
                          SizedBox(height: 10),
                          Text('Name Here',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(height: 5),
                          Text('Front-End & UI',
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                  //--------------backimage-end-----------------//

                  //--------------mainWhite-Back-of-CenterCard---------------//
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.36,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ),
                  //-------------mainWhite--end-Back-of-CenterCard----------//

                  //-------------center-card-----------------//
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.30,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 180,
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  )
                  //------------------card-end-----------------//
                ],
              ),
            ),
            SizedBox(height: 10),
            //--------------------ALL--Widgets------------------//
            headViewList('Announcements'),
            Container(
              height: 280,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => MiniCardAnn()),
            ),
            //--------------------------------------//
            headViewList('Birthday'),
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => BirthDayCard()),
            ),
            headViewList('Leave Management'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                  ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SizedBox(
                      height: 220,
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) => LeaveCard()),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child:
                            Text('Apply Leave', style: TextStyle(color: Colors.white))),
                    SizedBox(height: 10),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding headViewList(String head) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListTile(
        leading: Image(image: AssetImage('assets/ben.jpg'), height: 40),
        title: Text('$head', style: TextStyle(fontWeight: FontWeight.bold)),
        trailing: TextButton(
            onPressed: () {},
            child:
                Text('View all', style: TextStyle(color: Color(0xffbf2634)))),
      ),
    );
  }
}

// final List<MiniCardAnn> announData = [
//   MiniCardAnn(head: 'This super Leogue lorem 2017', body: 'Hello guys, we have discussed about post-corona vacation plan and out decision is to go to bali. We have have a very big party after this corona ends!', date: '14:01 20/10/2020'),
// ];
