import 'package:flutter/material.dart';

class TestScreen2 extends StatelessWidget {
  const TestScreen2({Key? key}) : super(key: key);

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
                  '¿Con cuál de los siguientes espacios te identificas?',
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
                      child: InkWell(
                        child: Ink.image(
                          image: const AssetImage(
                              'assets/images/test2/muchascosas.png'),
                          height: _width / 2,
                          width: _width,
                          fit: BoxFit.cover,
                        ),
                        splashColor: const Color.fromARGB(100, 255, 255, 255),
                        onTap: () => {Navigator.pushNamed(context, 'Test3')},
                      )),
                  Positioned(
                      bottom: 0,
                      child: InkWell(
                        child: Ink.image(
                          image: const AssetImage(
                              'assets/images/test2/pocascosas.png'),
                          height: _width / 2,
                          width: _width,
                          fit: BoxFit.cover,
                        ),
                        splashColor: const Color.fromARGB(100, 255, 255, 255),
                        onTap: () => {Navigator.pushNamed(context, 'Test3')},
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
