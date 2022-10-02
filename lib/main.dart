import 'package:flutter/material.dart';

void main() => runApp(Week3());

class Week3 extends StatefulWidget {
  const Week3({super.key});

  @override
  State<Week3> createState() => _Week3State();
}

class _Week3State extends State<Week3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Vasa Hotel"),),
        body: Center(
          // child: Container(
          //   width: double.infinity,
          //   height: double.infinity,
          //   child: Image(
          //     image: AssetImage("images/vasa1.jpg"),
          //   ),
          // ),
          child: Container(decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.white,
                Colors.brown
              ]
            )
          ),
            )
          )
        )
      ),
    );
  }
}