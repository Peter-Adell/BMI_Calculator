import 'package:flutter/material.dart';

class BMIResltScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  final double height;
  final int weight;

  BMIResltScreen({
    required this.result,
    required this.age,
    required this.isMale,
    required this.height,
    required this.weight,


  });

  @override
  Widget build(BuildContext context)
  {
   return Scaffold(
     appBar:AppBar(
       title: Text(
       'BMI Result',
       ),
     ) ,
     body: Center(
       child: Column (
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(
             'GENDER: ${isMale ? 'male': 'female'} ',
             style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
             ),
           ),
           SizedBox(
             height: 10.0,
           ),


           Text(
             'AGE: $age',
             style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
             ),
           ),
           SizedBox(
             height: 10.0,
           ),


           Text(
             'HIGHT: $height',
             style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
             ),
           ),
           SizedBox(
             height: 10.0,
           ),


           Text(
             'WEIGHT: $weight',
             style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
             ),
           ),
           SizedBox(
             height: 45.0,
           ),


           Text(
             'RESULT: $result',
             style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
             ),
           ),

         ],
       ),
     ),
   );
  }
  }



