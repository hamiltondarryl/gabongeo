// To parse this JSON data, do
//
//     final ville = villeFromJson(jsonString);

import 'dart:convert';

Ville villeFromJson(String str) => Ville.fromJson(json.decode(str));

String villeToJson(Ville data) => json.encode(data.toJson());

class Ville {
    Ville({
        required this.id,
        required this.nom,
        required this.departement,
        required this.province,
        required this.pays,
    });

    int id;
    String nom;
    String departement;
    String province;
    String pays;

    factory Ville.fromJson(Map<String, dynamic> json) => Ville(
        id: json["id"],
        nom: json["nom"],
        departement: json["departement"],
        province: json["province"],
        pays: json["pays"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nom": nom,
        "departement": departement,
        "province": province,
        "pays": pays,
    };
}
