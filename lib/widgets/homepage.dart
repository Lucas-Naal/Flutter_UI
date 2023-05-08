import 'package:flutter/material.dart';
import 'package:user_interface/pages/animalsmenu.dart';
import 'package:user_interface/pages/animalspage.dart';
import 'package:user_interface/pages/contentpage.dart';
import 'package:user_interface/pages/profilepage.dart';
import 'package:user_interface/pages/register.dart';
import 'package:user_interface/pages/userpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anime Girls',
      color: Colors.blueAccent,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text('Anime Girls'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://c4.wallpaperflare.com/wallpaper/262/391/612/anime-girl-profile-view-brown-hair-buildings-wallpaper-preview.jpg'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.blue,
                ),
                child: Text(
                  'Aureum Dev ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('User Profile'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileUser()));
                },
              ),
              ListTile(
                title: const Text('Register'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FormRegister()));
                },
              ),
              ListTile(
                title: const Text('Animals Section'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimalMenu()));
                },
              ),
              ListTile(
                title: const Text('User Info'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserPage()));
                },
              )
            ],
          ),
        ),
        body: const CardPage(),
      ),
    );
  }
}
