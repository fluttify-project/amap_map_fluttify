import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key key,
    @required this.label,
    @required this.onPressed,
  }) : super(key: key);

  final String label;
  final ValueChanged<BuildContext> onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(vertical: 16),
      color: Colors.black,
      onPressed: () => onPressed(context),
      shape: StadiumBorder(),
      child: Text(
        label,
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
