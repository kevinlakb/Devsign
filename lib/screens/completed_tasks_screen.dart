import 'package:flutter/material.dart';

class CompletedTasksScreen extends StatelessWidget {
  const CompletedTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CompletedTasksScreen'),
      ),
      body: const Center(
        child: Text('CompletedTasksScreen'),
      ),
    );
  }
}
