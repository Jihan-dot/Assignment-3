import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question(this.questionText, this.options, this.correctAnswerIndex);


  bool isCorrect(int answerIndex) {
    return answerIndex == correctAnswerIndex;
  }
}


class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    print("Welcome to the Quiz!\n");

    for (int i = 0; i < questions.length; i++) {
      Question q = questions[i];
      print("Q${i + 1}: ${q.questionText}");

      for (int j = 0; j < q.options.length; j++) {
        print("${j + 1}. ${q.options[j]}");
      }

      stdout.write("Your answer (1-${q.options.length}): ");
      int? answer = int.tryParse(stdin.readLineSync()!);

      if (answer != null && q.isCorrect(answer - 1)) {
        print("Correct!\n");
        score++;
      } else {
        print("Wrong! Correct answer: ${q.options[q.correctAnswerIndex]}\n");
      }
    }

    print("Quiz Finished! Your final score is: $score/${questions.length}");
  }
}


void main() {
  
  List<Question> questions = [
    Question(
      "What is the capital of France?",
      ["London", "Berlin", "Paris", "Madrid"],
      2,
    ),
    Question(
      "Which planet is known as the Red Planet?",
      ["Earth", "Mars", "Jupiter", "Venus"],
      1,
    ),
    Question(
      "What is 5 + 7?",
      ["10", "12", "11", "13"],
      1,
    ),
  ];


  Quiz quiz = Quiz(questions);

  quiz.start();
}
