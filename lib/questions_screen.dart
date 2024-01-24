
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data/questions.dart';
import 'answer_button.dart';
import 'models/quiz_question.dart';
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
  var currentQuestionIndex=0;
  void answerQuestion()
  {
    setState(() {
      currentQuestionIndex++;
    });

  }

  @override
  Widget build(context)
  {
    final currentQuestion=questions[currentQuestionIndex];
    return   SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(currentQuestion.text,
          style: GoogleFonts.lato(
            color: Color.fromARGB(255, 201, 153, 251),
            fontWeight: FontWeight.bold,
            fontSize: 24
          ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30,),
          ...currentQuestion.answer.map((answer)
          {
            return AnswerButton(
              answerText: answer,
              onTap:answerQuestion,
            );
          }
          )
        ],
      ),
    );
  }
}