import 'package:counter_app/screen2.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class counter_app extends StatefulWidget {
  const counter_app({super.key});

  @override
  State<counter_app> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<counter_app> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CounterApp'),
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                _counter.toString(),
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 50,
                width: 300,
                child: Center(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const screen2())));
                        },
                        child: const Center(
                          child: Text('click',style: TextStyle(fontSize: 17,color: Colors.green),)))),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: IconButton(
              onPressed: () {
                setState(() {
                  _counter += 1;
                });
              },
              icon: const Icon(Icons.plus_one)),
           onPressed: () {},   
        
        ),
      ),
    );
  }
}
