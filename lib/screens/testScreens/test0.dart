import 'package:flutter/material.dart';
import 'package:entre_tiempos/themes/app_theme.dart';
import 'package:entre_tiempos/screens/login_screen1.dart';

class TestScreen0 extends StatelessWidget {
  const TestScreen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final username = LoginScreen1.getname();
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: size.height * 0.15, bottom: 0, right: 20, left: 20),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text('Bienvenido ' + username,
                      style: const TextStyle(
                          fontSize: 40, color: AppTheme.primary),
                      textAlign: TextAlign.center),
                  const Text(
                    'Realiza el siguiente test para conocerte mejor.',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Image.asset('assets/images/test0.png'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom:
                MediaQuery.of(context).viewInsets.bottom + size.height * 0.04,
            left: size.width * 0.1,
            right: size.width * 0.1,
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppTheme.primary),
                  elevation: MaterialStateProperty.all<double>(5),
                ),
                child: const Text('SIGUIENTE',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                onPressed: () => {
                  Navigator.pushNamed(context, 'Home'),
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}
