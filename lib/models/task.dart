import 'package:flutter/material.dart';
import 'package:entre_tiempos/themes/app_theme.dart';
import 'package:intl/intl.dart';

class Task {
  String? title;
  String? description;
  DateTime? date;
  int priority;
  bool state;
  bool activated;

  List<Color> colorPriority = <Color>[
    AppTheme.kYellowLight,
    AppTheme.kOrangeLight,
    AppTheme.kRedLight,
  ];

  Task({
    this.title,
    this.description,
    this.date,
    required this.priority,
    this.state = false,
    this.activated = false,
  });
}

class AppTask {
  static void setTask(Task task) {
    listTasks.add(task);
  }

  static List<Task> listTasks = <Task>[
    Task(
        title: 'Tarea de Ingles II',
        description: 'Modal verbs can, may, might, should, ought to, would....',
        date: DateTime.utc(2022, 02, 22),
        priority: 0),
    Task(
        title: 'Tarea de Ingles II',
        description: 'Modal verbs can, may, might, should, ought to, would....',
        date: DateTime.utc(2022, 02, 22),
        priority: 1,
        state: true),
  ];

  static List<Task> generateTasks() {
    return listTasks;
  }
}
