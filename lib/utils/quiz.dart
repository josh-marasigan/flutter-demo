import './question.dart';

class Quiz {

  List <Question> _questions;
  int _questionIndex = -1;
  int _score = 0;

  Quiz(this._questions) {
    _questions.shuffle();
  }

  // Getters
  List <Question> get questions => _questions;
  int get length => _questions.length;
  int get questionNumber => _questionIndex;
  int get score => _score;

  Question get nextQuestion {
    _questionIndex++;
    if (_questionIndex >= length) return null;
    return _questions[_questionIndex];
  }

  void answer(bool isCorrect) {
    if (isCorrect) _score++;
  }
}