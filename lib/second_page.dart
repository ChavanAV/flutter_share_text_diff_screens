
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final text;
  const SecondPage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
