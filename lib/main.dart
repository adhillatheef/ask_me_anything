import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Ask me Anything"),
        centerTitle: true,
      ),
      body: const AskMeAnything(),
    );
  }
}

class AskMeAnything extends StatefulWidget {
  const AskMeAnything({Key? key}) : super(key: key);

  @override
  State<AskMeAnything> createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          onButtonPressed();
          debugPrint("$ballNumber");
        },
        child: Expanded(
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }

  onButtonPressed() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
