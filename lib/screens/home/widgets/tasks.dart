import 'package:flutter/material.dart';
import 'package:entre_tiempos/models/task.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generateTasks();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<String> months = [
      'Enero',
      'Febrero',
      'Marzo',
      'Abril',
      'Mayo',
      'Junio',
      'Julio',
      'Agosto',
      'Septiembre',
      'Octubre',
      'Noviembre',
      'Diciembre'
    ];
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, i) => AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        //color: Colors.grey,
        child: Column(children: [
          Container(
            width: size.width * 0.95,
            margin: const EdgeInsets.only(bottom: 5, top: 5),
            alignment: Alignment.centerLeft,
            child: Text(
                '${tasksList[i].date!.weekday} de ${months[tasksList[i].date!.month - 1]} del ${tasksList[i].date!.year}'),
          ),
          Container(
              margin: EdgeInsets.only(left: 30, right: size.width * 0.025),
              padding: const EdgeInsets.only(
                  left: 30, top: 10, right: 10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: Text('${tasksList[i].title}',
                  style: const TextStyle(fontSize: 18, color: Colors.white)))
        ]),
      ),
      itemCount: tasksList.length,
    );
  }
}
