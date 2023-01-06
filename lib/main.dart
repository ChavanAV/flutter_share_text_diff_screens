import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_input/new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final texcntrl = TextEditingController();

  var num;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Padding(
            padding:  EdgeInsets.all(20.0),
            child:  Text("Enter Your Number",style: TextStyle(fontSize: 22),),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: texcntrl,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)
                      )
                  ),
                  hintText: "Enter Number"
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              num=texcntrl.text;
            });
          }, child:const Text("Show")),

          ElevatedButton(onPressed: (){
            setState(() {
              num=texcntrl.text;
            });
           Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPage(num: num,)));
          }, child:const Text("Go")),

          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1
                )
              ),
              child: Text(num ?? "No Number Entered",style: const TextStyle(
                fontSize: 22
              ),)),
        ],
      ),
    );
  }
}
