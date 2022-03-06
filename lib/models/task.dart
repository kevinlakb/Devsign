import 'package:entre_tiempos/constants/colors.dart';
import 'package:entre_tiempos/router/app_routes.dart';
import 'package:entre_tiempos/screens/development_screen.dart';
import 'package:flutter/material.dart';
import 'package:entre_tiempos/models/menu_options.dart';

class Task {
  String? title;
  String? description;
  DateTime? date;
  IconData? iconData;
  Color? bgColor;
  Color? txColor;
  Color? btnColor;
  bool state;
  MenuOption? route;

  Task({
    this.title,
    this.description,
    this.date,
    this.iconData = Icons.arrow_drop_down_outlined,
    this.bgColor,
    this.txColor,
    this.btnColor,
    this.state = false,
    //this.route = AppRoutes.menuOptionsHidden(
    // route: 'Development',
    // name: 'Desarrollo',
    // screen: const DevelopmentScreen(),
    // icon: Icons.bug_report),
  });

  static List<Task> generateTasks() {
    return [
      Task(
        title: 'Exposición de Pens. Sistemico',
        date: DateTime.utc(2022, 02, 22),
        bgColor: kYellowLight,
        txColor: Colors.white,
        btnColor: kYellowDark,
      ),
    ];
  }
}
