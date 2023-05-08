import 'package:flutter/material.dart';
import 'package:user_interface/widgets/card.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: const <Widget>[CardWidget()]);
  }
}
