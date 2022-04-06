import 'dart:io';

class Question {
  String question;
  double answer;
  Question({
    required this.question,
    required this.answer,
  });
}

double getans(String msg) {
  print('Question is // $msg');
  var answer = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  return answer;
}

void main() {
  var Questions = [
    Question(question: '3+4', answer: 7),
    Question(question: '8*100', answer: 800),
    Question(question: '8-4', answer: 4),
  ];

  for (var item in Questions) {
    var UserAnswer = getans(item.question);
    print('anwer is = $UserAnswer');
    if (UserAnswer == item.answer) {
      print("Correct!");
    } else {
      print("Incorrect , The Correct answer is ${item.answer}");
    }
    print("-------------");
  }
  print("Thank You!.\nGood Bye!!7");
}
