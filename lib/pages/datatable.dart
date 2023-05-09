import 'package:flutter/material.dart';

class HorizontalTablePage extends StatefulWidget {
  const HorizontalTablePage({super.key});

  @override
  State<HorizontalTablePage> createState() => _HorizontalTablePageState();
}

class _HorizontalTablePageState extends State<HorizontalTablePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
            title: const Text('Data Table'),
          ),
          body: Center(
            child: Column(
              children: [const Placeholder()],
            ),
          ),
        ),
      ),
    );
  }
}
