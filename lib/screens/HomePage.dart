import 'package:cet_quiz_app/screens/QuizPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar( title: Text('CET QUIZ'),
      ),
      body:
      Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.lightBlueAccent,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:
              Center(

                child: Text('Merhaba, sınavda başarılar!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

        SizedBox(

          height: 60,),
        RaisedButton(


          onPressed: (){ gotoQuizPage(context);},
          padding: const EdgeInsets.all(1.1),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
          child: Text('Test 1 Başla',
            style: TextStyle(

              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),),),

       ),
            RaisedButton(
             // color: Colors.greenAccent,

              onPressed: (){ gotoQuizPage(context);},
              padding: const EdgeInsets.all(1.1),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
              child: Text('Sınav hakkında',
                style: TextStyle(

                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),),

            )

            ),]
    )

    );
  }

  void gotoQuizPage(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => QuizPage()
    ),);
  }
}
