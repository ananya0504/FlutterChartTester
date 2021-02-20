import 'dart:async' show Future;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
 
Future loadNewUserCount() async {
  String jsonData = await _loadNewUserCountAsset();
  print(jsonData);
  _parseJsonForNewUserCount(jsonData);
  
}

Future<String> _loadNewUserCountAsset() async {
  return await rootBundle.loadString('assets/data/new_user_count.json');
}

void _parseJsonForNewUserCount(String jsonString) {
  Map newUserCount = jsonDecode(jsonString);
  // String name = decoded['series']['data'];
  // print(name);

  for (var word in newUserCount['series']['data']) {
    print(word['time'].toString());
    print(word['value'].toString());
  }
}

class NewUserCount {
  final Series series;
 
  NewUserCount(this.series);
}

class Series {
  final Data data;
  final String name;
  from 
  to
}
 
class Across {
  final List<Word> words;
 
  const Across(this.words);
}
 
class Word {
  final int number;
  final String word;
 
  const Word(this.number, this.word);
}