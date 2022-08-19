import 'package:flutter/material.dart';
import 'package:xylophone/xylophone_screen.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: XylopnoneScreen(),
    );
  }
}
