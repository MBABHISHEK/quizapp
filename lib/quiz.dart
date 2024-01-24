import 'package:flutter/material.dart';
import 'package:quizapp/questions_screen.dart';
import 'start_screen.dart';
import 'result_screen.dart';
import '../data/questions.dart';

class Quiz extends StatefulWidget
{
  const Quiz({super.key});
  @override
  State<Quiz>createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>
{
  var activeScreen='start-screen';
  List<String>selectedAnswers=[];

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }
   void chooseAnswer(String answer){
     selectedAnswers.add(answer);
     if(selectedAnswers.length==questions.length)
       {
         selectedAnswers=[];
         setState(() {
           activeScreen = 'result-screen';
         });
       }
   }

  @override
  Widget build(context)
  {
    Widget screenWidget=StartScreen(switchScreen);
    if(activeScreen=='question-screen')
      {
        screenWidget= QuestionsScreen(
            onSelectAnswer:chooseAnswer);
      }
      else if(activeScreen=='result-screen')
      {
        screenWidget=ResultScreen();
      }

    return  MaterialApp(
      home: Scaffold(
          body:Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 78, 13,151),
                      Color.fromARGB(255, 107, 15, 168)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                )
            ),
            child:screenWidget,
          )
      ),
    );
  }
}