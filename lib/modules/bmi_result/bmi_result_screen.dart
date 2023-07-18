// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable, unnecessary_string_interpolations, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  double? result;
  int? age;
  bool gender;
  int? weight;
  String? status;

  BMIResult({
    required this.result,
    required this.age,
    required this.gender,
    required this.weight,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.red[900],
          ),
          onPressed: ()
          {
            Navigator.pop(context);
          },
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.grey[900],
        elevation: 6,
        title: Text(
          'BMI RESULT',
          style: TextStyle(
            color: Colors.red[900],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gender   ',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                  ),
                ),
                Text(
                  ':',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[200],
                  ),
                ),
                Text(
                  '   ${gender ? 'Male' : 'Female'}',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: screenWidth/20,
                  horizontal: screenWidth/20,
              ),
              child: Container(
                color: Colors.grey[900],
                width: double.infinity,
                height: 3,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Weight   ',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                  ),
                ),
                Text(
                  ':',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[200],
                  ),
                ),
                Text(
                  '  $weight',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: screenWidth/20,
                horizontal: screenWidth/20,
              ),
              child: Container(
                color: Colors.grey[900],
                width: double.infinity,
                height: 3,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Age   ',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                  ),
                ),
                Text(
                  ':',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[200],
                  ),
                ),
                Text(
                  '   $age',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: screenWidth/20,
                horizontal: screenWidth/20,
              ),
              child: Container(
                color: Colors.grey[900],
                width: double.infinity,
                height: 3,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Result   ',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                  ),
                ),
                Text(
                  ':',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[200],
                  ),
                ),
                Text(
                  '   $result',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20),
              child: Container(
                color: Colors.grey[900],
                width: double.infinity,
                height: 3,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Status',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                  ),
                ),
                Text(
                  '⇣',
                  style: TextStyle(
                    fontSize: screenWidth/15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[200],
                  ),
                ),
                Container(
                  width: screenWidth/1,
                  child: Text(
                    '$status',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenWidth/15,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[900],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}