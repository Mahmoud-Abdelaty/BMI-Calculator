// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors, avoid_print
import 'dart:math';

import 'package:bmi_calculator/modules/bmi_result/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen>
{
  bool isMale = true;
  double height = 0;
  int weight = 30;
  int age = 15;
  late double result;
  String? status;
  String? message;



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
     appBar: AppBar(
       backgroundColor: Colors.grey[900],
       elevation: 6,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(50),
       ),
       centerTitle: true,
       title: Text(
         'BMI CALCULATOR',
         style: TextStyle(
           color: Colors.red[900],
         ),
       ),
     ),
      body: Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Colors.red[900]: Colors.grey[800],
                        ),
                        // width: 150,
                        // height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(
                              image: AssetImage('assets/images/Male.png'),
                              height: screenWidth/5,
                              width: screenWidth/4,
                            ),
                            SizedBox(
                              height: screenWidth/20,
                            ),
                            Text(
                                'MALE',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth / 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth/15,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        // width: 150,
                        // height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: !isMale ? Colors.red[900] : Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(
                              image: AssetImage('assets/images/Female.png'),
                              height: screenWidth/5,
                              width: screenWidth/4,
                            ),
                            SizedBox(
                              height: screenWidth/20,
                            ),
                            Text(
                                'FEMALE',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: screenWidth / 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth/19,
                  vertical: screenWidth/20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[800],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: screenWidth/13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: screenWidth/13,
                            fontWeight: FontWeight.w900,
                              color: Colors.black,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                              fontSize: screenWidth/20,
                            fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220,
                        min: 0,
                        activeColor: Colors.red[900],
                        inactiveColor: Colors.red,
                        thumbColor: Colors.grey,
                        onChanged: (value)
                        {
                          setState(() {
                            height = value;
                          });
                          print(value.round());
                        }
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: Container(
                      padding: EdgeInsetsDirectional.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[800],
                      ),
                      child: Column(
                        children:
                        [
                          Expanded(
                            child: Text(
                              'AGE',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth/12,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '$age',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth/10,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                Expanded(
                                  child: FloatingActionButton(
                                    backgroundColor: Colors.red[900],
                                    splashColor: Colors.red,

                                    heroTag: 'a+',
                                    onPressed: ()
                                    {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    mini: true,
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: FloatingActionButton(
                                    backgroundColor: Colors.red[900],
                                    splashColor: Colors.red,
                                    heroTag: 'a-',
                                    onPressed: ()
                                    {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth/15,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsetsDirectional.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[800],
                      ),
                      child: Column(
                        children:
                        [
                          Expanded(
                            child: Text(
                                'WEIGHT',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth/12,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '$weight',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth/10,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                               Expanded(
                                 child: FloatingActionButton(
                                      backgroundColor: Colors.red[900],
                                      splashColor: Colors.red,
                                      heroTag: 'w+',
                                      onPressed: ()
                                      {
                                        setState(() {
                                          weight+=5;
                                        });
                                      },
                                      mini: true,
                                      child: Icon(
                                        Icons.add,
                                      ),
                                    ),
                               ),
                                Expanded(
                                  child: FloatingActionButton(
                                    onPressed: ()
                                    {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    mini: true,
                                    backgroundColor: Colors.red[900],
                                    splashColor: Colors.red,
                                    heroTag: 'w-',
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: screenWidth/7,
            child: MaterialButton(
              color: Colors.red[900],
                onPressed:()
                {
                  result = double.parse((weight / pow(height / 100,2)).toStringAsFixed(2));
                  print(result);
                  Status();
                  Navigator.push(context,
                    MaterialPageRoute(
                    builder: (context)
                    {
                      return BMIResult(
                        age: age,
                        gender: isMale,
                        result: result,
                        weight: weight,
                        status:status,
                      );
                    },
                  ),
                  );
                },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth/20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  void Status()
  {
    if(result<18.5)
    {
      status='You\'re underweight , you need to gain some weight.';
    }
    else if (result>=18.5 && result<24.9)
    {
      status='Your weight is Normal.';
    }
    else if (result>=25 && result<29.9)
    {
      status='You\'re overweight , you need to lose some weight.';
    }
    else if (result>=30 && result<34.9)
    {
      status='You\'re obese , you need to lose a lot of weight.';
    }
    else if (result>=35)
    {
      status='You\'re extremely obese , you need to lose a lot of weight.';
    }

  }
}
