import 'package:flutter/material.dart';
import 'package:user_interface/pages/animalscreate.dart';
import 'package:user_interface/pages/animalspage.dart';

class AnimalMenu extends StatefulWidget {
  const AnimalMenu({super.key});

  @override
  State<AnimalMenu> createState() => _AnimalMenuState();
}

class _AnimalMenuState extends State<AnimalMenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text('Animals Menu'),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              leading: const Text('Opcion 1'),
              title: const Text('Ver'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimalsPage()));
              },
            ),
            ListTile(
              leading: const Text('Opcion 2'),
              title: const Text('Crear'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnimalCreationForm()));
              },
            )
          ],
        ),
      ),
    );
  }
}
