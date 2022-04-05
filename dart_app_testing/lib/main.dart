import 'dart:io';

class Question {
  String question;
  String answer;
  Question({
    required this.question,
    required this.answer,
  });
}

double getans(String msg) {
  print('Q// $msg');
  var answer = double.parse(stdin.readLineSync()!);
  return answer;
}

void main() {
  var Questions = [
    Question(question: '3+4', answer: '7'),
    Question(question: '8*100', answer: '800'),
    Question(question: '8-4', answer: '4'),
  ];
  var UserAnswer = getans(Questions[0].question);
  print('anwer is = $UserAnswer');
}
