import 'package:flutter/material.dart';
///***
/// This File is to only create UI containers

class BtnUI extends StatelessWidget {
  final String label;
  final int counter;
  const BtnUI({required this.counter,required this.label,super.key});

  // @override
  // State<BtnUI> createState() => _BtnUIState(counter:counter,prmState: prm);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black,
      ),
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min, //squeeze the height of column
          //like in android height = wrapContent
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 18,color: Colors.white),
            ),
            Text(
              label,
              style: TextStyle(fontSize:18,color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

// class _BtnUIState extends State<BtnUI> {
//   final String prmState;
//   final int counter;
//   _BtnUIState({required this.counter,required this.prmState});
//
//
// }


