import 'package:flutter/material.dart';

class ConcentrationScreen extends StatelessWidget {
  const ConcentrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConcentraionScreen'),
      ),
      body: const Center(
        child: Text('ConcentrationScreen'),
      ),
    );
  }
}
