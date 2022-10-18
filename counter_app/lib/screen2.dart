
import 'package:flutter/material.dart';

// ignore: camel_case_types
class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: const Text('result'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:100),
        child: Column(
          children :[
            Center(
              child: OutlinedButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text('back')),
            )
          ]
        ),
      ),);
     
  }
}
