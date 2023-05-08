import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:convert';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:user_interface/model/dto_request/dto_animal_request.dart';

class AnimalPostProvider extends ChangeNotifier {
  final logger = Logger();

  Future<void> createAnimal(DtoAnimalRequest animal) async {
    final body = json.encode(animal.toJson());

    final response = await http.post(
      Uri.parse('http://localhost:5100/api/Animal'),
      headers: {'content-type': 'application/json'},
      body: body,
    );

    if (response.statusCode == 201) {
      
      logger.d(response.body);
    } else {
    
      logger.e('Error al crear la mascota');
      throw Exception("Error al crear la mascota");
    }
  }
}
