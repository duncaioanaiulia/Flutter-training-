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
        home: Builder(
            builder: (context) => Scaffold(
                body: Column(children: [
                  Center(
                    child: Image(
                      image: NetworkImage(
                          'https://previews.123rf.com/images/kalinavova/kalinavova0911/kalinavova091100049/5837009-a-very-beautiful-sunny-sky-background.jpg?fj=1'),
                    ),
                  ),
                  Center(
                    child: Image(
                      image: AssetImage(
                          'images/repository-open-graph-template.png'),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondScreen()),
                        );
                      },
                      child: const Text('GO TO Second Screen'),
                    ),
                  ),
                ]),
                backgroundColor: Colors.red,
                appBar: AppBar(
                  title: const Text('Hello Word'),
                  backgroundColor: Colors.blueGrey[900],
                ))));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: const Text('Second Screen'),
            backgroundColor: Colors.red,
          ),
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                    height: double.infinity,
                    width: 100,
                    margin:
                        EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
                    padding: EdgeInsets.all(30.0),
                    color: Colors.amberAccent,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                          'images/repository-open-graph-template.png'),
                    )),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: double.infinity,
                  width: 100,
                  margin:
                      EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
                  padding: EdgeInsets.all(30.0),
                  color: Colors.deepOrangeAccent,
                  child: const Text(
                    'BOOOOOOO test',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Aboreto'),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
