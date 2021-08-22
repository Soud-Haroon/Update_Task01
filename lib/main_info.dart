import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<int> steps = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F7),
      body: Center(
        child: Container(
          width: 160.0,
          // color: Colors.amberAccent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var step in steps)
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        border: step == 2
                            ? Border.all(width: 1.8, color: Color(0xffC53B4B))
                            : Border.all(width: 1.8, color: Color(0xffEEB8B8)),
                        borderRadius: BorderRadius.circular(20),
                        color:
                            step == 2 ? Color(0xffC53B4B) : Color(0xFFF5F5F7),
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Icon(
// Icons.circle,
// color: step == 1 ? Colors.redAccent[400] : Colors.grey,
// size: step == 1 ? 24.0 : 16.0,
// )

class OutlineCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150,
          child: Row(
            children: [
              Icon(Icons.panorama_fish_eye, color: Colors.red[300], size: 15.0),
              Expanded(
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 2,
                ),
              ),
              Icon(Icons.panorama_fish_eye, color: Colors.red[300], size: 15.0),
              Expanded(
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 2,
                ),
              ),
              Icon(Icons.panorama_fish_eye, color: Colors.red[300], size: 15.0),
              Expanded(
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 2,
                ),
              ),
              Icon(Icons.panorama_fish_eye, color: Colors.red[300], size: 15.0),
              Expanded(
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 2,
                ),
              ),
              Icon(Icons.panorama_fish_eye, color: Colors.red[300], size: 15.0),
              //-------------------------------//
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.8, color: Color(0xffEEB8B8)),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
              ),
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
