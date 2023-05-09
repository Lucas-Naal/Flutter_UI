import 'package:flutter/material.dart';

class InkwellPage extends StatefulWidget {
  const InkwellPage({super.key});

  @override
  State<InkwellPage> createState() => _InkwellPageState();
}

class _InkwellPageState extends State<InkwellPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text('Test inkwell'),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              hoverColor: Colors.redAccent,
              splashColor: Colors.amber,
              focusColor: Colors.blue,
              highlightColor: Colors.purple,
              child: Container(
                width: 200,
                height: 80,
                alignment: Alignment.center,
                child: const Text(
                  'INKWELL TEST',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              onTap: () {
                debugPrint('InkWell presionado');

                // do something
              }),
        ),
      ),
    );
  }
}
