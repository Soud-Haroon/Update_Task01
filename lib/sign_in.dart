import 'package:flutter/material.dart';
import 'package:update_task01/main_info.dart';
import 'package:update_task01/navigation.dart';

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
      //-----------------------------------------//
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
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(children: [
                TextFormField(
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
                    //----------------------------------//
                    validator: (value) {
                      final pattern =
                          (r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
                      final regExp = RegExp(pattern);

                      if (value!.contains(' ')) {
                        return 'Cant have blank spaces';
                      } else if (!regExp.hasMatch(value)) {
                        return 'Enter a valid email';
                      } else {
                        return null;
                      }
                      //----------------------------------//
                    }),

                SizedBox(height: 20),
                //-------------------------------------------------------//
                TextFormField(
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
                    validator: (value) {
                      if (value!.contains(' ')) {
                        return 'Password can not contain blank Spaces';
                      } else if (value.length < 6) {
                        return 'Enter atleast 8 characters';
                      } else
                        return null;
                    }),
              ]),
            ),
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
            InkWell(
              highlightColor: Colors.red[100],
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Navigationbar()));
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffbf2634)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset('assets/google.png', height: 20),
                  SizedBox(width: 10),
                  Text('LOG I WITH GOOGLE', style: TextStyle(color: Color(0xffbf2634),fontWeight: FontWeight.bold)),
                ])),
            )
          ],
        ),
      ),
    );
  }
}
