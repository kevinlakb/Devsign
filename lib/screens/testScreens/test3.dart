import 'package:flutter/material.dart';

class TestScreen3 extends StatelessWidget {
  const TestScreen3({Key? key}) : super(key: key);

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
                        color: const Color.fromARGB(100, 0, 0, 0),
                        borderRadius: BorderRadius.circular(1)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: sideSize, left: sideSize),
                    width: length,
                    height: 4,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(100, 0, 0, 0),
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
                  '¿En qué lugar sueles estudiar?',
                  style: TextStyle(fontSize: 30, color: Colors.grey.shade700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: _width,
              width: _width,
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      child: InkWell(
                        child: Ink.image(
                          image: const AssetImage(
                              'assets/images/test3/foto_aire_libre.png'),
                          height: _width / 2,
                          width: _width / 2,
                          fit: BoxFit.cover,
                        ),
                        splashColor: const Color.fromARGB(100, 255, 255, 255),
                        onTap: () => {Navigator.pushNamed(context, 'Test4')},
                      )),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: InkWell(
                        child: Ink.image(
                          image: const AssetImage(
                              'assets/images/test3/foto_cafe.png'),
                          height: _width / 2,
                          width: _width / 2,
                          fit: BoxFit.cover,
                        ),
                        splashColor: const Color.fromARGB(100, 255, 255, 255),
                        onTap: () => {Navigator.pushNamed(context, 'Test4')},
                      )),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: InkWell(
                        child: Ink.image(
                          image: const AssetImage(
                              'assets/images/test3/foto_oficina.png'),
                          height: _width / 2,
                          width: _width / 2,
                          fit: BoxFit.cover,
                        ),
                        splashColor: const Color.fromARGB(100, 255, 255, 255),
                        onTap: () => {Navigator.pushNamed(context, 'Test4')},
                      )),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        child: Ink.image(
                          image: const AssetImage(
                              'assets/images/test3/foto_trabajo.png'),
                          height: _width / 2,
                          width: _width / 2,
                          fit: BoxFit.cover,
                        ),
                        splashColor: const Color.fromARGB(100, 255, 255, 255),
                        onTap: () => {Navigator.pushNamed(context, 'Test4')},
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
