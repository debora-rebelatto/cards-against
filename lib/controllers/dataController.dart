import 'dart:convert';

import 'package:flutter/services.dart';

class DataController {

  static Future<dynamic> getData() async {
    final String response = await rootBundle.loadString('assets/cah-cards-full.json');
    final data = await json.decode(response);
    return data;
  }
}