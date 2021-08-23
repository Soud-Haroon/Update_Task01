import 'package:flutter/material.dart';

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
          TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Your Name',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(height: 15),
            //-------------------------------------------------//
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Father Name',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(height: 15),
            //-------------------------------------------------//
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(height: 15),
            //-------------------------------------------------//
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Phone',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
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
                hint: Text(
                  'Marital status',
                  style: TextStyle(color: Colors.grey),
                ),
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
          SizedBox(height: 15),
          //-------------------------------------------------//
        ],
      ),
    );
  }
}

// Form(child: child);