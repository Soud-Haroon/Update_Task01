import 'package:flutter/material.dart';
import 'package:update_task01/cards/teamCard.dart';
import 'package:update_task01/content/listofdata.dart';

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
              height: MediaQuery.of(context).size.height * 0.52,
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
                          SizedBox(height: 70),
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
                        color: Color(0xfff4f4f4),
                      ),
                    ),
                  ),
                  //-------------mainWhite--end-Back-of-CenterCard----------//

                  //-------------center-card-----------------//
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.29,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Container(
                          height: 140,
                          // margin: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: darkRed, width: 3)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Check In',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 5),
                                    Text('You Haven,t chock in yet',
                                        style: TextStyle(color: Colors.grey)),
                                    SizedBox(height: 5),
                                    Text('00 : 00 : 00 HRS',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    //----------------------//
                                    TextButton(
                                        onPressed: () {
                                          // Navigator.of(context).push(
                                          //     MaterialPageRoute(
                                          //         builder: (context) => Screen3()));
                                        },
                                        child: Text('View History')),
                                  ],
                                ),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.all(5),
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: darkRed, width: 3),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Colors.white,
                                          ),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            child: Text('Check In',
                                                style: TextStyle(fontSize: 11)),
                                            style: ElevatedButton.styleFrom(
                                              shape: CircleBorder(),
                                              // padding: EdgeInsets.all(14),
                                            ),
                                          ))
                                    ])
                              ],
                            ),
                          ),
                        ),
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
                  itemCount: annCardData.length,
                  itemBuilder: (context, index) => annCardData[index]),
            ),
            //--------------------------------------//
            headViewList('Birthday'),
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: birthCardData.length,
                  itemBuilder: (context, index) => birthCardData[index]),
            ),
            //---------------------------------------------//
            headViewList('Leave Management'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 220,
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: leaveCardData.length,
                              itemBuilder: (context, index) =>
                                  leaveCardData[index]),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text('Apply Leave',
                                style: TextStyle(color: Colors.white))),
                        SizedBox(height: 10),
                      ]),
                ),
              ),
            ),
            //--------------------------------------------------------//
            headViewList('Team Member'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SizedBox(height: 200, child: TeamCard()),
            ),
            //---------------------------------------------------------//
            headViewList('Events'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SizedBox(
                  height: 210,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: eventCardData.length,
                      itemBuilder: (context, index) => eventCardData[index])),
            ),
            //---------------------------------------------------------//
            headViewList('Upcoming Holidays'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 210,
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: holidayCardData.length,
                              itemBuilder: (context, index) =>
                                  holidayCardData[index]),
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(height: 50),
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
