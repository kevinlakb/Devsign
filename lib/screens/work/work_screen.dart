import 'package:entre_tiempos/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:entre_tiempos/screens/work/widgets/ActivateMusic.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarea de Ingles'),
      ),
      body: Stack(children: [
        Center(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Text('TRABAJO EN DESARROLO',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                      color: Colors.black87)),
            ),
            SizedBox(
              height: size.width * 0.7,
              width: size.width * 0.9,
              child: Stack(children: [
                Center(
                    child: ClipOval(
                        child: Image.asset('assets/images/timeCounter.gif'))),
                const Positioned(right: 0, top: 40, child: ActivateMusic()),
                Positioned(
                  top: size.width * 0.37,
                  left: size.width * 0.32,
                  child: const Text('20:20',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white)),
                )
              ]),
            ),
            InkWell(
              child: Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  padding: const EdgeInsets.all(10),
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                    color: kRedLight,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset: const Offset(
                            2.0, 5.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: const Text(
                    'EMPEZAR',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
              onTap: () {
                // showDialog(
                //     context: context,
                //     builder: (contex) => Positioned(
                //           left: 0,
                //           bottom: 0,
                //           child: AnimatedContainer(
                //             duration: const Duration(milliseconds: 1000),
                //             height: size.height * 0.5,
                //             width: double.infinity,
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(10),
                //             ),
                //           ),
                //         )),
              },
            ),
            SizedBox(
              width: size.width * 0.4,
              child: const Text(
                '¡Empieza tu tarea vamos animo, tu puedes!',
                style: TextStyle(
                    fontFamily: 'Open Sans',
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, bottom: 50),
              width: size.width * 0.8,
              height: 2,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(1),
              ),
            ),
            SizedBox(
              width: size.width * 0.05,
            )
          ],
        )),
        Positioned(
          bottom: 22,
          child: Row(children: [
            SizedBox(
              width: size.width * 0.05,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: size.width * 0.65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: const Offset(
                        2.0, 5.0), // shadow direction: bottom right
                  )
                ],
              ),
              child: Column(children: const [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Tarea de Ingles II',
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Descripción: \nModal Verbs: can, may, might, could, should to, ought to, would')
              ]),
            ),
            SizedBox(
              width: size.width * 0.07,
            ),
          ]),
        ),
      ]),
      floatingActionButton: SpeedDial(
          backgroundColor: kRedLight,
          elevation: 4,
          //animatedIcon: AnimatedIcons.menu_close,
          icon: Icons.rocket_launch_rounded,
          children: [
            SpeedDialChild(
              child: const Icon(Icons.queue_music_rounded, size: 30),
              label: 'Música',
            ),
            SpeedDialChild(
              child: const Icon(Icons.engineering, size: 30),
              label: 'Modo concentración',
            ),
            SpeedDialChild(
              child: const Icon(Icons.check_circle, size: 30),
              label: 'Misión cumplida',
            )
          ]),
    );
  }
}
