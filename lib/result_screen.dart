
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/questions_summary/questions_summary.dart';
import 'questions_screen.dart';

class ResultScreen extends StatelessWidget{
  @override
  const ResultScreen({
    super.key,
    required this.chosenAnswers
  });

  List<Map<String,Object>>getSummaryData()
  {
    final List<Map<String,Object>> summary=[];

    for(var i=0;i<chosenAnswers.length;i++)
      {
        summary.add({
          'question_index':i,
          'question':questions[i].text,
          'correct_answer':questions[i].answer[0],
          'user_answer':chosenAnswers[i]

        }
        );
      }
    return summary;
  }
  final List<String>chosenAnswers;

  Widget build(context)
  {
    final summaryData=getSummaryData();
    final numTotalQuestions=questions.length;
    final numCorrectQuestion=summaryData.where(
        (data){
          return data['user_answer'] == data['correct_answer'];
        }).length;
    return  SizedBox(
        width: double.infinity,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('You answered ${numCorrectQuestion} out of ${numTotalQuestions}  Questions Correctly!'),
          SizedBox(height: 30,),
          QuestionsSummary(summary:summaryData),
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