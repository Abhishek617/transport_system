import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import '../models/new.dart';

class Network{
  // Future<LogInModel> logIn(String url, String body) async {
  //   final response = await http.post(Uri.parse(url), body: body, headers: {
  //     HttpHeaders.contentTypeHeader: "application/json",
  //   }).timeout(const Duration(seconds: 90));
  //
  //   if (response.statusCode == 200) {
  //     debugPrint("log in data: ${response.body}");
  //     return LogInModel.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to get Log In response');
  //   }
  // }


  Future<New> deleteLeave(String url) async {
   // SharedPreferences prefs = await SharedPreferences.getInstance();

    final response = await http.get(Uri.parse(url), headers: {
      HttpHeaders.contentTypeHeader: "application/json",
      //'Authorization': 'Bearer ' + prefs.getString("auth_token")!
    }).timeout(
      const Duration(
        seconds: 90,
      ),
    );

    if (response.statusCode == 200) {
      debugPrint("report custom fields response: ${response.body}");
      return New.fromJson(json.decode(response.body));
    } else {
      throw Exception("Error getting report custom fields response");
    }
  }


}