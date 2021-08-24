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
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/foggy.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              //positioned of checkin layer at top UI
              left: 40,
              right: 40,
              top: 175,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Container(
                  height: 160,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: darkRed)),
                    color: Colors.lime,
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

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
