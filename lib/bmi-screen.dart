import 'dart:math';

import 'package:bmi_calculator/bmi-result-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool IsMale = true ;
  double height = 120.0;
  int weight = 40;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          IsMale = true ;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Icon(
                              Icons.male,
                            size: 90,
                          ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight:FontWeight.bold,
                              ),
                            ),
                        ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular
                            (
                              10.0
                          ),
                          color: IsMale?  Colors.blue : Colors.blueGrey[300]   ,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          IsMale = false ;
                        });
                      },
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Icon(
                              Icons.female,
                              size: 90,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight:FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration
                          (
                          borderRadius: BorderRadius.circular
                            (
                              10.0
                          ),
                          color: IsMale?  Colors.blueGrey[300] :Colors.blue,
                        ),

                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 0.0,
                horizontal: 10.0,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'HIGHT',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight:FontWeight.bold,
                            ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                     children: [
                       Text(
                         '${height.round()}',
                         style: TextStyle(
                           fontSize: 50.0,
                           fontWeight:FontWeight.bold,
                         ),
                       ),
                       SizedBox(
                         width: 5.0,
                       ),
                       Text(
                         'CM',
                         style: TextStyle(
                           fontSize: 15.0,
                           fontWeight:FontWeight.bold,
                         ),
                       ),
                     ],
                   ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Slider(
                        value: height,
                        max: 230.0,
                        min: 80.0,
                        onChanged:(value){
                          setState(() {
                            height = value;
                          });
                        },
                    ),
                  ],
                ),
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blueGrey[300],
                  ),
                  width: double.infinity,
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children:
                  [
                    Expanded(
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight:FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight:FontWeight.bold,
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  heroTag: 'age--',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ) ,
                                ),

                                SizedBox(
                                  width: 10.0,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                      setState(() {
                                       age++;
                                         });
                                  },
                                  heroTag: 'age++',
                                  mini: true,
                                  child: Icon(
                                      Icons.add,
                                  ) ,
                                ),


                              ],
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blueGrey[300],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 10.0,
                    ),

                    Expanded(
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight:FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight:FontWeight.bold,
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight--',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ) ,
                                ),

                                SizedBox(
                                  width: 10.0,
                                ),

                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'weight++',
                                  mini: true,
                                  child: Icon(

                                    Icons.add,
                                  ) ,

                                ),
                              ],
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blueGrey[300],
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
          Container(
            width: double.infinity ,
            color: Colors.blue ,
            child: MaterialButton(
                onPressed: (){

                  double result = weight / pow(height / 100, 2);
                  print(result.round() );

                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => BMIResltScreen(
                        age: age,
                        isMale: IsMale,
                        weight :weight,
                        height :height,
                        result: result.round(),

                      ),
                    ),
                  );

                },
              height: 60,
                    child: Text(
                         'CALCULATE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),

            ),
          ),

        ],
      )
      ,
    );
  }
}
