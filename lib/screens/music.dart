import 'package:flutter/material.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Configuración de Música'),
        ),
        body: Column(
          children: [
            ListView.builder(
                itemBuilder: (context, i) => Column(
                      children: [
                        Row(
                          children: const [],
                        )
                      ],
                    ))
          ],
        ));
  }
}
