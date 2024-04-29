

import 'package:flutter/material.dart';

import '../timer/Timer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Stopwatch"),
      ),
      backgroundColor: Colors.cyan,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TimerSt()));
          }, child: const Text("Stopwatch"))
        ],
      )),
    );
  }
}
