
import 'dart:convert';

ParentModel parentFromJson(String str) => ParentModel.fromJson(json.decode(str));

String parentToJson(ParentModel data) => json.encode(data.toJson());

class ParentModel {
    ParentModel({
        required this.id,
        required this.nom,
    });

    int id;
    String nom;

    factory ParentModel.fromJson(Map<String, dynamic> json) => ParentModel(
        id: json["id"],
        nom: json["nom"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nom": nom,
    };
}
