import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              backgroundColor: Colors.blue,
              centerTitle: true,
              title: const Text('Articles')),
          body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.teal[100],
                child: const Text('primer articulo'),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.teal[100],
                child: const Text('segundo articulo'),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.teal[100],
                child: const Text('tercer articulo'),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.teal[100],
                child: const Text('cuarto articulo'),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.teal[100],
                child: const Text('quinto articulo'),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.teal[100],
                child: const Text('sexto articulo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
