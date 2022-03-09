import 'package:flutter/material.dart';

class TestScreen5 extends StatelessWidget {
  const TestScreen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _width = size.width * 0.9;
    final sideSize = _width * 0.1 / 10;
    final length = _width * 0.9 / 5;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: size.height * 0.08,
              width: _width,
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: sideSize, left: sideSize),
                    width: length,
                    height: 4,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(150, 0, 0, 0),
                        borderRadius: BorderRadius.circular(1)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: sideSize, left: sideSize),
                    width: length,
                    height: 4,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(150, 0, 0, 0),
                        borderRadius: BorderRadius.circular(1)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: sideSize, left: sideSize),
                    width: length,
                    height: 4,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(150, 0, 0, 0),
                        borderRadius: BorderRadius.circular(1)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: sideSize, left: sideSize),
                    width: length,
                    height: 4,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(150, 0, 0, 0),
                        borderRadius: BorderRadius.circular(1)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: sideSize, left: sideSize),
                    width: length,
                    height: 4,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(150, 0, 0, 0),
                        borderRadius: BorderRadius.circular(1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.25,
              width: _width * 0.9,
              child: Center(
                child: Text(
                  '¿Con qué frecuencia haces tus deberes?',
                  style: TextStyle(fontSize: 30, color: Colors.grey.shade700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: _width,
              width: _width,
              child: Column(
                children: [
                  InkWell(
                    child: Ink.image(
                      image:
                          const AssetImage('assets/images/test5/siempre.png'),
                      height: _width / 4,
                      width: _width,
                      fit: BoxFit.cover,
                    ),
                    splashColor: const Color.fromARGB(100, 255, 255, 255),
                    onTap: () => {Navigator.pushNamed(context, 'Test6')},
                  ),
                  InkWell(
                    child: Ink.image(
                      image: const AssetImage(
                          'assets/images/test5/algunas_veces.png'),
                      height: _width / 4,
                      width: _width,
                      fit: BoxFit.cover,
                    ),
                    splashColor: const Color.fromARGB(100, 255, 255, 255),
                    onTap: () => {Navigator.pushNamed(context, 'Test6')},
                  ),
                  InkWell(
                    child: Ink.image(
                      image: const AssetImage(
                          'assets/images/test5/casi_nunca.png'),
                      height: _width / 4,
                      width: _width,
                      fit: BoxFit.cover,
                    ),
                    splashColor: const Color.fromARGB(100, 255, 255, 255),
                    onTap: () => {Navigator.pushNamed(context, 'Test6')},
                  ),
                  InkWell(
                    child: Ink.image(
                      image: const AssetImage('assets/images/test5/nunca.png'),
                      height: _width / 4,
                      width: _width,
                      fit: BoxFit.cover,
                    ),
                    splashColor: const Color.fromARGB(100, 255, 255, 255),
                    onTap: () => {Navigator.pushNamed(context, 'Test6')},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
