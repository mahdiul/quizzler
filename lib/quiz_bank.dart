

import 'question_bank.dart';

class QuizBank {
  int _questionNumber = 0;
  // ignore: prefer_final_fields
  List<QuestionBank> _questionBank = [
    QuestionBank('Some cats are actually allergic to humans', true),
    QuestionBank('You can lead a cow down stairs but not up stairs.', false),
    QuestionBank(
        'Approximately one quarter of human bones are in the feet.', true),
    QuestionBank('A slug\'s blood is green.', true),
    // ignore: unnecessary_string_escapes
    QuestionBank('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    QuestionBank('It is illegal to pee in the Ocean in Portugal.', true),
    QuestionBank(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    QuestionBank(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    QuestionBank(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    QuestionBank(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    // ignore: unnecessary_string_escapes
    QuestionBank('Google was originally called \"Backrub\".', true),
    QuestionBank(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    QuestionBank(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    }
    return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
