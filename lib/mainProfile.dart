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
          body: Stack(
                  children: [
                    //--------------backimage-----------------//
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 400.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/foggy.jpg'),
                          fit: BoxFit.cover,
                        )),
                        child: Column(),
                      ),
                    ),
                    //--------------backimage-end-----------------//
                    
                    //--------------mainWhite-Back---------------//
                    Positioned.fill(
                      top: MediaQuery.of(context).size.height * 0.40,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                          color: Colors.red,
                        ),
                        // height: MediaQuery.of(context).size.height * 0.13,
                      ),
                    ),
                    //-------------mainWhite--end--------------//

                    //-------------center-card-----------------//
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.35,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.24,
                        margin: EdgeInsets.symmetric(horizontal: 28),
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
