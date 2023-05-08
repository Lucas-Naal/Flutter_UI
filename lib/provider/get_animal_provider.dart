import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:convert';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:user_interface/model/dto_request/dto_animal_request.dart';

class AnimalProvider extends ChangeNotifier {
  final logger = Logger();

  List<DtoAnimalRequest>? _animals;
  List<DtoAnimalRequest>? get animals => _animals;

  Future getAnimals() async {
    final response =
        await http.get(Uri.parse('http://localhost:5100/api/Animal'), headers: {
      "content-type": "application/json",
    });

    logger.d(response.body);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final List<dynamic> data = json;
      _animals =
          data.map((animals) => DtoAnimalRequest.fromJson(animals)).toList();

      notifyListeners();
    } else {
      throw Exception("error");
    }
  }
}
