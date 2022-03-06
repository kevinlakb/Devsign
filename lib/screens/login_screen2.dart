import 'package:flutter/material.dart';
import 'package:entre_tiempos/themes/app_theme.dart';

class LoginScreen2 extends StatelessWidget {
  const LoginScreen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background-fcc103.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                    bottom: MediaQuery.of(context).viewInsets.bottom +
                        size.height * 0.04,
                    left: size.width * 0.1,
                    right: size.width * 0.1,
                    child: const Buttons()),
              ],
            )),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              elevation: MaterialStateProperty.all<double>(5),
            ),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/google-icon.png',
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Iniciar sesión con Google',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
              ],
            ),
            onPressed: () => {},
          ),
        ),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppTheme.primary),
              elevation: MaterialStateProperty.all<double>(5),
            ),
            child: const Text('OMITIR',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            onPressed: () => {
              Navigator.pushNamed(context, 'Test'),
            },
          ),
        ),
      ],
    );
  }
}
