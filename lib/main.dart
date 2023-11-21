import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Number Increment'),
          centerTitle: true,
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Press the button to increment',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
                child:
                    Text(x.toString(), style: const TextStyle(fontSize: 100))),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              x++;
              setState(() {});
              print(x.toString());
            },
            backgroundColor: Colors.amber,
            child: const Icon(Icons.add),
            foregroundColor: Colors.black),
      ),
    );
  }
}
