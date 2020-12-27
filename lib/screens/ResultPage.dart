import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  int score;
  ResultPage({Key key, this.score}):super(key:key);
  @override
  _ResultPageState createState() =>_ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text(
          'Sonuç'
        ),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            CircleAvatar(
              child: Image.asset('assets/success.jpg', width:600,height: 600,)

            ),
            Text('Tebrikler Puanınız',

            textAlign: TextAlign.center,

            style: TextStyle(fontSize: 30),),
            Text('${widget.score}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ],
          ),
      ),
    );
  }
}
