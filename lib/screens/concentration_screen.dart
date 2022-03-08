import 'package:flutter/material.dart';

class ConcentrationScreen extends StatelessWidget {
  
  const ConcentrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('CONCENTRACIÓN'),
      ),
      body:Container(
        width: size.width,
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          image: DecorationImage(
              //fit: BoxFit.fill,
              alignment: Alignment.topCenter,
              image: AssetImage('assets/images/concen.png')
          )
        ),
      )
    );
  }
}
