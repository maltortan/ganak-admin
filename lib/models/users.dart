// To parse this JSON data, do
//
//     final users = usersFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Users {
  Users({
    required this.userName,
    required this.uid,
  });

  String userName;
  String uid;

  factory Users.fromJson(String str) => Users.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Users.fromMap(Map<String, dynamic> json) => Users(
    userName: json["userName"],
    uid: json["uid"],
  );

  Map<String, dynamic> toMap() => {
    "userName": userName,
    "uid": uid,
  };
}
