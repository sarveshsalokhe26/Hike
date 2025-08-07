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
          height: 150,
          width: 300,
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.all(30),

          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.5))],
            borderRadius: BorderRadius.circular(5),
          ),

          //Wrapping the container around the column so that we can add multiple texts and buttons to the container
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, //main axis alignment set to center
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              //Adding text to the container
              Text(
                'This is the text that is located inside of the container ',
                textAlign: TextAlign.center,
              ),

              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Button pressed')));
                },
                child: Text('Click me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
