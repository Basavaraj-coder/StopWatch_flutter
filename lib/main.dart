import 'package:flutter/material.dart';
import 'package:stop_watch/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:HomeScreen()
    );
  }
}
