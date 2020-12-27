import 'package:cet_quiz_app/Service/Question.dart';
import 'Option.dart';
class QuizManager{
  QuizManager(){
    _questions.add(
    Question('Türkiye kaç farklı coğrafi bölgeden oluşur?', [
      Option( ' 5', 0),
      Option( ' 6', 0),
      Option( ' 7', 20),
      Option( ' 8', 0),
    ])
    );
    _questions.add(
        Question('Türkiye Cumhuriyeti''nin ilk Cumhurbaşkanı kimdir?', [
          Option( ' İsmet İnönü', 0),
          Option( ' Mustafa Kemal Atatürk', 20),
          Option( ' Sultan Vahdettin', 0),
          Option( 'Adnan Menderes ', 0),
        ])
    );
    _questions.add(
        Question('TBMM hangi tarihte açılmıştır?', [
          Option( ' 1919', 0),
          Option( ' 1920', 20),
          Option( ' 1921', 0),
          Option( ' 1923', 0),
        ])
    ); _questions.add(
        Question('Peribacaları hangi bölgemizde bulunur?', [
          Option( ' Ege Bölgesi', 0),
          Option( ' Akdeniz Bölgesi', 0),
          Option( ' Güney Doğu Anadolu Bölgesi', 0),
          Option( ' Anadolu Bölgesi', 20),
        ])
    ); _questions.add(
        Question('Ayçiçeği tarlalarıyla ünlü bölge neresidir?', [
          Option( ' Akdeniz ', 0),
          Option( ' Trakya', 20),
          Option( ' Karadeniz', 0),
          Option( ' Ege', 0),
        ])
    );
    _questions.shuffle();
    for(var question in _questions){
      question.options.shuffle();
    }
  }
  List<Question>_questions=[];
  int _score=0;
  int currentQuestionId=0;
  void nextQuestion(score){
    print(currentQuestionId);
      if(currentQuestionId<_questions.length){
        _score+=score;
      currentQuestionId++;
    }
  }
  int getTotalScore()=> _score;
  int getCurrentId()=> currentQuestionId+1;
  int totalQuestionNumber()=>_questions.length;
  bool isFinished(){
    return currentQuestionId>=_questions.length;
  }
  Question getCurrentQuestion(){
    print('getCurrentQuestion $currentQuestionId');
    if(currentQuestionId<_questions.length){
      return _questions[currentQuestionId];
    }else{
      return Question('', []);
    }
  }
}