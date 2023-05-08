import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:user_interface/model/dto_request/dto_user_info_request.dart';
import "package:http/http.dart" as http;

class PersonProvider extends ChangeNotifier {
  final logger = Logger();

  List<DtoPersonRequest>? _person;
  List<DtoPersonRequest>? get person => _person;

  Future fetchUsers() async {
    final response = await http.get(Uri.parse('https://reqres.in/api/users'));

    try {
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final List<dynamic> data = json['data'];

        _person = data.map((user) => DtoPersonRequest.fromJson(user)).toList();

        notifyListeners();
      }
    } catch (error) {
      logger.d(error);
    }
  }
}
