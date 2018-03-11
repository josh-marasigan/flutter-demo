import 'package:flutter/material.dart';
import '../utils/question.dart';
import '../utils/quiz.dart';

class QuizPage extends StatefulWidget {
  @override 
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Material(
          color: Colors.greenAccent,
          child: new InkWell(
            onTap: onQuizPageTap,
            child: new Center(
              child: new Container(
                child: new Text("True"),
              ),
            )
          ),
        ),
      ],
    );
  } 

  var onQuizPageTap = () => print("You answered true!");
}