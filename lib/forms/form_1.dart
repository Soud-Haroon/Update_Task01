import 'package:flutter/material.dart';
import 'package:update_task01/functions/dotbar.dart';

class FormOne extends StatefulWidget {
  @override
  _FormOneState createState() => _FormOneState();
}

class _FormOneState extends State<FormOne> {
  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: 5),
          Text('Personal Info', style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          DotLineBar(1),
          SizedBox(height: 20),
          Stack(
            //using stack to lap edit icon over Picture
            children: [
              ClipRRect(
                child: Image(
                  image: AssetImage('assets/user.png'),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image(
                    image: AssetImage('assets/Vector.png'),
                    width: 30,
                    fit: BoxFit.cover,
                  )),
              Positioned(
                  bottom: 4,
                  right: 4,
                  child: Icon(
                    Icons.edit_outlined,
                    size: 20,
                    color: Colors.white,
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            //Profile Details
            child: Column(
              children: [
                Text('Name Here',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Front-End UI', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          //-------------------------------------------------//
          SizedBox(height: 15),
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
                hintText: 'Your Name',
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
                hintText: 'Father Name',
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
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              final pattern =
                  (r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
              final regExp = RegExp(pattern);

              if (value!.isEmpty) {
                return null;
              } else if (value.contains(' ')) {
                return 'can not have blank spaces';
              } else if (!regExp.hasMatch(value)) {
                return 'Enter a valid email';
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
                hintText: 'Phone',
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )),
            keyboardType: TextInputType.number,
            validator: (value) {
              final regExp = RegExp('[0-9]');
              if (value!.isEmpty) {
                return null;
              } else if (!regExp.hasMatch(value)) {
                return 'Enter only number';
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: 15),
          //-------------------------------------------------//
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                dropdownColor: Colors.white,
                hint: Text(
                  'Gender',
                  style: TextStyle(color: Colors.grey),
                ),
                onChanged: (String? newValue) {
                  //   setState(() {
                  //     dropdownValue = newValue;
                  //   });
                },
                items: <String>['Male', 'Female', 'Other']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 15),
          //-------------------------------------------------//
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                elevation: 0,
                isExpanded: true,
                dropdownColor: Colors.white,
                hint: Text('Marital status',
                    style: TextStyle(color: Colors.grey)),
                onChanged: (String? newValue) {
                  //   setState(() {
                  //     dropdownValue = newValue;
                  //   });
                },
                items: <String>['Single', 'Married']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 10),
          //-------------------------------------------------//
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Date of Birth', style: TextStyle(color: Colors.grey)),
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
          ),
          //-------------------------------------------------//
        ],
      ),
    );
  }
}
