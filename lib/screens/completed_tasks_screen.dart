import 'package:entre_tiempos/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CompletedTasksScreen extends StatelessWidget {
  const CompletedTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tareas terminadas'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Febrero',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Febrero 5',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppTheme.primary,
                      border: Border.all(
                        color: AppTheme.primary,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(20.0),
                  child: const Text(
                    'Repaso inglés',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        decoration: TextDecoration.lineThrough),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Text(
                  'Febrero 10',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppTheme.primary,
                      border: Border.all(
                        color: AppTheme.primary,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(20.0),
                  child: const Text(
                    'Avance proyecto',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        decoration: TextDecoration.lineThrough),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Text(
                  'Febrero 20',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppTheme.primary,
                      border: Border.all(
                        color: AppTheme.primary,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(20.0),
                  child: const Text(
                    'Quiz ecuaciones',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        decoration: TextDecoration.lineThrough),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
