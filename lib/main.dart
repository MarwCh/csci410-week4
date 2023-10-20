import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          centerTitle: true,
        ),
       body: Column(
         children: <Widget>[
           SizedBox(height: 16.0,),
           MyTextWidget(text:'Text 1'),
           SizedBox(height: 16.0,),
           MyTextWidget(text: 'Text 2'),
           SizedBox(height: 16.0,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               MyTextWidget(text: 'Text 3'),
               MyTextWidget(text: 'Text 4'),
               MyTextWidget(text: 'Text 5')
             ],
           )
         ],
       )
      )
    );
  }
}

class MyTextWidget extends StatelessWidget {
  final String text;

  const MyTextWidget({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,
      style: TextStyle(
          fontSize: 24,
          color: Colors.deepPurple
      )
      ),
    );
  }
}

