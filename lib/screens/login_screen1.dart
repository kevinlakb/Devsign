import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:entre_tiempos/themes/app_theme.dart';
import 'package:entre_tiempos/router/app_routes.dart';

class LoginScreen1 extends StatelessWidget {
  const LoginScreen1({Key? key}) : super(key: key);

  static final TextEditingController _namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          LoginTitle(namecontroller: _namecontroller),
          const ButtonNavigator(),
        ],
      ),
    );
  }
}

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    Key? key,
    required TextEditingController namecontroller,
  })  : _namecontroller = namecontroller,
        super(key: key);

  final TextEditingController _namecontroller;
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    // final padding = MediaQuery.of(context).padding;
    // final safeHeight = size.height - padding.top - padding.bottom;
    return Container(
      margin: const EdgeInsets.only(top: 140, bottom: 0, right: 20, left: 20),
      child: Center(
        child: Column(
          children: <Widget>[
            const Text('Hola, bienvenido a', style: TextStyle(fontSize: 20)),
            const Text(
              'EntreTiempos',
              style: TextStyle(fontSize: 40, color: AppTheme.primary),
            ),
            InputUser(namecontroller: _namecontroller)
          ],
        ),
      ),
    );
  }
}

class InputUser extends StatelessWidget {
  const InputUser({
    Key? key,
    required TextEditingController namecontroller,
  })  : _namecontroller = namecontroller,
        super(key: key);

  final TextEditingController _namecontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: SizedBox(
        width: 280,
        child: TextField(
          controller: _namecontroller,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            hintText: 'Tu nombre',
            labelText: '¿Cómo te llamas?',
            labelStyle: const TextStyle(
              fontSize: 18,
              color: AppTheme.primary,
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: AppTheme.primary,
              width: 1.0,
            )),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: AppTheme.primary,
              width: 1.0,
            )),
            suffixIcon: InkWell(
              onTap: () => _namecontroller.clear(),
              child: const Icon(Icons.cancel),
            ),
          ),
          keyboardType: TextInputType.name,
          maxLength: 12,
          maxLines: 1,
        ),
      ),
    );
  }
}

class ButtonNavigator extends StatelessWidget {
  const ButtonNavigator({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      bottom: MediaQuery.of(context).viewInsets.bottom + size.width * 0.1,
      left: size.width * 0.1,
      right: size.width * 0.1,
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppTheme.primary),
            elevation: MaterialStateProperty.all<double>(5),
          ),
          child: const Text('SIGUIENTE',
              style: TextStyle(fontSize: 20, color: Colors.white)),
          onPressed: () => {Navigator.pushNamed(context, 'Login2')},
        ),
      ),
    );
  }
}
