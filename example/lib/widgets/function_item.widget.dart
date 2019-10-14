import 'package:flutter/material.dart';

class FunctionItem extends StatelessWidget {
  const FunctionItem({
    Key key,
    @required this.label,
    @required this.sublabel,
    @required this.target,
  }) : super(key: key);

  final String label;
  final String sublabel;
  final Widget target;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(label),
          subtitle: Text(sublabel),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => target),
            );
          },
        ),
        Divider(height: 1, indent: 16),
      ],
    );
  }
}
