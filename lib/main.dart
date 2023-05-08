import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_interface/provider/get_animal_provider.dart';
import 'package:user_interface/provider/get_user_info_provider.dart';
import 'package:user_interface/provider/post_animal_provider.dart';
import 'package:user_interface/widgets/homepage.dart';

void main() {
  runApp(const UserInterfaceApp());
}

class UserInterfaceApp extends StatelessWidget {
  const UserInterfaceApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AnimalProvider>(
          create: (context) => AnimalProvider()..getAnimals(),
        ),
        ChangeNotifierProvider<AnimalPostProvider>(
          create: (context) => AnimalPostProvider(),
        ),

        ChangeNotifierProvider<PersonProvider>(
          create: (context) => PersonProvider()..fetchUsers(),
        )

        // Agrega aquí otros providers que desees
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
