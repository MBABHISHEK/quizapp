
import 'package:flutter/material.dart';
import 'answer_button.dart';
class QuestionsScreen extends StatefulWidget
{
  const QuestionsScreen({super.key});
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
    return  SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The question...'),
          SizedBox(height: 30,),
          AnswerButton('Answer1'),
          AnswerButton('Answer2'),
          AnswerButton('Answer3'),
        ],
      ),
    ) ;
  }
}