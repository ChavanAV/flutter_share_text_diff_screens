import 'package:flutter/material.dart';
import 'package:text_input/second_page.dart';

class NewPage extends StatefulWidget {
  final num;
  const NewPage({Key? key, required this.num}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(widget.num,style: const TextStyle(
              fontSize: 22
            ),),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(
                builder: (context)=> SecondPage(
                  text: widget.num,
                )
            )
            );
          }, child:const Text("Go next")),

        ],
      ),
    );
  }
}
