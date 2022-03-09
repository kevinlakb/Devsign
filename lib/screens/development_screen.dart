import 'package:flutter/material.dart';

class DevelopmentScreen extends StatelessWidget {
  const DevelopmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final genContHeight = size.height * 0.2;
    final genlWidth = size.width * 0.9;
    final imgWidth = size.width * 0.4;
    final textWidth = size.width * 0.5;
    final double imgSize = 120;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Desarrollo'),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 80),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    height: genContHeight,
                    width: genlWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
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
                    child: Row(children: [
                      Container(
                          width: imgWidth,
                          height: double.maxFinite,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(205, 19, 61, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                          ),
                          child: Center(
                              child: Image.asset(
                            'assets/images/tarea.png',
                            width: imgSize,
                            height: imgSize,
                            fit: BoxFit.cover,
                          ))),
                      Container(
                          padding: const EdgeInsets.only(
                              left: 30, top: 20, right: 10, bottom: 10),
                          width: textWidth,
                          height: double.maxFinite,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(205, 19, 61, 0.2),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Desarrolla una  tarea',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: size.width > 520 ? 20 : 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ),
                                  const Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Text('2h 20m',
                                          style:
                                              TextStyle(fontFamily: 'Roboto')))
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'Prodras ser mas productivo con tus tareas siguiendos los pasos que te daremos a continuación',
                                  style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: size.width > 520 ? 16 : 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black54))
                            ],
                          )),
                    ]),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'Work');
                  },
                ),
//
                // 2 <- -------------------------------------------------
//
                Container(
                  height: genContHeight,
                  width: genlWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
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
                  child: Row(children: [
                    Container(
                        width: imgWidth,
                        height: double.maxFinite,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(252, 192, 21, 1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                        ),
                        child: Center(
                            child: Image.asset(
                          'assets/images/exposicion.png',
                          width: imgSize,
                          height: imgSize,
                        ))),
                    Container(
                        padding: const EdgeInsets.only(
                            left: 30, top: 20, right: 10, bottom: 10),
                        width: textWidth,
                        height: double.maxFinite,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(252, 192, 21, 0.2),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Prepara una exposición',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: size.width > 520 ? 20 : 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ),
                                const Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Text('1h',
                                        style: TextStyle(fontFamily: 'Roboto')))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                'Te ayudaremos a organizar mejor tus ideas y poder practicar tu presentasión de manera mas eficiente',
                                style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: size.width > 520 ? 16 : 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54))
                          ],
                        )),
                  ]),
                ),
//
                // 3 <- --------------------------------------------------------------
                //
                Container(
                  height: genContHeight,
                  width: genlWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
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
                  child: Row(children: [
                    Container(
                        width: imgWidth,
                        height: double.maxFinite,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(242, 137, 20, 1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                        ),
                        child: Center(
                            child: Image.asset(
                          'assets/images/exam.png',
                          width: imgSize,
                          height: imgSize,
                        ))),
                    Container(
                        padding: const EdgeInsets.only(
                            left: 30, top: 20, right: 10, bottom: 10),
                        width: textWidth,
                        height: double.maxFinite,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(242, 137, 20, 0.2),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Estudia para un Examen',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: size.width > 520 ? 20 : 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ),
                                const Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Text('2h',
                                        style: TextStyle(fontFamily: 'Roboto')))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                'Podras organizar mejor tus apuntes y tenerlos a tu disposición en cualquier momento que decidas est...',
                                style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: size.width > 520 ? 16 : 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54))
                          ],
                        )),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
