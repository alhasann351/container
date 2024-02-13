import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF367E18),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Container',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                  //shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.shade400,
                      blurRadius: 20,
                      offset: const Offset(5, 10),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  border: const Border(
                    bottom: BorderSide(width: 5, color: Colors.red),
                    top: BorderSide(width: 5, color: Colors.red),
                    left: BorderSide(width: 5, color: Colors.red),
                    right: BorderSide(width: 5, color: Colors.red),
                  ),
                ),
                child: const Text(
                  'Container',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 70,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  border: Border(
                    bottom: BorderSide(width: 10, color: Colors.green),
                    top: BorderSide(width: 10, color: Colors.green),
                    left: BorderSide(width: 10, color: Colors.green),
                    right: BorderSide(width: 10, color: Colors.green),
                  ),
                ),
                child: const Text(
                  'Border Container',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
