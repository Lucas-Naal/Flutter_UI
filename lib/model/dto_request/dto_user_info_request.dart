// To parse this JSON data, do
//
//     final dtoPersonRequest = dtoPersonRequestFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

DtoPersonRequest dtoPersonRequestFromJson(String str) =>
    DtoPersonRequest.fromJson(json.decode(str));

String dtoPersonRequestToJson(DtoPersonRequest data) =>
    json.encode(data.toJson());

class DtoPersonRequest {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  DtoPersonRequest({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory DtoPersonRequest.fromJson(Map<String, dynamic> json) =>
      DtoPersonRequest(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
