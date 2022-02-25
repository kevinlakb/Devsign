import 'package:flutter/material.dart' show Colors;

class User {
  String? username;
  String? usermail;
  Map<String, Colors>? usertasks;

  User({
    this.username,
    this.usermail,
    this.usertasks,
  });

  set name(String name) {
    username = name;
  }

  set mail(String mail) {
    usermail = mail;
  }

  set task(Map<String, Colors> task) {
    usertasks = task;
  }

  String get getname {
    return username ?? 'sin nombre';
  }
}
