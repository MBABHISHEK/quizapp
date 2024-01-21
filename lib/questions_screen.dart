
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget
{
  QuestionsScreen({super.key});
  @override
  State<QuestionsScreen>createState(){
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>
{
  @override
  Widget build(context)
  {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The question...'),
          SizedBox(height: 30,),
          ElevatedButton(onPressed:(){}, child:Text('Answer1')),
          ElevatedButton(onPressed:(){}, child:Text('Answer2')),
          ElevatedButton(onPressed:(){}, child:Text('Answer3')),


        ],
      ),
    ) ;
  }
}