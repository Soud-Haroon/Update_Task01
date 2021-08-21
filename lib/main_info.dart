import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<int> steps = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F7),
      body: Center(
        child: Container(
          width: 200.0,
          // color: Colors.amberAccent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 180.0,
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var step in steps)
                    Icon(
                      Icons.circle,
                      color: step == 1 ? Colors.redAccent[400] : Colors.grey,
                      size: step == 1 ? 24.0 : 16.0,
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class Main_form extends StatefulWidget {
//   const Main_form({Key? key}) : super(key: key);
//
//   @override
//   _Main_formState createState() => _Main_formState();
// }
//
// class _Main_formState extends State<Main_form> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//         title: Text('Personal'),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//               fit: BoxFit.cover, image: AssetImage('assets/sign_in.png')),
//         ),
//       ),
//     );
//   }
// }
