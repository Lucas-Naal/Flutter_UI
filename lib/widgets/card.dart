import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Container(
            color: Colors.blue,
            child: const SizedBox(
              width: 200,
              height: 200,
              child: Center(
                  child: Image(
                      image: NetworkImage(
                          'https://img.freepik.com/premium-vector/young-girl-anime-style-character-vector-illustration-design-manga-anime-girl_147933-100.jpg'))),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Container(
            color: Colors.blue,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Center(
                  child: Image.network(
                      'https://m.media-amazon.com/images/I/61X40Ar6TsS._AC_UF1000,1000_QL80_.jpg')),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Container(
            color: Colors.blue,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Center(
                child: Image.network(
                    'https://www.stylevore.com/wp-content/uploads/2020/01/245de92d2610eea6e2eef5e023c9f1f7.jpg'),
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Container(
            color: Colors.blue,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Center(
                child: Image.network(
                    'https://1fid.com/wp-content/uploads/2022/07/girl-anime-wallaper-9.jpg'),
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Container(
            color: Colors.blue,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Center(
                child: Image.network(
                    'https://wallpapers.com/images/hd/valorant-champ-reyna-anime-look-vcji7dcn07vogtek.jpg'),
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Container(
            color: Colors.blue,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Center(
                child: Image.network(
                    'https://w0.peakpx.com/wallpaper/544/205/HD-wallpaper-jett-valorant-animasyon-animation-anime-games-jett-pc-pc-games-valorant.jpg'),
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Container(
            color: Colors.blue,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Center(
                child: Image.network(
                    'https://w0.peakpx.com/wallpaper/194/715/HD-wallpaper-video-game-crossover-neon-valorant-zeri-league-of-legends.jpg'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
