import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        fillColor: Colors.deepOrange,
        splashColor: Colors.orange,
        onPressed: onPressed,
        child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              RotatedBox(
                  quarterTurns: 3,
                  child: Icon(Icons.explore, color: Colors.amber)),
              SizedBox(width: 8.0),
              Text("PURCHASE", style: TextStyle(color: Colors.white))
            ])),
        shape: const StadiumBorder());
  }
}
