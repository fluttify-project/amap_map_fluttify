import 'package:flutter/material.dart';

class DrawPolygonScreen extends StatefulWidget {
  DrawPolygonScreen();

  factory DrawPolygonScreen.forDesignTime() => DrawPolygonScreen();

  @override
  _DrawPolygonScreenState createState() => _DrawPolygonScreenState();
}

class _DrawPolygonScreenState extends State<DrawPolygonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('绘制多边形'),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
