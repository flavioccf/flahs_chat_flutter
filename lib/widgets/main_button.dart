import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  final Function onPressedFunction;

  MainButton({
    Key key,
    @required this.buttonName,
    @required this.buttonColor,
    @required this.onPressedFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressedFunction,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonName,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
