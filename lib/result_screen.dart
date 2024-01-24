
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  @override
  ResultScreen({super.key});

  Widget build(context)
  {
    return  SizedBox(
        width: double.infinity,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('You answered X out of Y Questions Correctly!'),
          SizedBox(height: 30,),
          Text('List of answers and questions '),
          SizedBox(height: 30,),
          TextButton(
              onPressed:(){},
              child:Text('Restart QUIZ!'),
          ),

        ],
    )
    );
  }
}