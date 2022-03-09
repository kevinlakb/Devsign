import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PROGRESO')),
      body: ListView(
    
        children:const  [
           Image(image: AssetImage('assets/images/progress/Group55.png') , alignment: Alignment.center),
           Image(image: AssetImage('assets/images/progress/group_56.png') , alignment: Alignment.center),


        ],

      ),
    );
  }
}
