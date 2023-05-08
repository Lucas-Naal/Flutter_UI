import 'dart:convert';

DtoAnimalRequest dtoAnimalRequestFromJson(String str) =>
    DtoAnimalRequest.fromJson(json.decode(str));

String dtoAnimalRequestToJson(DtoAnimalRequest data) =>
    json.encode(data.toJson());

class DtoAnimalRequest {
  final int id;
  final String name;
  final String typeOfAnimal;

  DtoAnimalRequest({
    required this.id,
    required this.name,
    required this.typeOfAnimal,
  });

  factory DtoAnimalRequest.fromJson(Map<String, dynamic> json) =>
      DtoAnimalRequest(
        id: json["id"],
        name: json["name"],
        typeOfAnimal: json["typeOfAnimal"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "typeOfAnimal": typeOfAnimal,
      };
}
