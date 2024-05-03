import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stop_watch/ContainerBtn/UI.dart';

class TimerSt extends StatefulWidget {
  const TimerSt({super.key});

  @override
  State<TimerSt> createState() {
    return _TimerState();
  }

//or above statement you can write as
//State<Timer> createState() => _TimerState(); nothing but callback function
}

class _TimerState extends State<TimerSt> {
  int secondsPassed = 0;
  int counterSeconds = 0;
  int counterMinutes = 0;
  int counterHrs = 0;

  bool isTimerOn = false; // checks whether the timer is on/started or not/off
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Timer App"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BtnUI(counter: counterSeconds, label: "Seconds"),
                BtnUI(counter: counterMinutes, label: "Minutes"),
                BtnUI(counter: counterHrs, label: "Hours"),
              ],
            ),
            SizedBox(
              height: 40,
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {

                      // counterSeconds+=1;
                      // if(counterSeconds == 60){
                      //   counterSeconds=0;
                      //   // counterMinutes++;
                      // }
                      // print("btn pressed ${counterSeconds}");
                      // setState(() {
                      //   //this method recalls build(), so
                      //   //what happens widget get again construted on screen/scaffold
                      // });
                      //instead of doing this all here i have the method know as calculateTime
                      //calculatedTime();
                      //now we will use Timer library that call calculateTime()-
                      //-automatically after one second each
                      if(isTimerOn == false){
                        isTimerOn = true;
                        _timer =
                            Timer.periodic(const Duration(seconds: 1), (timer) {
                              calculatedTime();
                              //gets called after each secs.

                            });
                      }
                    },
                    child: const Text(
                      "Start",
                      style: TextStyle(fontSize: 25),
                    )),
                ElevatedButton(
                  onPressed: () {
                    //pause button
                    _timer?.cancel();
                    isTimerOn = false;
                  },
                  child: const Text("Pause", style: TextStyle(fontSize: 25)),
                ),
                ElevatedButton(
                    onPressed: () {

                      counterSeconds = 0;
                      counterMinutes = 0;
                      counterHrs = 0;
                      secondsPassed = 0;

                      _timer?.cancel();
                      isTimerOn = false;

                      setState(() {

                      });
                    },
                    child: const Text("Reset",
                        style: TextStyle(fontSize: 25, color: Colors.blue))
                ),
              ],
            )
          ],
        )));
  }

  void calculatedTime() {
    //basic maths
    secondsPassed = secondsPassed + 1;
    counterSeconds = secondsPassed % 60;
    counterMinutes = secondsPassed ~/ 60;
    counterHrs = secondsPassed ~/ 3600;

    if(counterMinutes > 60){
      counterMinutes = 1;
    }
    setState(() {});
  }
}
