// To parse this JSON data, do
//
//     final cordinates = cordinatesFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Coordinates {
  Coordinates({
    required this.lat,
    required this.long,
  });

  double lat;
  double long;

  factory Coordinates.fromJson(String str) => Coordinates.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Coordinates.fromMap(Map<String, dynamic> json) => Coordinates(
    lat: json["lat"].toDouble(),
    long: json["long"].toDouble(),
  );

  Map<String, dynamic> toMap() => {
    "lat": lat,
    "long": long,
  };
}
