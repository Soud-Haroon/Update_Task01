import 'package:flutter/material.dart';
import 'package:update_task01/main_info.dart';

//-------Main Login Screen------//

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage('assets/sign_in.png')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          padding: EdgeInsets.all(30),
          children: [
            SizedBox(height: 100),
            CircleAvatar(
              //Main Logo
              backgroundColor: Colors.white10,
              radius: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/Logo.png"),
              ),
            ),
            SizedBox(height: 50),
            //------------------------------------------------------//
            TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                onChanged: (value) {
                  data = value;
                }),

            SizedBox(height: 20),
            //-------------------------------------------------------//
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                onChanged: (value) {
                  data = value;
                }),
            SizedBox(height: 20),
            //--------------------------------------------//
            ElevatedButton(
              child: Text('Log In'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20),
                primary: Color(0xffC53B4B),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            SizedBox(height: 10),
            //---------------------------------------------//
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    'SignUp',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 100),
                TextButton(
                  child: Text(
                    'Forget Password',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            //--------------------------------------------------------//
            SizedBox(
              height: 60,
              child: OutlinedButton.icon(
                label: Text('LOG IN WITH GOOGLE'),
                icon: Icon(Icons.facebook),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    width: 1,
                    color: Colors.red,
                  ),
                ),
                onPressed: () {
                  print('Pressed');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
