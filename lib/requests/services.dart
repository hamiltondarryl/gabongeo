
// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, non_constant_identifier_names

import 'dart:convert';

import 'package:gabongeo/models/parent_model.dart';
import 'package:http/http.dart' as http;

class Services {

  static const String basicUrl = "https://gabongeo.herokuapp.com/api/v1/" ;
  static const Map headers = {'Content-Type': 'application/json; charset=UTF-8'};

  static Future <List<ParentModel>> getProvince() async {

      List <ParentModel> list = [];
      var url = Uri.parse(basicUrl+"provinces?parent=false");
      var request = await http.get(url, headers: {"Content-Type": "application/json"});
      var response = jsonDecode(request.body);
      list = response.map<ParentModel>((json) => ParentModel.fromJson(json)).toList();
      return list;

  }

}