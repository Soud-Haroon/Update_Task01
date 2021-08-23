import 'package:flutter/material.dart';
import 'package:update_task01/functions/dotbar.dart';
import 'package:update_task01/main_info.dart';

class FormThree extends StatefulWidget {
  @override
  _FormThreeState createState() => _FormThreeState();
}

class _FormThreeState extends State<FormThree> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
                SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          IconButton(          //Icon used to pop back
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home())),
        ),
            Text('Education',style: TextStyle( fontSize: 20)),
            SizedBox(width: 30),
        ],),
          
          SizedBox(height: 20),
          DotLineBar(3), 
        SizedBox(height: 40),
        //-----------------------------------------------------//
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              filled: true,
              fillColor: Colors.white,
              hintText: 'School',
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value!.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter only Alphabets';
                    } else {
                      return null;
                    }
                  },
        ),
        SizedBox(height: 15),
        //-------------------------------------------------//
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Degree',
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value!.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter only Alphabets';
                    } else {
                      return null;
                    }
                  },
        ),
        SizedBox(height: 15),
        //-------------------------------------------------//
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Field of Study',
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value!.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter only Alphabets';
                    } else {
                      return null;
                    }
                  },
        ),
        SizedBox(height: 5),
        //-------------------------------------------------//
        Row(children: [
          Expanded(
              child: Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Start Birth', style: TextStyle(color: Colors.grey)),
                IconButton(
                    icon: Icon(Icons.today, color: Colors.grey),
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          initialDate: DateTime(2005),
                          firstDate: DateTime(2000),
                          lastDate: DateTime.now());
                    })
              ],
            ),
          )),
          SizedBox(width: 10),
          Expanded(
              child: Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('End Birth', style: TextStyle(color: Colors.grey)),
                IconButton(
                    icon: Icon(Icons.today, color: Colors.grey),
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          initialDate: DateTime(2005),
                          firstDate: DateTime(2000),
                          lastDate: DateTime.now());
                    }),
              ],
            ),
          )),
        ]),
        SizedBox(height: 5),
        //--------------------------------------------------//
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Grade',
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value!.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter only Alphabets';
                    } else {
                      return null;
                    }
                  },
        ),
        SizedBox(height: 15),
        //-------------------------------------------------//
        TextFormField(
          maxLines: 5,
          decoration: InputDecoration(
            hintText: 'Discription',
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.transparent,
                )),
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                    final regExp = RegExp(pattern);
                    if (value!.isEmpty) {
                      return null;
                    } else if (!regExp.hasMatch(value)) {
                      return 'Enter only Alphabets';
                    } else {
                      return null;
                    }
                  },
        ),
        SizedBox(height: 10),
      ],
    ));
  }
}
