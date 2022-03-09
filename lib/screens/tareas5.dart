import 'package:flutter/material.dart';
import 'package:entre_tiempos/themes/app_theme.dart';

class Tareas5Screen extends StatelessWidget {
  const Tareas5Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //shadowColor: Colors.white,
          iconTheme: const IconThemeData(color: AppTheme.primary),
          backgroundColor: Colors.white,
          elevation: 5,
          title: const Text('DESARROLLO',
              style: TextStyle(fontSize: 20, color: AppTheme.primary)),
        ),
        body: Container());
  }
}
