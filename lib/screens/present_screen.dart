import 'package:entre_tiempos/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:entre_tiempos/themes/app_theme.dart';

class PresentScreen extends StatelessWidget {
  const PresentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    final safeHeight = size.height - padding.top - padding.bottom;
    return Scaffold(
        //backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Exposición de lenguaje',
              // ),
              style: TextStyle(color: kYellowLight)),
          backgroundColor: AppTheme.bgWhite,
          iconTheme: const IconThemeData(color: kYellowLight),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: size.width,
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.2,
                  height: safeHeight - 50,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        StepIcon(icon: Icons.search),
                        Container(
                          height: 100,
                          width: 4,
                          decoration: BoxDecoration(
                              color: kYellowDark,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        StepIcon(icon: Icons.create),
                        Container(
                          height: 100,
                          width: 4,
                          decoration: BoxDecoration(
                              color: kYellowDark,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        StepIcon(icon: Icons.content_copy_outlined),
                        Container(
                          height: 100,
                          width: 4,
                          decoration: BoxDecoration(
                              color: kYellowDark,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        StepIcon(icon: Icons.check_circle_outline_sharp),
                        Container(
                          height: 40,
                          width: 4,
                          decoration: BoxDecoration(
                              color: kYellowDark,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        StepIcon(icon: Icons.radio_button_checked)
                      ]),
                ),
                SizedBox(
                  width: size.width * 0.8,
                  height: safeHeight - 50,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          //mainAxisSize: MainAxisSize.max,
                          children: [
                            PresentSteps(
                              text1: 'Investigación del tema',
                              text2:
                                  'Formula las preguntas que quieres responder con tu exposición y encargate de buscar información releva',
                              bgColor: AppTheme.kYellowLight.withOpacity(0.2),
                            ),
                            PresentSteps(
                              text1: 'Elaboración del material a proyectar',
                              text2:
                                  'Elaboraras las diapositivas que vas a presentar siguiendo unas recomenda',
                              bgColor: AppTheme.kYellowLight.withOpacity(0.3),
                            ),
                            PresentSteps(
                              text1: 'Practica tus lineas',
                              text2:
                                  'Formula las preguntas que quieres responder con tu exposición y encargate de buscar información releva',
                              bgColor: AppTheme.kYellowLight.withOpacity(0.5),
                            ),
                            PresentSteps(
                              text1: 'Estoy listo',
                              text2:
                                  'Finaliza tu deber y podrás continuar con el siguiente ',
                              bgColor: AppTheme.kYellowLight.withOpacity(0.6),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10,
                                  left: size.width * 0.125,
                                  right: size.width * 0.025),
                              padding: const EdgeInsets.all(10),
                              width: size.width * 0.65,
                              decoration: BoxDecoration(
                                  color: AppTheme.kYellowLight.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text('   Misión cumplida',
                                  style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            )
                          ],
                        ),
                      ]),
                )
              ],
            ),
          ),
        ));
  }
}

class StepIcon extends StatelessWidget {
  const StepIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          top: 10, left: size.width * 0.025, right: size.width * 0.025),
      height: size.width * 0.15,
      width: size.width * 0.15,
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border.all(color: AppTheme.kYellowLight.withOpacity(0.6), width: 4),
        borderRadius: BorderRadius.circular(size.width * 0.075),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: const Offset(1.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Icon(icon, size: size.width * 0.1, color: Colors.black54),
    );
  }
}

class PresentSteps extends StatelessWidget {
  const PresentSteps({
    Key? key,
    required this.text1,
    required this.text2,
    required this.bgColor,
  }) : super(key: key);

  final String text1;
  final String text2;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          top: 10,
          right: size.width * 0.025,
          left: size.width * 0.025,
          bottom: 10),
      padding: const EdgeInsets.all(10),
      width: size.width * 0.75,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: const Offset(3.0, 6.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          text1,
          style: const TextStyle(
              fontFamily: 'Roboto', fontSize: 22, color: Colors.black87),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(text2,
            style: const TextStyle(
                fontFamily: 'Open Sans', color: Colors.black87, fontSize: 18)),
        const Text('Leer mas...',
            style: TextStyle(color: Colors.blue, fontFamily: 'Open Sans'))
      ]),
    );
  }
}
