import 'package:flutter/material.dart';

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

                  //--------------mainWhite-Back---------------//
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
                      //----------main--Content---------------//
                      child: Column(),
                    ),
                  ),
                  //-------------mainWhite--end--------------//

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.orange[900],
                          ),
                          child: Icon(Icons.link,
                              size: 50, color: Colors.white)),
                      SizedBox(width: 5),
                      Text(
                        'Announcement',
                        style:
                            TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ]),
                      TextButton(
                        onPressed: () {
                          // Navigator.of(context).push(
                          //     MaterialPageRoute(
                          //         builder: (context) => screen7()));
                        },
                        child: Text('View all'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Stack(
//           children: [
//             Column(
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.35,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/foggy.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Positioned(
//               //positioned of checkin layer at top UI
//               left: 40,
//               right: 40,
//               top: 175,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20),
//                 ),
//                 child: Container(
//                   height: 160,
//                   width: 300,
//                   decoration: BoxDecoration(
//                     border: Border(bottom: BorderSide(color: darkRed)),
//                     color: Colors.lime,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height * 0.30,
//               color: Colors.green,
//             ),
//           ],
//         ),
//       ),
//     );

// class MainProfile extends StatelfullWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets/back.png'),
//           fit: BoxFit.fill,
//         ),
//       ),
//       child: Scaffold(
//           // body: Stack(
//           //   children: [
//           //     Column(
//           //       children: [
//           //         Container(
//           //           height: MediaQuery.of(context).size.height * 0.35,
//           //           decoration: BoxDecoration(
//           //             image: DecorationImage(
//           //               image: AssetImage('assets/foggy.jpg'),
//           //               fit: BoxFit.cover,
//           //             ),
//           //           ),
//           //         ),
//           //       ],
//           //     ),
//           //     Positioned(
//           //       //positioned of checkin layer at top UI
//           //       left: 40,
//           //       right: 40,
//           //       top: 175,
//           //       child: ClipRRect(
//           //         borderRadius: BorderRadius.only(
//           //           topLeft: Radius.circular(20),
//           //           topRight: Radius.circular(20),
//           //         ),
//           //         child: Container(
//           //           height: 160,
//           //           width: 300,
//           //           decoration: BoxDecoration(
//           //             border: Border(bottom: BorderSide(color: darkRed)),
//           //             color: Colors.lime,
//           //           ),
//           //         ),
//           //       ),
//           //     ),
//           //   ],
//           // ),
//           ),
//     );
//   }
// }
