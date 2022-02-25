import 'package:flutter/material.dart';
import 'package:entre_tiempos/screens/screens.dart';
import 'package:entre_tiempos/themes/app_theme.dart';
import 'package:entre_tiempos/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      appBar: AppBar(
        title: const Text('DEBERES',
            style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
      body: Center(
          child: Column(
        children: const [],
      )),
    );
  }
}
