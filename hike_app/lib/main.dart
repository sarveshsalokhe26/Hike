import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is the title for the material app',
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,

      appBar: AppBar(title: Text('This is the title of the appbar')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),

          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.5))],
          ),

          child: Text(
            'This is the text inside of the container which is located at the center of the screen',
          ),
        ),
      ),
    );
  }
}
