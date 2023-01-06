import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final num;
  const NewPage({Key? key, required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(num,style: const TextStyle(
          fontSize: 22
        ),),
      ),
    );
  }
}
