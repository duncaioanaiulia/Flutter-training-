import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:Column(
            children:[
              Center(
                child: Image(
                  image: NetworkImage('https://previews.123rf.com/images/kalinavova/kalinavova0911/kalinavova091100049/5837009-a-very-beautiful-sunny-sky-background.jpg?fj=1'),
                ),
              ),
              Center(
                child: Image(
                  image: AssetImage('images/repository-open-graph-template.png'),
                ),
              ),
            ]
          ),
          backgroundColor: Colors.red,
          appBar: AppBar(
           title: Text('Hello Word'),
          backgroundColor: Colors.blueGrey[900],
        )
      )
    );
  }
}
